
############################################################################### 
# Licensed under the Apache License, Version 2.0 (the "License"); 
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 
# 
#     http://www.apache.org/licenses/LICENSE-2.0 
# 
# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 
############################################################################### 
# Filename: PopulationParameterMean-Inference-SingleSampleWilcoxonTest.r
# This R code creates code for the following purposes:
# - Inference for a Population Parameter.
############################################################################### 

# Library packages to be used
library(ISwR)

# Create a Dataset using a Vector. 
daily.intake <- c(5260,5470,5640,6180,6390,6515,6805,7515,7515,8230,8770)

# Assuming the Dataset comes from a Normal distribution, check if 
# the Distribution might have mean, mu = 7725. 
# Apply a Single Sample t-test. 
ttest <- t.test(daily.intake, mu=7725)
message("p-value: ", ttest[["p.value"]])
if (ttest[["p.value"]] < 0.05) 
{
    message("Null Hypothesis is rejected: mu of Population is not 7725")
} else 
{
    message("Null Hypothesis is not rejected: mu of Population is 7725")
}

# Apply a Single Sample Wilcoxon test. 
wtest <- wilcox.test(daily.intake, mu=7725)
message("p-value: ", wtest[["p.value"]])
if (wtest[["p.value"]] < 0.05) 
{
  message("Null Hypothesis is rejected: mu of Population is not 7725")
} else 
{
  message("Null Hypothesis is not rejected: mu of Population is 7725")
}




