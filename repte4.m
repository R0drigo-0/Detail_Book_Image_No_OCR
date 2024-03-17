clearvars;
close all;
clc;

im = imread("image.jpg");
im = rgb2gray(im);

BW = imbinarize(im,'adaptive', 'Sensitivity',0.75);
BW = imcomplement(BW);
BW = bwareaopen(BW, 10);

figure, imshow(BW), title("Imagen binaria sin modificaciones")

BW_skeleton = bwskel(BW);
label = logical(BW_skeleton);
regions = regionprops(label, 'Area');
area = cat(1, regions.Area);
figure, histogram(area,100);
min_area = 3;
num_regions = sum(area>min_area);
figure, imshow(BW_skeleton), title('Imagen binaria skeleton');
num_caracteres = num_regions;
disp(['Número de caracteres: ', num2str(num_caracteres)]);

BW_dilatada = imdilate(BW, strel('rectangle', [5,11]));
BW_dilatada = bwareaopen(BW_dilatada, 10);
label_palabras = logical(BW_dilatada);
regions_palabras = regionprops(label_palabras,'Area');
area_palabras = cat(1,regions_palabras.Area);
num_palabras = sum(area_palabras > 0);
figure, imshow(BW_dilatada), title('Imagen binaria numero palabras');
disp(['Número de palabras: ', num2str(num_palabras)]);

BW_erosionada = imerode(BW_dilatada, strel("disk", 3));
BW_erosionada = imdilate(BW_erosionada, strel('line', 30, 0));
label_lineas = logical(BW_erosionada);
regions_lineas = regionprops(label_lineas,'Area');
area_lineas = cat(1,regions_lineas.Area);
num_lineas = sum(area_lineas > 0);
figure, imshow(BW_erosionada), title('Imagen binaria linea');
disp(['Número de líneas: ', num2str(num_lineas)]);
