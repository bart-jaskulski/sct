# sct
Change screen color temperature and brightness using the Xrandr extension

The original program was written by Ted Unangst (see
http://www.tedunangst.com/flak/post/sct-set-color-temperature) who was
so kind to put it under public domain.

In contrast to other programs that adapt color temperature, this
programs minimizes the required dependencies to an absolute minimum.

I simply added the option to change the brightness, too. The arguments
are as follows:

```
./sct TEMPERATURE BRIGHTNESS
```

where `TEMPERATURE` is given between 1000K and 10000K (default 6500K)
and `BRIGHTNESS` between 0.1 and 1.0 (default 1.0).

To compile, you must specify the location of `libX11`, `libXrandr` and the required include files, e.g.,

```
gcc -I/usr/local/include -L/usr/local/lib sct.c -o sct -lXrandr -lX11
```

or adapt it to your OS.

On Devuan (and probably other Debian derived distributions) you will need to
install the additional packages `libxrandr-dev` and `libc6-dev`.
