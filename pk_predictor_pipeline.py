from Bio import SeqIO
import arnie
from arnie.pk_predictors import pk_predict
from arnie.utils import *
import pandas as pd

def get_seq(seq_filename):
    record = SeqIO.read(seq_filename, "fasta")
    return str(record.seq)

def get_sliding_windows(full_seq, step, window):
    coords = list(range(0,len(full_seq)-window+1,step))
    windows = []
    for i in coords:
        new_window = full_seq[i:i+window]
        windows.append(new_window)
    return windows, coords

def get_struct(seq, predictor):
    dotbracket = pk_predict(seq, predictor)
    return dotbracket

def get_pseudoknots(seq_filename, step, window, predictor, output_folder):
    seq = get_seq(seq_filename)
    # add in function to replace T with U
    RNA_seq = seq.replace("T", "U")
    windows,coords = get_sliding_windows(RNA_seq, step=step, window=window)
    PK_list = []
    for seq,coord in zip(windows,coords):
        dotbracket = get_struct(seq, predictor)
        print(dotbracket)
        if is_PK(dotbracket):
            PK_list.append(coord, coord+window, seq, dotbracket)
    df = pd.DataFrame(PK_list,columns=["start","end","sequence", "struct"])
    df.to_csv('%s/pk_predictor_output.csv' % output_folder)
