function J = getRadiance(A,im,tMat)
t0 = 0.01;
J = zeros(size(im));
J = double(J);
for ind = 1:3
   J(:,:,ind) = A(ind) + (im(:,:,ind) - A(ind))./max(tMat,t0); 
end

J = J./(max(max(max(J))));
%% SECTION TITLE
% DESCRIPTIVE TEXT