function Mydehaze(imagePath)
image = imread(imagePath);
[height, width, channels] = size(image)
image = double(image);
image = image ./255;
imshow(image)

JDark = darkChannel(image);

A = atmLight(image,JDark);
transmission=transmissionEstimate(image,A);
J = getRadiance(A,image,transmission);
figure;
imshow(J)