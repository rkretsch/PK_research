% Description...
% Data from EteRNA SHAPE experiments read out by capillary electrophoresis, in both 10 mM MgCl2 and 1 M NaCl.
%
% Authors:
% W. Kladwang, R. Das
%
% Pubmed ID
% 24469816
%
% Title:
% RNA design rules from a massive open laboratory
%
% NOTEBOOK SCANS are in:
% https://www.dropbox.com/sh/dciuhh2tsv1f31l/AAA7qRheXgsmvXYo1kaQDe8ra?dl=0
%
% 
% Checked that the RDATs in SAVE/ are the same (but a subset) as in CURRENT_RDATS/

% get solution listing from Eterna database to cross-reference; thanks LFP6
% for the dump from the database (eterna.slack.com #lab-cleanup).
d = readtable( 'SolutionListing.csv','delimiter',',' );
x = table2cell(d);
solution_id  = cell2mat( x(:,1) );
for n = 1:size(x,1); eterna_score(n) = str2double(x{n,5}); end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Up until R21 scores in RDAT *do not* match Eterna Database
%  (but are similar). The deviation is probably because in
%  early days we asked Jee to compute the scores based on raw 
%  data; later MATLAB linear programming optimized normalizations
%  and the RDAT scores were probably used to fill the Eterna DB.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Authors:
% W. Kladwang, R. Das
input_rdat  = '../CURRENT_RDATS/ETFNGR_R6_0001.rdat';
output_rdat = 'ETERNA_R06_0001.rdat';
extra_comments = { 'From experiment: 111510_Ann_RNAgameR6_Run_3100_2010-11-15' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score );

% Authors:
% W. Kladwang, D. Cantu, R. Das
input_rdat  = '../CURRENT_RDATS/ETFNGR_R7_0001.rdat';
output_rdat = 'ETERNA_R07_0001.rdat';
extra_comments = { 'Averaged from experiments: 111810_Ann_RNAGame7_Run_3100_2010-11-18, 111810DC_EternaR7_Run_3100_2010-11-18' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

% Authors:
% D. Cantu, R. Das
input_rdat  = '../CURRENT_RDATS/ETFNGR_R8_0001.rdat';
output_rdat = 'ETERNA_R08_0001.rdat';
extra_comments = { 'From experiments: 120710DC_EternaR8B, 120810DC_EternaR8C' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat  = '../CURRENT_RDATS/ETCROS_R9_0001.rdat';
output_rdat = 'ETERNA_R09_0001.rdat';
extra_comments = { 'From experiment: 121610DC_EternaR9' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat  = '../CURRENT_RDATS/ETCROS_R10_0001.rdat';
output_rdat = 'ETERNA_R10_0001.rdat';
extra_comments = { 'From experiment: 010511DC_EternaR10' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat  = '../CURRENT_RDATS/ETOBCR_R11_0001.rdat';
output_rdat = 'ETERNA_R11_0001.rdat';
extra_comments = { 'From experiment: 011311DC_EternaR11' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat  = '../CURRENT_RDATS/ETOBCR_R12_0001.rdat';
output_rdat = 'ETERNA_R12_0001.rdat';
extra_comments = { 'From experiment: 011911DC_StructureMapping_R12' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETOBCR_R13_0001.rdat';
output_rdat = 'ETERNA_R13_0001.rdat';
extra_comments = { 'From experiment: 012811DC_EternaR13' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETOBCR_R14_0002.rdat';
output_rdat = 'ETERNA_R14_0001.rdat';
extra_comments = { 'From experiments: 020211DC_EternaR14, 021411DC_EternaR1415' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETOBCR_R15_0001.rdat';
output_rdat = 'ETERNA_R15_0001.rdat';
extra_comments = { 'From experiments: 020911DC_EternaR15, 021411DC_EternaR1415' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSTAR_R16_0001.rdat';
output_rdat = 'ETERNA_R16_0001.rdat';
extra_comments = { 'From experiment: 021711DC_EternaR16' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSTAR_R17_0001.rdat';
output_rdat = 'ETERNA_R17_0001.rdat';
extra_comments = { 'From experiment: 022411DC_EternaR17' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSTAR_R18_0001.rdat';
output_rdat = 'ETERNA_R18_0001.rdat';
extra_comments = { 'From experiment: 030211DC_EternaR18' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSTAR_R19_0001.rdat';
output_rdat = 'ETERNA_R19_0001.rdat';
extra_comments = { 'From experiment: 03011DC_EternaR19' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBSTR_R20_0001.rdat';
output_rdat = 'ETERNA_R20_0001.rdat';
extra_comments = { 'From experiment: 031711DC_EternaR20' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

% Authors:
% W. Kladwang, D. Cantu, R. Das

input_rdat = '../CURRENT_RDATS/ETBSTR_R21_0001.rdat';
output_rdat = 'ETERNA_R21_0001.rdat';
extra_comments = { 'From experiments: 032411DC_EternaR21, 052511_Ann_EternaR21' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBSTR_R22_0001.rdat'; 
%input_rdat = '../OLD_RDATS/ETBSTR_R22_0002.rdat'; % scores do not match Eterna Database
output_rdat = 'ETERNA_R22_0001.rdat';
extra_comments = { 'From experiments: 040111DC_EternaR22, 052511_Ann_EternaFNGR' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AFTER THIS, scores in RDAT *do* match Eterna Database,
%  _but_ reactivity_errors do not have right lengths or are zeroed out.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% input_rdat = '../OLD_RDATS/ETBRNC_R23_0001.rdat'; 
input_rdat = '../CURRENT_RDATS/ETBRNC_R23_0002.rdat'; 
output_rdat = 'ETERNA_R23_0001.rdat';
extra_comments = { 'From experiments: 040811DC_EternaR23, 052611_Ann_EternaVBRNC' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBRNC_R24_0004.rdat';
output_rdat = 'ETERNA_R24_0001.rdat';
extra_comments = { 'From experiments: 050211DC_EternaR24NUPACK, 052611_RNAgame232428' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBRNC_R25_0003.rdat';
output_rdat = 'ETERNA_R25_0001.rdat';
extra_comments = { 'From experiments: 042811DC_EternaR2526, 052711_Ann_RNAgame2526C' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBRNC_R26_0002.rdat';
output_rdat = 'ETERNA_R26_0001.rdat';
extra_comments = { 'From experiments: 042811DC_EternaR2526, 052711_Ann_RNAgame2526C' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBRNC_R27_0002.rdat';
output_rdat = 'ETERNA_R27_0001.rdat';
extra_comments = { 'From experiments: 051811DC_EternaR27C, 051911DC_EternaR27D, 052011DC_EternaR27E, 052311_Ann_RNAgame27' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

% Authors:
% W. Kladwang, R. Das
input_rdat = '../CURRENT_RDATS/ETBRNC_R28_0001.rdat';
output_rdat = 'ETERNA_R28_0001.rdat';
extra_comments = { 'From experiment: 052611_Ann_EternaR28' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETASYM_R29_0001.rdat';
output_rdat = 'ETERNA_R29_0001.rdat';
extra_comments = { 'From experiment: 060611_Ann_RNAgame29' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETASYM_R30_0001.rdat';
output_rdat = 'ETERNA_R30_0001.rdat';
extra_comments = { 'From experiment: 061611_Ann_RNAgame30' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

% Authors:
% R. Das
input_rdat = '../CURRENT_RDATS/ETBNDS_R31_0001.rdat';
output_rdat = 'ETERNA_R31_0001.rdat';
extra_comments = { 'From experiments:  062611_Rhiju_EteRNA_R31' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBNDS_R31_0002.rdat';
output_rdat = 'ETERNA_R31_0002.rdat';
extra_comments = { 'Replicate experiment by Rhiju Das to test reproducibility; see ETERNA_R31_0001 for other data set.', 'From experiments:  062911_Rhiju_EteRNA_R31' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

% Authors:
% W. Kladwang, R. Das
input_rdat = '../CURRENT_RDATS/ETRUNM_R32_0001.rdat';
output_rdat = 'ETERNA_R32_0001.rdat';
extra_comments = { 'From experiment: 072811_Ann_RNAgame32' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETRUNM_R33_0001.rdat';
output_rdat = 'ETERNA_R33_0001.rdat';
extra_comments = { 'From experiment: 081111_Ann_RNAGAme33' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETTHNG_R34_0001.rdat';
output_rdat = 'ETERNA_R34_0001.rdat';
extra_comments = { 'From experiment: 082611_Ann_Game341to1dil, 082611_Ann_RNAgame334_Elim245326' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETTHNG_R35_0001.rdat';
output_rdat = 'ETERNA_R35_0001.rdat';
extra_comments = { 'From experiment: 091311_Ann_RNAGame35' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETWTSR_R36_0001.rdat';
output_rdat = 'ETERNA_R36_0001.rdat';
extra_comments = { 'From experiment: 093011_RNAgame36_Elim249302' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETKDZU_R37_0001.rdat';
output_rdat = 'ETERNA_R37_0001.rdat';
extra_comments = { 'From experiment: 102611_Ann_Game3738_Elim252502' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETCHLK_R38_0001.rdat';
output_rdat = 'ETERNA_R38_0001.rdat';
extra_comments = { 'From experiment: 102611_Ann_Game3738_Elim252502' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

%return;

input_rdat = '../CURRENT_RDATS/ETSHPT_R39_0001.rdat';
output_rdat = 'ETERNA_R39_0001.rdat';
extra_comments = { 'From experiment: 110211_Ann_Game39_Elim253284' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETMKUA_R40.rdat';
output_rdat = 'ETERNA_R40_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../OLD_RDATS/summit/BulgedStar/ETBLGS_ACL.rdat';
output_rdat = 'ETERNA_R41_0001.rdat';
extra_comments = { 'From experiment: 111411_Ann_Game41_Elim254897' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../OLD_RDATS/summit/TheBranches/ETBRNC_ACL.rdat';
output_rdat = 'ETERNA_R41_0002.rdat';
extra_comments = { 'From experiment: 111411_Ann_Game41_Elim254897' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETTBWC_R42.rdat';
output_rdat = 'ETERNA_R42_0001.rdat';
extra_comments = { 'From experiment: 113011_Ann_Game42_SH_Elim_256615' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETMKUA_R42.rdat';
output_rdat = 'ETERNA_R42_0002.rdat';
extra_comments = { 'From experiment: 113011_Ann_Game42_SH_Elim_256615' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSHPT_R42.rdat';
output_rdat = 'ETERNA_R42_0003.rdat';
extra_comments = { 'From experiment: 113011_Ann_Game42_SH_Elim_256615' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETCHLK_R42.rdat';
output_rdat = 'ETERNA_R42_0004.rdat';
extra_comments = { 'From experiment: 113011_Ann_Game42_SH_Elim_256615' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETKDZU_R42.rdat';
output_rdat = 'ETERNA_R42_0005.rdat';
extra_comments = { 'From experiment: 113011_Ann_Game42_SH_Elim_256615' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETWTSR_R42.rdat';
output_rdat = 'ETERNA_R42_0006.rdat';
extra_comments = { 'From experiment: 113011_Ann_Game42_SH_Elim_256615' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETTBWC_R43.rdat';
output_rdat = 'ETERNA_R43_0001.rdat';
extra_comments = { 'From experiment: 120211_RNAGame43_Elim_256942' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 


% Data from EteRNA SHAPE experiments read out by capillary electrophoresis, in both 10 mM MgCl2 and 1 M NaCl, and without and with flavin mononucleotide (FMN).
input_rdat = '../CURRENT_RDATS/ETFMNR_R44_0000.rdat';
output_rdat = 'ETERNA_R44_0001.rdat';
extra_comments = { 'From experiment: 121611_RNAGame44_Elim_258755' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETFMCR_R45_0001.rdat';
output_rdat = 'ETERNA_R45_0001.rdat';
extra_comments = { 'From experiment: 010511_Ann_RNAGame45_Elim_260214' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETFMCR_R45_0002.rdat';
output_rdat = 'ETERNA_R45_0002.rdat';
extra_comments = { 'From experiment: 011211_Game45_II_tPhe_Elim_261166' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETFMCR_R46_0001.rdat';
output_rdat = 'ETERNA_R46_0001.rdat';
extra_comments = { 'From experiment: 011712_Ann_Game46_Elim_261659' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../OLD_RDATS/ETFNMR_R47_0001.rdat'; % player designs
output_rdat = 'ETERNA_R47_0001.rdat';
extra_comments = { 'From experiment: 020112_Ann_Game47_Elim_263554' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

%input_rdat = '../OLD_RDATS/ETFMCN_R47_0001.rdat'; % looks the same as _0002
%input_rdat = '../OLD_RDATS/ETFMNA_R47_0001.rdat'; % looks the same as _0002
input_rdat = '../CURRENT_RDATS/ETFMCN_R47_0002.rdat'; % this has NUPACK and ViennaRNA design
output_rdat = 'ETERNA_R47_0002.rdat';
extra_comments = { 'From experiment: 020312_Ann_Game47B_Elim_264013' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

% Data from EteRNA SHAPE experiments read out by capillary electrophoresis, in 10 mM MgCl2, without and with flavin mononucleotide (FMN).
input_rdat = '../CURRENT_RDATS/ETFMCN_R48_0001.rdat';
output_rdat = 'ETERNA_R48_0001.rdat';
extra_comments = { 'From experiment: 021612_Ann_Game48_Elim_2655836' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETFMCN_R49_0001.rdat';
output_rdat = 'ETERNA_R49_0001.rdat';
extra_comments = { 'From experiment: 022112_Ann_Game49_Elim_266266' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETFMBR_R49_0001.rdat';
output_rdat = 'ETERNA_R49_0002.rdat';
extra_comments = { 'From experiment: 022112_Ann_Game49_Elim_266266' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '/Users/rhiju/Dropbox/Documents/EteRNA/EteRNA_Analysis/R50/ETFMNB_R50_revised.rdat';
output_rdat = 'ETERNA_R50_0001.rdat';
extra_comments = { 'From experiment: 030112_Ann_Game50_Elim_267625' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '/Users/rhiju/Dropbox/Documents/EteRNA/EteRNA_Analysis/R51/ETFMNB_R51_revised.rdat';
output_rdat = 'ETERNA_R51_0001.rdat';
extra_comments = { 'From experiment: 032812_Ann_Game51_Elim_271549' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

% Following was first riboswitch, I think! ... need to fill in switch
% score.
%input_rdat = '/Users/rhiju/Dropbox/Documents/EteRNA/EteRNA_Analysis/R51/ETSRSW_R51_revised.rdat';
%output_rdat = 'ETERNA_R51_0002.rdat';
%extra_comments = { 'From experiment: 032812_Ann_Game51_Elim_271549' };
%output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% algorithm designs
input_rdat = '../CURRENT_RDATS/ETFNGR_RV1_0001.rdat';
output_rdat = 'ETFNGR_RV1_0001.rdat';
extra_comments = { 'From experiments: 040111DC_EternaR22, 052511_Ann_EternaFNGR' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETFNGR_RN1_0002.rdat';
output_rdat = 'ETFNGR_RN1_0002.rdat';
extra_comments = { 'From experiments: 051111DC_EternaNPB, 052711_Ann_RNAgame2526C' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETCROS_VN1_0001.rdat';
output_rdat = 'ETCROS_VN1_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETCROS_RN1_0003.rdat';
output_rdat = 'ETCROS_RN1_0003.rdat';
extra_comments = { 'From experiment: 053111_Ann_RNAgameNP6' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETOBCR_VN1_0001.rdat';
output_rdat = 'ETOBCR_VN1_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETOBCR_RN1_0002.rdat';
output_rdat = 'ETOBCR_RN1_0002.rdat';
extra_comments = { 'From experiment: 053111_Ann_RNAgameNP6' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSTAR_VN1_0001.rdat';
output_rdat = 'ETSTAR_VN1_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSTAR_RN1_0002.rdat';
output_rdat = 'ETSTAR_RN1_0002.rdat';
extra_comments = { 'From experiment: 053111_Ann_RNAgameNP6' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBSTR_V1_0001.rdat';
output_rdat = 'ETBSTR_VN1_0001.rdat';
extra_comments = { 'From experiments: 032411DC_EternaR21, 052511_Ann_EternaR21' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBSTR_RN1_0002.rdat';
output_rdat = 'ETBSTR_RN1_0002.rdat';
extra_comments = { 'From experiment: 053111_Ann_RNAgameNP6' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBRNC_V1_0002.rdat';
output_rdat = 'ETBRNC_VN1_0002.rdat';
extra_comments = { 'From experiments: 040811DC_EternaR23, 052611_Ann_EternaVBRNC' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBRNC_RN1_0004.rdat';
output_rdat = 'ETBRNC_RN1_0004.rdat';
extra_comments = { 'From experiments: 050211DC_EternaR24NUPACK, 052611_RNAgame232428, 052611_Ann_EternaNBRNC, 052711_Ann_RNAgame2526C' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETRUNM_VN1_0001.rdat';
output_rdat = 'ETRUNM_VN1_0001.rdat';
extra_comments = { 'From experiment: 072811_Ann_RNAgame32, 081111_Ann_RNAGAme33, 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETBNDS_VN1_0001.rdat';
output_rdat = 'ETBNDS_VN1_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETTHNG_VN1_0001.rdat';
output_rdat = 'ETTHNG_VN1_0001.rdat';
extra_comments = { 'From experiments: 082611_Ann_Game341to1dil, 082611_Ann_RNAgame334_Elim245326, 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETWTSR_VN1_0001.rdat';
output_rdat = 'ETWTSR_VN1_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETKDZU_VN1_0001.rdat';
output_rdat = 'ETKDZU_VN1_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETCHLK_VN1_0001.rdat';
output_rdat = 'ETCHLK_VN1_0001.rdat';
extra_comments = { 'From experiment: 110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 

input_rdat = '../CURRENT_RDATS/ETSHPT_VN1_0001.rdat';
output_rdat = 'ETSHPT_VN1_0001.rdat';
extra_comments = { 'From experiment:  110711_Ann_VN_NP_SH_Mg_Elim253732' };
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score ); 


% deprecated, I think.
%input_rdat = '../CURRENT_RDATS/ETCROS_RN1_0001.rdat';
%input_rdat = '../CURRENT_RDATS/ETCROS_RN1_0002.rdat';
%input_rdat = '../CURRENT_RDATS/ETOBCR_RN1_0001.rdat';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mutate-and-map data
% TODO TODO TODO: Probably should add data annotation with Eterna information!
input_rdat = '../RhijuScripts/NUPACK_BulgedStar4_MutateMap.rdat';
output_rdat = 'ETBSTR_SHP_0002.rdat';
extra_comments = {  'Mutate and map for NUPACK Bulged Star 4 (top NUPACK design)','From experiment:  Ann_Nupack111sampes_SHAPE_Elim246814' };
extra_anots = {'EteRNA:design_name:NUPACK_design_04','EteRNA:target:Shape_Library_201_:_Bulged_Star','EteRNA:ID:434012','EteRNA:subround:1'};
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score, extra_anots ); 

input_rdat = '../RhijuScripts/Ding_BulgedStar2_MutateMap.rdat';
output_rdat = 'ETBSTR_SHP_0003.rdat';
extra_comments = { 'Mutate and map for Ding Bulged Star 2 (top EteRNA-created design)','From experiment:  092711_Ann_Buldge_Star_SHAPE_pl1_Elim_248943' };
extra_anots = {'EteRNA:design_name:_Ding''s_Round_2_Bulged_Star','EteRNA:target:_Shape_Library_201_:_Bulged_Star','EteRNA:ID:391298','EteRNA:subround:2'};
output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score, extra_anots ); 


