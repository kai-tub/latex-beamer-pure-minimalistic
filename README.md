<div align="center">

![Pure Minimalistic Theme](logos/institute_logo_darkmode.png)
[![Release](https://badgen.net/github/tag/kai-tub/latex_beamer_pure_minimalistic/?label=Newest%20release)](https://github.com/kai-tub/latex_beamer_pure_minimalistic/releases) 
[![GitHub license](https://badgen.net/github/license/kai-tub/latex_beamer_pure_minimalistic/)](https://github.com/kai-tub/latex_beamer_pure_minimalistic/blob/master/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg?color=blue)](CODE_OF_CONDUCT.md)

![Build](https://github.com/kai-tub/latex-beamer-pure-minimalistic/workflows/Build/badge.svg?branch=master)
![Release](https://github.com/kai-tub/latex-beamer-pure-minimalistic/workflows/Release/badge.svg?branch=master)


A presentation theme for LaTeX-Beamer that is truly
minimalistic, so that the focus is on the presenter and
not on the slides.
</div>

**Table of contents:**
- [Main goals](#main-goals)
- [Demo](#demo)
- [Comparison](#comparison)
  - [Dark mode](#dark-mode)
  - [Light mode](#light-mode)
- [Download](#download)
- [Instructions](#instructions)
- [Customize Logos](#customize-logos)
- [Options](#options)
  - [Color](#color)
  - [Fonts](#fonts)
  - [Footer options](#footer-options)
- [Release status](#release-status)
- [License](#license)
- [Contributing](#contributing)
- [Contact](#contact)

# Main goals
- No warnings are produced by the theme
- It should be looking *good* in a 4:3 and 16:9 aspect ratio, without the need to change anything.
- Provides an environment for vertical-spaced items
- Easy option to either use normal- or dark-mode
- Is designed to be purely minimalistic without any distractions 
- Easily use own logos (partly functional)
  

# Demo
A sample document can be seen in the
[demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf),
produced from [demo.tex](demo.tex).
The document shows all of the
design decisions, as well as some packages and commands that
work well for presentations. For example, starting the
frame counter after the *Table of Contents* section and not
including backup slides to the total frame counter.
Please use [demo.tex](demo.tex)
as a starting point, as exhaustive comments
were added to hopefully make everything very clear.

Here is a short *inline teaser* version of the [demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf).

![demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.png)

Please look at the [PDF](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf) version for high resulition images. :)

To add videos to the presentation, [pympress](https://github.com/Cimbali/pympress) is highly recommended.
This presentation tool works perfectly with
Beamer presentations and is available on all major OS!

# Comparison
To show some differences between the default LaTeX beamer
theme and the pure minimalistic beamer theme:

## Dark mode
On the left is the pure minimalistic theme in dark mode,
and on the right is the default beamer theme.
![comparison-dark](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_dark.png)

## Light mode
On the left is the pure minimalistic theme in light mode,
and on the right is the default beamer theme.

![comparison-light](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/compare_examples/comparison_light.png)

# Download
Download the latest release by going to the [release page](https://github.com/kai-tub/latex_beamer_pure_minimalistic/releases).

# Instructions
After downloading, copy the files named
beamer*pureminimalistic.sty into the same folder as your
LaTeX source file. Then include the theme by writing
```latex
\documentclass[aspectratio=169]{beamer}

\usetheme[]{pureminimalistic}
```
 
# Customize Logos
Right now the theme expects the logos to be present in a
folder `logos` with the names: `header_logo`, `header_logo_darkmode`, `institute_logo` and `institute_logo_darkmode`. 
Currently, the best way to include
your logo is to replace these files and, if necessary, modify
the code where the figures are included in the
`beamerouterthemepureminimalistic.sty` file.

# Options

All options are also described in detail in the
[demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/demo.pdf).

## Color
The theme includes two default color options.
The default color theme is a light color theme.
The alternative color theme is the dark color theme, enabled with:

```latex
\usetheme[darkmode]{pureminimalistic}
```

To customize the colors, the themes color commands can
be redefined. Please set these *after* loading the theme
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
This decision was inspired from another awesome beamer theme,
the [Focus beamer theme](https://github.com/elauksap/focus-beamertheme).

![fira-fonts](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/minimal_examples/fira_font.png)

Some dislike the Fira Fonts. As an alternative this
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
The next steps and thoughts about the next release
with possible features can be seen on the [project
page](https://github.com/kai-tub/latex_beamer_pure_minimalistic/projects/1). 

# License
This software is released under the GNU GPL v3.0 
[License](LICENSE).

# Contributing
Please see the [contribution guidelines](CONTRIBUTING.md) for more information.

As always, PRs are welcome. :)

# Contact
If you have any comments, issues or suggestions, please
open an issue on GitHub. 
I will try my best to help as much as I can. :)
