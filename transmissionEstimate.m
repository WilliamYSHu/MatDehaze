function transmission = transmissionEstimate(im,A)

omega = 0.95; %ÊÔ³öÀ´µÄ

im3 = zeros(size(im));
for ind = 1:3
    im3(:,:,ind) = im(:,:,ind)./A(ind);
end 

transmission = 1 - omega * darkChannel(im3);