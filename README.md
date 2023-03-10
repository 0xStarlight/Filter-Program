
<p align="center">
  <img src="image_converter.gif" alt="animated" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"/>
  <img src="https://ci.appveyor.com/api/projects/status/pjxh5g91jpbh7t84?svg=true"/>
  <img src="https://img.shields.io/github/license/onyx-storm/Filter-Program"/>
</p>


## Filter-Program
A program is written in C language so users can apply grayscale, sepia, reflection, blur, or edge detection filters to their images

## Requirements
Clang should be installed on your system

`$ sudo apt-get install clang`

## Build
Use the provided Makefile

`$ make`

## How to run the program
After running make, the program will be located in a directory called `bin`. It can be used like this

`$ ./filter [flag] infile outfile`


* Filter flags

`$ ./filter -h` or `$ ./filter --help`
```
Options available
-b     blur filter
-e     edges filter
-s     sepia filter
-g     greyscale filter
-r     reflected filter
```
* How to build the program 

`$ clang -ggdb3 -O0 -Qunused-arguments -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow -lm -o filter filter.c helpers.c`

## Note

* Can only convert Bitmap images with specific format

`PC bitmap,Windows 3.x format, cbSize 720056, bits offset 54`

* Save output file with a bitmap file extention `.bmp`

* Example

`$ ./filter [FLAG] image.bmp out.bmp`

## Filter Snapshots
* Original Image

![Original](assets/original.bmp)

* Blur Filter

![blur_filter](assets/blur_filter.bmp)

* Edge Detection Filter

![edge_filter](assets/edge_filter.bmp)

* Greyscale Filter

![greyscale_filter](assets/greyscale_filter.bmp)

* Reflected Filter

![reflected_filter](assets/reflected_filter.bmp)

* Sepia Filter

![sepia_filter](assets/sepia_filter.bmp)


## Author
* Bhaskar Pal - *Initial Work* - [bhaskarpal](https://github.com/onyx-storm) 

## License
* This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details
