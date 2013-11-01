# Wesson
> There are only two hard things in Computer Science: cache invalidation and naming things.
>
> -- Phil Karlton

Wesson aims to solve the second problem by using Markov chains to help suggest some
suitable project names based on an input file. In fact, this project named itself.

## Requirements
* Algorithm::MarkovChain
* File::Stream

## TODO
1. Create install script
2. Implement filters
 1. Github filter to check for naming conflicts against other projects
 2. Machine learning to check generated results against a trained set of preferred names
3. Add options (min/max length, etc)
