# multiz-workflow

This repository is made to help researchers use Multiz

## Overview

### Dockerizing doBlastz
Running a doBlastzChainNet.pl script requires the heavy infrastruture and the infrastructure needs some dependencies and configurations. 

The aim of this project is to abstract away the environment configurations in [this](http://genomewiki.ucsc.edu/index.php/DoBlastzChainNet.pl) and 
just focus on providing the gene samples to be split and compared.

We will create Docker image that contains the environment needed and this image will take each gene and their bank location and this will be processed.

The Docker image when run as a container will return the alignment of the genes compared.

### Popperizing doBlastz

Different computations can be run on Popper. These can be done in different steps in a workflow to ensure the results are reproducible every time it is run.

## Next Steps

* Building the docker images
* processing inputs better by identifying the kind of input passed by users.
* creating sample workflows that enable the experiment work on popper
