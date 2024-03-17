# Details of a book image without OCR
Counting characters, words and lines of a text in an image of a book page with poor lighting and shadows.

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

Process
The steps to follow are:

Preprocessing:

Image acquisition.
Background removal.
Image binarization.
Filtering to remove noise and join isolated points.
Counting:

Labeling of connected regions (characters).
Calculation of the area of each region.
Definition of an area threshold for counting characters.
Counting words and lines from the characters.