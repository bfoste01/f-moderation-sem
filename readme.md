# Information

- The following models examines a longitudinal moderation cross-lagged latent panel model. 
- Data are drawn from a large national sample.
	- The specific dataset will not be listed here until the paper is under agreement for publication.  

# File Manifest

- The folder titled 'invariance' contains longitudinal tests to establish factorial invariance. 
- The folder titled weighted contains the longitudinal cross lage

## MPlus Scripts

- All the files for invariance testing are located in the 'invariance' subfolder
	- **Important.** The minimal requirement of weak invariance is needed for these models.
- The 'weighted' folder contains all phases of model testing, specifying the complex survey design in all models. 
- The 'no-weights' folder contains all of the models in the weights folder without specifying the complex survey weights. 
- The 'bayes' folder contains all models to explore the credibility interval, and to explore differences in the speed of model convergence. 
	- **Note.** These models will not allow for complex sample weights. 

## Confirming Parameter Estimates

MPlus tended to yield correct estimates with an error pertaining to the ratio of parameter estimates to clusters in the multilevel data. 

To explore the accuracy of these estimates two additional steps were taken:

1. The models were estimated without weights to see if the parameter estimates were comparable. 
2. The models were estimated with Bayes estimation techniques in order to see the 95% probability that the estimate fell within a range of estimates, and that this was comparable to the other 2 models.
