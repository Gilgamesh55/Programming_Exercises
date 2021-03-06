% Contrast Stretching a greyscale image
clc;
a = imread('images/gray1.jpg');
a = double(a);
[m,n] = size(a);
maxValue = max(a(:));
fprintf('\nSize: %d x %d x %d', size(a));
fprintf('\nUnique values: %d\n', length(unique(a)));
fprintf('\nMax value: %d\n', maxValue);

lt = 50;
ut = 150;

figure(1);
subplot(2,2,1);
imshow(uint8(a));
title('Original Image');

subplot(2,2,2);
imhist(uint8(a));
title('Original Histogram');

for x = 1:1:m
	for y = 1:1:n
		if a(x,y) <= lt
			b(x,y) = 0.5 * a(x,y);
		elseif a(x,y) <= ut
			b(x,y) = 2*(a(x,y) - lt) + 0.5*lt;
		else
			b(x,y) = 0.5*(a(x,y)-ut) + 0.5*lt + 2*(ut-lt);
		end
	end
end

subplot(2,2,3);
imshow(uint8(b));
title('Contrast stretched Image');

subplot(2,2,4);
imhist(uint8(b));
title('Contrast stretched Histogram');
