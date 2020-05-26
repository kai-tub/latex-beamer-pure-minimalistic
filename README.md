<div align="center">

![Pure Minimalistic Theme](logos/institute_logo_darkmode.png)
[![Release](https://badgen.net/github/release/kai-tub/latex_beamer_pure_minimalistic/)](https://github.com/kai-tub/latex_beamer_pure_minimalistic/releases) 
[![GitHub license](https://badgen.net/github/license/kai-tub/latex_beamer_pure_minimalistic/)](https://github.com/kai-tub/latex_beamer_pure_minimalistic/blob/master/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg?color=blue)](CODE_OF_CONDUCT.md)
[![Auto Release](https://img.shields.io/badge/release-auto.svg?colorA=888888&colorB=9B065A&label=auto&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAACzElEQVR4AYXBW2iVBQAA4O+/nLlLO9NM7JSXasko2ASZMaKyhRKEDH2ohxHVWy6EiIiiLOgiZG9CtdgG0VNQoJEXRogVgZYylI1skiKVITPTTtnv3M7+v8UvnG3M+r7APLIRxStn69qzqeBBrMYyBDiL4SD0VeFmRwtrkrI5IjP0F7rjzrSjvbTqwubiLZffySrhRrSghBJa8EBYY0NyLJt8bDBOtzbEY72TldQ1kRm6otana8JK3/kzN/3V/NBPU6HsNnNlZAz/ukOalb0RBJKeQnykd7LiX5Fp/YXuQlfUuhXbg8Di5GL9jbXFq/tLa86PpxPhAPrwCYaiorS8L/uuPJh1hZFbcR8mewrx0d7JShr3F7pNW4vX0GRakKWVk7taDq7uPvFWw8YkMcPVb+vfvfRZ1i7zqFwjtmFouL72y6C/0L0Ie3GvaQXRyYVB3YZNE32/+A/D9bVLcRB3yw3hkRCdaDUtFl6Ykr20aaLvKoqIXUdbMj6GFzAmdxfWx9iIRrkDr1f27cFONGMUo/gRI/jNbIMYxJOoR1cY0OGaVPb5z9mlKbyJP/EsdmIXvsFmM7Ql42nEblX3xI1BbYbTkXCqRnxUbgzPo4T7sQBNeBG7zbAiDI8nWfZDhQWYCG4PFr+HMBQ6l5VPJybeRyJXwsdYJ/cRnlJV0yB4ZlUYtFQIkMZnst8fRrPcKezHCblz2IInMIkPzbbyb9mW42nWInc2xmE0y61AJ06oGsXL5rcOK1UdCbEXiVwNXsEy/6+EbaiVG8eeEAfxvaoSBnCH61uOD7BS1Ul8ESHBKWxCrdyd6EYNKihgEVrwOAbQruoytuBYIFfAc3gVN6iawhjKyNCEpYhVJXgbOzARyaU4hCtYizq5EI1YgiUoIlT1B7ZjByqmRWYbwtdYjoWoN7+LOIQefIqKawLzK6ID69GGpQgwhhEcwGGUzfEPAiPqsCXadFsAAAAASUVORK5CYII=)](https://github.com/intuit/auto)

![Build and Release](https://github.com/kai-tub/latex-beamer-pure-minimalistic/workflows/Build%20and%20Release/badge.svg)
![Upload Assets](https://github.com/kai-tub/latex-beamer-pure-minimalistic/workflows/Upload%20Assets/badge.svg)

A presentation theme for LaTeX-Beamer that is truly
minimalistic, so that the focus is on the presenter and
not on the slides.

Requires the packages [fira](https://ctan.org/pkg/fira) and
[silence](https://ctan.org/pkg/silence)
to be installed on your system.
To build the [demo.tex](demo.tex) file, 
[PGF/TikZ](https://ctan.org/pkg/pgf), 
[appendixnumberbeamer](https://ctan.org/pkg/appendixnumberbeamer),
[fontaxes](https://ctan.org/pkg/fontaxes), and
[mwe](https://ctan.org/pkg/mwe) are also required.

</div>

**Table of contents:**
- [Main goals](#main-goals)
- [Demo](#demo)
- [Comparison](#comparison)
  - [Dark mode](#dark-mode)
  - [Light mode](#light-mode)
- [Download](#download)
- [Instructions](#instructions)
- [Customize](#customize)
  - [Customize Logos](#customize-logos)
  - [Color](#color)
  - [Fonts](#fonts)
  - [Footer options](#footer-options)
- [Release status](#release-status)
- [License](#license)
- [Contributing](#contributing)
- [Contact](#contact)

# Main goals
- The theme produces no warnings
- It should be looking *good* in a 4:3 and 16:9 aspect ratio, without the need to change anything.
- Provides an environment for vertical-spaced items
- Easy option to either use light- or dark-mode
- Is designed to be purely minimalistic without any distractions 
- Easily use own logos

# Demo
A sample document can be seen in the
[demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf),
produced from [demo.tex](demo.tex).
The document shows all of the
design decisions, as well as some packages and commands that
work well for presentations. For example, starting the
frame counter after the *Table of Contents* section does not
include backup slides to the total frame counter.
Please use [demo.tex](demo.tex)
as a starting point, as exhaustive comments
were added for a smooth start.

[Here](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.png)
a short *inline teaser* version of the [demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf) can be seen.

![demo.png](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.png)

Please look at the [PDF](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf) version for high-resolution images. :)

I highly recommend [pympress](https://github.com/Cimbali/pympress) to add videos to the presentation.
This presentation tool works perfectly with
Beamer presentations and is available on all major OS!

# Comparison
To show some differences between the default LaTeX beamer
theme and the pure minimalistic beamer theme 
(inspired by the [auriga beamer theme](https://github.com/anishathalye/auriga)):

## Dark mode
On the [left](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_dark.png)
is the pure minimalistic theme in dark mode,
and on the [right](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_dark.png) is the default beamer theme.
![comparison-dark](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_dark.png)

## Light mode
On the [left](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_light.png) is the pure minimalistic theme in light mode,
and on the [right](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_light.png) is the default beamer theme.

![comparison-light](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_light.png)

# Download
Download the latest release by going to the [release page](https://github.com/kai-tub/latex_beamer_pure_minimalistic/releases).

# Instructions
After downloading, copy the files named
beamer*pureminimalistic.sty into the same folder as your
LaTeX source file. Then include the theme by writing:
```latex
\documentclass[aspectratio=169]{beamer}

\usetheme[]{pureminimalistic}
```
 
# Customize

All options and commands are also described in detail in the
[demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf).

## Customize Logos
By default, the theme expects the logos to be present in a
folder `logos` relative to the `.sty` file with the names: 
`header_logo`, `header_logo_darkmode`, 
`institute_logo`, and `institute_logo_darkmode`. 

But you can easily change the logos used.
There are 3 commands used to define which logos
are used and how they are formatted:
- `\logotitle` – Command used for title page. Here `\linewidth`
  corresponds to the entire paper width.
- `\logoheader` – Command used for the header. Here `\linewidth`
  corresponds to a smaller box, as the horizontal space is
  shared with the title.
- `\logofooter` – Command used for the footer. Here `\linewidth`
  corresponds to a smaller box, as the horizontal space is
  shared with the footer text.

To load your own logos for the title, header, and footer set them
with:

```latex
\renewcommand{\logotitle}{\includegraphics%
  [width=.2\linewidth]{alternative_logo/gameboy.png}}
\renewcommand{\logoheader}{\includegraphics%
  [width=.5\linewidth]{alternative_logo/gameboy.png}}
\renewcommand{\logofooter}{\includegraphics%
  [width=.15\linewidth]{alternative_logo/console.png}}
```

![alternative-title-logo](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/alternative_title_logo.png)

![alternative-header-footer-logo](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/alternative_header_footer_logo.png)

## Color
The theme includes two default color options.
The default color theme is light.
The alternative color theme is the dark color theme, enabled with:

```latex
\usetheme[darkmode]{pureminimalistic}
```

The themes color commands can be redefined to
customize the appearance.

Please set these *after* loading the theme
and *before* `\begin{document}` for the changes to take effect.

The following theme color commands exist:
- `\beamertextcolor`
- `\beamerbgcolor`
- `\beamerfootertextcolor`
- `\beamertitlecolor`

To redefine the background, for example, the following commands
could be used:
```latex
\usetheme{pureminimalistic}
\definecolor{textcolor}{RGB}{0, 0, 120}
\definecolor{title}{RGB}{0, 0, 0}
\definecolor{footercolor}{RGB}{133, 133, 133}
\definecolor{bg}{RGB}{25, 116, 210}

\renewcommand{\beamertextcolor}{textcolor}
\renewcommand{\beamerbgcolor}{bg}
\renewcommand{\beamerfootertextcolor}{footercolor}
\renewcommand{\beamertitlecolor}{title}
```

![custom-color](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/custom_color.png)

## Fonts
The default fonts are the [Fira Fonts](https://bboxtype.com/typefaces/FiraSans/#!layout=specimen). 
This decision was inspired by another awesome beamer theme,
the [Focus beamer theme](https://github.com/elauksap/focus-beamertheme).

![fira-fonts](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/fira_font.png)

Some dislike the Fira Fonts. As an alternative, this
theme also integrates the *Helvetica* fonts.
The Helvetica fonts are a classical font choice for presentations.

To use the Helvetica fonts:

```latex
\usetheme[helvetica, darkmode]{pureminimalistic}
```

![helvetica-fonts](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/helvetica_font.png)

If you prefer the default fonts, disable the Fira Fonts with:

```latex
\usetheme[nofirafonts, darkmode]{pureminimalistic}
```

![helvetica-fonts](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/default_font.png)

## Footer options

**Show max slide numbers**

To show the maximum number of slides, enable the
`showmaxslides` option:

```latex
\usetheme[showmaxslides, darkmode]{pureminimalistic}
```

![show-max-slides](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/show_max_slides.png)

**Disable footer**

To disable the footer altogether, including the institute image,
set the `nofooter` option:

```latex
\usetheme[nofooter, darkmode]{pureminimalistic}
```

![no-footer](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/no_footer.png)

# Release status
The next steps and thoughts about the upcoming release
with possible features can be seen on the [project
page](https://github.com/kai-tub/latex_beamer_pure_minimalistic/projects/1). 

# License
This software is released under the GNU GPL v3.0 
[License](LICENSE).

# Contributing
Please see the [contribution guidelines](CONTRIBUTING.md) for more information.

As always, PRs are welcome. :)

# Contact
If you have any comments, issues, or suggestions, please
open an issue on GitHub. 
I will try my best to help as much as I can. :)
