# Contributing to the pure minimalistic LaTeX-Beamer theme
This is a community effort, and everyone is welcome to contribute!

If you are interested in contributing, there are many ways to help out:
1. It helps us very much if you could
   - Report issues you're facing
   - Give a :+1: on issues that others reported and that are relevant to you
   - Spread the word about the project or simply :star: to say "I use it!"
2. You would like to improve the documentation. This is no less important than improving the theme itself!
If you find a typo in the documentation, do not hesitate to submit a GitHub pull request.
3. You would like to propose a new feature and implement it
   - Choose the according issue template and fill out the required information. Once we agree that the plan looks good,
   go ahead and implement it.

## PR guide
If you implemented a new feature, which uses a new option argument, you are likely required to change the tests.
Don't worry it is very easy to integrate the test. Simply open the [generate_all_options.py](tests/generate_all_options.py) and
add the new option with a descriptive name to the `OPTIONS` dictionary. What will happen in your PR now is that the 
[template document](tests/template.tex) will be compiled once with all options. This ensures that there are no other
breaking changes to other options. To speed up the tests, a minimal `texlive` distribution is used. If your changes
require new packages, they have to be added to the [workflow file](.github/workflows/main.yml).
(This may change in the future)
If anything is unclear, feel free to start the PR and mention the part that is hard to understand. I am happy to help. :)

If everything is OK, and all the tests are passing for the PR, I will reproduce and inspect the new feature locally,
as the automatic tests are rather *simple*. 

If you are not familiar with creating a Pull Requeest, here are some guides:
- http://stackoverflow.com/questions/14680711/how-to-do-a-github-pull-request
- https://help.github.com/articles/creating-a-pull-request/

Afterwards you will be added to the list of contributers.

Thanks for your hard work and for sticking around until the end of the guide! :tada::tada::tada: