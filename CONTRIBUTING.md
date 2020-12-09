# Contributing to the pure minimalistic LaTeX-Beamer theme
This project is a community effort, and everyone is welcome to contribute!

If you are interested in contributing, there are many ways to help out:
1. It helps us very much if you could
   - Report issues you're facing
   - Give a :+1: on issues that others reported and that are relevant to you
   - Spread the word about the project or simply :star: to say "I use it!"
1. You would like to improve the documentation. Improving the documentation is no less important than improving the theme itself!
If you find a typo in the documentation, do not hesitate to submit a GitHub pull request.
1. You would like to propose a new feature and implement it
   - Open a [discussion](https://github.com/kai-tub/latex-beamer-pure-minimalistic/discussions?discussions_q=category%3AIdeas) and tell us about your goal and a rough sketch on how you would like to implement it. Once we agree that the plan looks good, feel free to start working on your first *pull request*.
1. You can also help by using the [dicussion](https://github.com/kai-tub/latex-beamer-pure-minimalistic/discussions/64) section:
   - Ask questions, so that others with the same issue can quickly find a solution
   - Show us what you have created to inspire us and other community members
   - Propose enhancements or point out missing features
   - Give us feedback

If you want to, you can also buy us a coffee if you like: 

<a href="https://www.buymeacoffee.com/kaitub" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/arial-blue.png" alt="Buy Me A Coffee" width="162px" height="40px"/></a>

## PR guide
If you implemented a new feature, you should add a new minimal example
in the [minimal_examples](./minimal_examples/) folder.
Then the [beamertheme-pure-minimalistic-demo.tex](beamertheme-pure-minimalistic-demo.tex) file should be modified to explain
how the option should be used and what the effect is.

In every PR, all minimal examples will be compiled automatically. 
This compilation step ensures 
that there are no other
breaking changes to other options. 
<!-- To speed up the tests, a minimal `texlive` distribution is used.  -->
A minimal `texlive` distribution is used to speed up the tests.
If your changes
require new packages, they have to be added to the 
[build file](.github/workflows/build.yml).

If anything is unclear, feel free to start the PR and mention the part that is hard to understand. I am happy to help. :)

If everything is OK, and all the tests are passing for the PR, I will reproduce and inspect the new feature locally,
as the automatic checks are rather *simple*. 

If you are not familiar with creating a Pull Request, here are some guides:
- http://stackoverflow.com/questions/14680711/how-to-do-a-github-pull-request
- https://help.github.com/articles/creating-a-pull-request/

Afterwards, you will be added to the list of contributors.

Thanks for your hard work and for sticking around until 
the end of the guide! :tada::tada::tada:
