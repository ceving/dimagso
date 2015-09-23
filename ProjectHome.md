# Digital Image Sorter #

## Motivation ##
I started writing this tool because I switched my personal home computer from Windows Vista to [Debian Linux](http://www.debian.org/).  I was used to download photos from my compact flash cards with [Downloader Pro](http://www.breezesys.com/Downloader/) from [Breeze Systems](http://www.breezesys.com/).  Although Downloader Pro has some notches I used it for about a year without much trouble.

But there was no version for Linux available.  So I had to find some kind of alternative.  I spend some time digging around but I did not find anything pleasing.

Furthermore I want to find out how usable the [Perl bindings](http://gtk2-perl.sourceforge.net/) for [GTK+](http://www.gtk.org/) are.  So I spend some time on this project and wrote my own down loader.

## Requirements ##
My personal requirements are quite simple:
  1. All images are only downloaded with a card reader.
  1. Groups of images can be labeled with a job description.
  1. Image files can be moved and renamed into directories by self defined renaming rules using EXIF data and other file attributes.
  1. The program configuration must be compatible with a shared user environment.

The first requirement makes it obsolete to support any proprietary USB protocols.  Images are only moved from one place in the file system to another.  Whenever a camera gets connected directly to the computer an USB mass storage profile must be used to access the camera.

The second requirement makes it necessary to have a thumbnail preview to organize the images. Without seeing any thumbnails it would not be possible to group images and label them.  This is necessary because without job descriptions it is almost impossible to find any specific event in the past.

The third requirement makes it easy to organize images in a way which is appropriate for any specific photo processing work flow.

And the last requirement is necessary for team work, where different people work on the same pool of photos.

## Status ##
The program is still in development. Almost nothing works right now.