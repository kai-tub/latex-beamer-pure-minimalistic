<div align="center">

![Pure Minimalistic Theme](logos/institute_logo_darkmode.png)
[![Release](https://badgen.net/github/release/kai-tub/latex_beamer_pure_minimalistic/)](https://github.com/kai-tub/latex_beamer_pure_minimalistic/releases)
[![GitHub license](https://badgen.net/github/license/kai-tub/latex_beamer_pure_minimalistic/)](https://github.com/kai-tub/latex_beamer_pure_minimalistic/blob/master/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg?color=blue)](CODE_OF_CONDUCT.md)
<img alt="Powered by nix" src="https://img.shields.io/badge/Powered%20By-Nix-blue?style=flat&logo=snowflake">

<img alt="Tests Status Badge" src="https://github.com/kai-tub/latex-beamer-pure-minimalistic/actions/workflows/build_and_release.yml/badge.svg">


A presentation theme for LaTeX-Beamer that is truly
minimalistic, so that the focus is on the presenter and
not on the slides.

Requires the packages [fira](https://ctan.org/pkg/fira), [noto](https://ctan.org/pkg/noto), and
[silence](https://ctan.org/pkg/silence)
to be installed on your system.
To build the [beamertheme-pure-minimalistic-demo.tex](beamertheme-pure-minimalistic-demo.tex) file,
[PGF/TikZ](https://ctan.org/pkg/pgf),
[appendixnumberbeamer](https://ctan.org/pkg/appendixnumberbeamer),
[fontaxes](https://ctan.org/pkg/fontaxes), and
[mwe](https://ctan.org/pkg/mwe) are also required.

<a href="https://www.buymeacoffee.com/kaitub" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/arial-blue.png" alt="Buy Me A Coffee" width="162px" height="40px"/></a>

</div>

**Table of contents:**
- [Main goals](#main-goals)
- [Demo](#demo)
- [Comparison](#comparison)
  - [Dark mode](#dark-mode)
  - [Light mode](#light-mode)
- [Download](#download)
- [Instructions](#instructions)
- [Multi-language support](#multi-language-support)
- [Customize](#customize)
  - [Customize Logos](#customize-logos)
  - [Color](#color)
  - [Fonts](#fonts)
  - [Footer options](#footer-options)
- [Extras](#extras)
- [Release status](#release-status)
- [License](#license)
- [Contributing](#contributing)
- [Contact](#contact)
- [Other great beamer themes](#other-great-beamer-themes)

# Main goals
- It should be looking *good* in a 4:3 and 16:9 aspect ratio, without the need to change anything.
- Provides an environment for vertical-spaced items
- Easy option to either use light- or dark-mode
- Is designed to be purely minimalistic without any distractions
- Easily use own logos
- Should support different languages without too many changes

# Demo
A sample document can be seen in the
[beamertheme-pure-minimalistic-demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/beamertheme-pure-minimalistic-demo.pdf),
produced from [beamertheme-pure-minimalistic-demo.tex](beamertheme-pure-minimalistic-demo.tex).
The document shows all of the
design decisions, as well as some packages and commands that
work well for presentations. For example, starting the
frame counter after the *Table of Contents* section does not
include backup slides to the total frame counter.
Please use [beamertheme-pure-minimalistic-demo.tex](beamertheme-pure-minimalistic-demo.tex)
as a starting point, as exhaustive comments
were added for a smooth start.

[Here](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/beamertheme-pure-minimalistic-demo.png)
a short *inline teaser* version of the [beamertheme-pure-minimalistic-demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/beamertheme-pure-minimalistic-demo.pdf) can be seen.

![beamertheme-pure-minimalistic-demo.png](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/beamertheme-pure-minimalistic-demo.png)

Please look at the [PDF](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/beamertheme-pure-minimalistic-demo.pdf) version for high-resolution images. :)

I highly recommend [pympress](https://github.com/Cimbali/pympress) to add videos to the presentation.
This presentation tool works perfectly with
Beamer presentations and is available on all major OS!

# Comparison
To show some differences between the default LaTeX beamer
theme and the pure minimalistic beamer theme
(inspired by the [auriga beamer theme](https://github.com/anishathalye/auriga)):

## Dark mode
On the [left](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/comparison_dark.png)
is the pure minimalistic theme in dark mode,
and on the [right](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/comparison_dark.png) is the default beamer theme.
![comparison-dark](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/comparison_dark.png)

## Light mode
On the [left](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/comparison_light.png) is the pure minimalistic theme in light mode,
and on the [right](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/comparison_light.png) is the default beamer theme.

![comparison-light](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/comparison_light.png)

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

# Multi-language support
The beamer theme allows users to choose their favorite _LaTeX engine_.
As a result, the theme does not even try to enforce any hard
requirements.

The user should set the correct language and font settings, not
the theme. The theme comes with preloaded fonts, to allow
most _Latin script-based_ countries to use the theme without any
changes, but is easy to configure for other scripts.

For a quick guide on how to use _non-latin scripts_ and
multiple languages in one document see the
following [multi-language README](https://github.com/kai-tub/latex-beamer-pure-minimalistic/tree/master/multi_lang_examples/README.md).

[Here](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/lang_comparison.png) are some examples for a _right-to-left_ language (Arabic),
a _standard_ non-latin script (Greek) and a language with special
typographical requirements (Japanese):

[![multi-lang-examples](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/lang_comparison.png)](https://github.com/kai-tub/latex-beamer-pure-minimalistic/tree/master/multi_lang_examples/README.md)

# Customize

All options and commands are also described in detail in the
[beamertheme-pure-minimalistic-demo.pdf](https://github.com/kai-tub/latex-beamer-pure-minimalistic/wiki/beamertheme-pure-minimalistic-demo.pdf).

## Customize Logos
By default, the theme expects the logos to be present in a
folder `logos` relative to the `.sty` file with the names:
`header_logo`, `header_logo_darkmode`,
`institute_logo`, and `institute_logo_darkmode`.

But you can easily change the logos used.
There are 3 commands used to define which logos
are used and how they are formatted:
- `\logotitle` – Command used for the title page. Here `\linewidth`
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

![alternative-title-logo](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/alternative_title_logo-00.png)

![alternative-header-footer-logo](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/alternative_header_footer_logo-00.png)

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

![custom-color](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/custom_color-00.png)

## Fonts
The default fonts are the [Fira Fonts](https://bboxtype.com/typefaces/FiraSans/#!layout=specimen).
This decision was inspired by another awesome beamer theme,
the [Focus beamer theme](https://github.com/elauksap/focus-beamertheme).

![fira-fonts](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/fira_font-00.png)

Some dislike the Fira Fonts. As an alternative, this
theme also integrates the *Noto* fonts.

To use the Noto fonts:

```latex
\usetheme[noto, darkmode]{pureminimalistic}
```

![noto-fonts](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/noto_font-00.png)

If you prefer the default fonts _or_ load custom fonts, disable the Fira Fonts with:

```latex
\usetheme[customfont, darkmode]{pureminimalistic}
```

![default-fonts](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/default_font-00.png)

For more information on how to load the custom fonts or
use multiple languages in a document, see the [multi-language README](https://github.com/kai-tub/latex-beamer-pure-minimalistic/tree/master/multi_lang_examples/README.md).

**Important:** By default `beamer` uses _sans-serif_ fonts,
so if you define your own font-settings, be sure to set
sans-serif and not the default font settings!

## Footer options

**Show max slide numbers**

To show the maximum number of slides, enable the
`showmaxslides` option:

```latex
\usetheme[showmaxslides, darkmode]{pureminimalistic}
```

![show-max-slides](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/show_max_slides-00.png)

**Disable footer**

To disable the footer altogether, including the institute image,
set the `nofooter` option:

```latex
\usetheme[nofooter, darkmode]{pureminimalistic}
```

![no-footer](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/no_footer-00.png)

**Replace footer logo with page count**

To remove the footer logo and instead move the page description
to that position use the `nofooterlogo` option:
```latex
\usetheme[nofooterlogo, darkmode]{pureminimalistic}
```

![no-footer-logo](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/no_footer_logo-00.png)

**Customize word for Page in footer**

To change the word _Page_ in the footer, define a different word with:
```latex
\renewcommand{\pageword}{Seite}
```

![custom-page-word](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/custom_page_word-00.png)

# Extras
This theme also provides a new environment `vfilleditems`.
It automatically inserts space between items, depending
on the remaining space. Use it with:

```latex
\begin{vfilleditems}
  \item My first point
  \item My second point
  \item My third point
\end{vfilleditems}
```

![vfilleditems](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/vfilleditems-00.png)

# Release status
The next steps and thoughts about the upcoming release
with possible features can be seen on the [project
page](https://github.com/kai-tub/latex-beamer-pure-minimalistic/projects/1).

# License
This software is released under the GNU GPL v3.0
[License](LICENSE).

# Contributing
Please see the [contribution guidelines](CONTRIBUTING.md) for more information.

As always, PRs are welcome. :)

# Contact
If you have any comments or suggestions, please
use the [*Discussion forum*](https://github.com/kai-tub/latex-beamer-pure-minimalistic/discussions).
If you experience any issues, open an [*issue*](https://github.com/kai-tub/latex-beamer-pure-minimalistic/issues) with the
appropriate issue template.
I will try my best to help as much as I can. :)

# Other great beamer themes
If you want to check out other awesome LaTeX beamer themes take a look
at the [ultimate-beamer-theme-list](https://github.com/martinbjeldbak/ultimate-beamer-theme-list) by [Martin Bjeldbak Madsen](https://github.com/martinbjeldbak)!
