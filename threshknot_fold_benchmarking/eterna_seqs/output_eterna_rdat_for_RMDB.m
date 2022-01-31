function output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score, extra_anots )
% output_eterna_rdat_for_RMDB( input_rdat, output_rdat, extra_comments, solution_id, eterna_score, extra_anots )

fprintf('\n');
r = read_rdat_file( input_rdat );

r.comments = [ r.comments, extra_comments ];
if isempty( r.reactivity_error ) || all( r.reactivity_error(:) == 0.0 )
    warning( 'Adding ad hoc error estimates!' );
    r.reactivity_error = 0.1 * mean( abs( r.reactivity(:) ) ) + 0.2 * r.reactivity;
    r.comments = [r.comments, {'Reactivity errors estimated post hoc as 0.1 * mean(val) + 0.2 * val.'} ];
end

if exist( 'extra_anots', 'var')
    r.annotations = [r.annotations, extra_anots ];
end

[~,input_rdat_name] = fileparts( input_rdat );
r.comments = [ r.comments, { sprintf('Alternative name for RDAT: %s.', input_rdat_name ) } ];


% reactivity_error length does not match reactivity -- thanks to Hannah
% Wayment-Steele for catching this.
if size( r.reactivity, 1 ) ~= size( r. reactivity_error, 1 )
    warning( 'Reactivity errors have different length than reactivity: will flip & truncate.' );
    reactivity_error = r.reactivity_error( end:-1:1, : );
    reactivity_error = reactivity_error( r.seqpos, : );
    r.reactivity_error = reactivity_error;
end

for i = 1:size( r.reactivity_error, 2 )
    if all( r.reactivity_error(:,i) == 0 )
        warning( 'Reactivity error is still zero for entry number %d.', i );
        r.reactivity_error(:,i) = 0.1 * mean( abs( r.reactivity(:,i) ) ) + 0.2 * r.reactivity(:,i);
    end
end


% cross-check eterna score with rdat_id
rdat_ids = str2double( get_tag( r.data_annotations, 'EteRNA:ID' ) );
target_name = get_tag( r.data_annotations, 'EteRNA:target' );
rdat_names = get_tag( r.data_annotations, 'EteRNA:design_name' );
rdat_scores = str2double( get_tag( r.data_annotations, 'EteRNA:score:EteRNA_score' ) );
if  all(isnan(rdat_ids ) )
    fprintf( 'Did not find Eterna ID within DATA_ANNOTATION lines.\n' );
else
    for i = 1:length( rdat_ids )
        m = find(rdat_ids(i)==solution_id ) ;
        if isempty(m)
            fprintf( 'RDAT %4.1f EteRNA_DB %d  %d %s %s\n',rdat_scores(i),0,rdat_ids(i),target_name{i}, rdat_names{i} );
            warning( 'Could not find ID!' )
        else
            match_string = '';
            if ( eterna_score(m) == floor(rdat_scores(i)) ) match_string = ' *'; end;
            fprintf( 'RDAT %4.1f EteRNA_DB %d  %d %s %s%s\n',rdat_scores(i),eterna_score(m),rdat_ids(i),target_name{i}, rdat_names{i}, match_string);
        end
    end
end

force_checks = 1;
output_rdat_to_file( output_rdat, r, force_checks );

