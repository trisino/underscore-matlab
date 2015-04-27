% out = curly(cell_array,inds1,inds2,...,indsN)
%
% Functional interface to cell array slicing
%
% For example, A{1,:,1:3} is equivalent to curly(A,1,':',1:3)
%
% Note: pass the string ':' for :
function out = curly(collection, varargin)
	out = collection{varargin{:}};
end