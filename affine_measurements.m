im = imread('data/poli2.jpg');
im = imresize(im,0.6);
figure(1);
imshow(im);

numSegments = 4; % the minimum number of segments is two, the higher the better the result
verticalLines = nan(numSegments,3); % store vertical parallel lines
endPoints = nan(2,numSegments); % store the endpoints of the segments for visualization purpose
count = 1;
while(count <=numSegments)
    figure(1);
    title(['Draw ', num2str(numSegments),' vertical segments: step ',num2str(count) ]);
    seg = drawline('Color','b');
    % convert the end points of the segments into the coefficients of
    % the line
    endPoints(:,count) = seg.Position(1,:)';
    % switch to homoegeous coordinates
    a = [seg.Position(1,:)';1];
    b = [seg.Position(2,:)';1];
    % get the parameters of the line
    l = cross(a,b);
    l = l./norm(l); %normalize it, just to remove the scale factor
    verticalLines(count, :) = l';
    count = count +1;
end

