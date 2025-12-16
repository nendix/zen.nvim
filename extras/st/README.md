How to add the theme.

Locate your `config.def.h` file, usually found in the root directory of your st installation.

Locate the line that says `static const char *colorname[] = {` and replace the colors like so:

```c
/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* taken from https://github.com/nendix/zen.nvim/blob/main/extras/ghostty/zen_dark */

	/* 8 normal colors */
    "#222222",
    "#B9A0A0",
    "#a0b9a0",
    "#b9b0a0",
    "#a0a0b9",
    "#b0a0b9",
    "#a0b0b0",
    "#b2b2b2",

	/* 8 bright colors */
    "#323232",
    "#b9a0a0",
    "#a0b9a0",
    "#b9b0a0",
    "#a0a0b9",
    "#b0a0b9",
    "#a0b0b0",
    "#d0d0d0",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#E0E0E0",
	"#555555",
	"#E0E0E0", /* default foreground colour */
	"#121212", /* default background colour */
};
```

`rm config.h` if it exists to avoid conflicts, then `sudo make clean install` to recompile st with the new colors.
