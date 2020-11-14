# Short multi-language Guide
This is a quick guide on how to _correctly_ use multiple
languages in a single document, or how to use non-latin scripts:

![multi-lang-examples](https://raw.githubusercontent.com/wiki/kai-tub/latex-beamer-pure-minimalistic/multi_lang_examples/lang_comparison.png)

In both cases, I **highly** recommend using a `UTF-8` based
engine, such as [_LuaLateX_](http://www.luatex.org/) or [_XeTeX_](https://ctan.org/pkg/xetex). I develop and test the beamer-theme
with _LuaLaTeX_, as it has better support for
_special_ languages such as [Japanese](https://www.ctan.org/pkg/luatexja) and [right-to-left written
languages](https://en.wikibooks.org/wiki/LaTeX/Internationalization).
As a result, I suggest _LuaLaTeX_ over _XeTeX_.

For a more detailed discussion for why a `UTF-8`-based engine is necessary in the first place, see the introductory discussion
on [Overleaf](https://www.overleaf.com/learn/latex/Articles/Unicode,_UTF-8_and_multilingual_text:_An_introduction).

If you chose LuaLaTeX or XeTeX, the next step is to decide on the
language package. Here, I _highly_ recommend to use the
`babel` package over the `polyglossia` package.

The `babel` package allows to easily switch to the correct font
if a different script is encountered and automatically 
makes many typographical adjustments.
These typographical adjustments are especially important for
_right-to-left_ written languages.
For a full tutorial see the [Overleaf](https://de.overleaf.com/learn/latex/Multilingual_typesetting_on_Overleaf_using_babel_and_fontspec) tutorial, or the [babel guide](https://ctan.org/pkg/babel).


Some notable points:
- Beamer uses `sans serif` fonts as the default font!
  - Sans serif fonts are easier to read and should be used
  - As a result, we need to set the fonts with `\babelfont{sf}{...}`
- Custom fonts should be installed system-wide
  - The example files use local versions so that the files can be
  compiled in the CI/CD pipeline
  - Check out the example files to see how local fonts can be used

So let's see how we use the Greek script:

```latex
% Load as usual
\documentclass[aspectratio=169]{beamer}
\usetheme[darkmode, showmaxslides]{pureminimalistic}

% Load babel instead of polyglossia
\usepackage{babel}
% Define the main language to greek
% By default typographical adjustments according
% to the greek language are used
\babelprovide[import, main]{greek}
% Import english as a second language
\babelprovide[import]{english}
% \babelfont automatically loads fontspec package!
% For the greek language (here our default language)
% we set the font to Noto Sans 
% Make sure to install the fonts system-wide!
\babelfont[greek]{sf}{Noto Sans}
% For the english language we set the font to
% Fira Sans
\babelfont[english]{sf}{Fira Sans}

\begin{document}

\begin{frame}{Σύγκριση}
  Γεια πως εισαι?
{
  % Use english defaults for typographical adjustments
  % and Fira Sans Fonts!
  \selectlanguage{english}
  Short example with a different language
}
\end{frame}
\end{document}
```

To support a right-to-left language, we only need to
change two lines!
```latex
\usepackage[bidi=basic]{babel}
\babelprovide[main, import]{arabic}
```
So by default, the Arabic typographical settings are used.
This will also affect the theme to automatically set the
title and logos from right-to-left!

For Japanese, I recommend using the `luatexja-fontspec` package.
See the [example file](japan_example.lua.tex) for a basic usage.