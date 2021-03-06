% out = contains(collection, object)
%
% Returns true if collection contains object,
% false otherwise. Undefined for structs.
%
% USAGE:
%
% >> X = {1, 3, 'a',pi};
% >> contains(X,pi)
% ans =
%      1
% >> contains(X,8)
% ans =
%      0
% >> contains(X,'a')
% ans =
%      1
% >> contains(X,'pi')
% ans =
%      0
function out = contains(collection, object)
    if isstruct(collection)
        error('contains:nostructs','Behavior of contains() undefined on structs.');
    end

	out = ~isempty(compact(map(curry(@isequal,object),collection)));
end