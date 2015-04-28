% out = paren(cell_array,inds1,inds2,...,indsN)
%
% Functional interface to array slicing
%
% For example, A(1,:,1:3) is equivalent to paren(A,1,':',1:3)
%
% Note: pass the string ':' for :
function out = paren(collection, varargin)
	out = collection(varargin{:});
end