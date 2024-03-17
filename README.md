# Details of a book image without OCR
Counting characters, words and lines of a text in an image of a book page with poor lighting and shadows.
### Preprocessing:
1. Image acquisition.
2. Background removal.
3. Image binarization.
4. Filtering to remove noise and join isolated points.

### Counting:
1. Labeling of connected regions (characters).
2. Calculation of the area of each region.
3. Definition of an area threshold for counting characters.
4. Counting words and lines from the characters.

## Before & After Processing
<div align="center">
<img src="assets/Procesado_imagen.png">
</div>

## Skeleton BW zoomed
<div align="center">
<img src="assets/Skeleton Cerca.png">
</div>

## Original image
<div align="center">
<img src="image.jpg">
</div>

