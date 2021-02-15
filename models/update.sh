#!bin/bash

# update constant baseline model
Rscript models/constant-baseline/update-constant-baseline.R

# update rt deaths forecast
# bash models/rt/update.sh

# update deaths as a convolution of cases model
# bash models/deaths-conv-cases/update.sh

# update timeseries model
# bash models/timeseries/update.sh

# update aggregation of all models (for ensembling)
Rscript models/aggregate-for-submission.R