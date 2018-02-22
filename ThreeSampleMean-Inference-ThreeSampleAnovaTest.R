
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
# Filename: ThreeSampleMean-Inference-ThreeSampleAnovaTest.r
# This R code creates code for the following purposes:
# - Inference for three Sample Means.
############################################################################### 

# Library packages to be used
library(ISwR)

# Load the Dataset juul in a Dataframe.
data(juul)
attach(juul)

juul$tanner <- factor(juul$tanner, labels=c("I","II","III","IV","V"))

# Apply a multi-sample ANOVA-test for the difference in Population Means.
atest = anova(lm(igf1~tanner))
message("p-value: ", atest["Pr(>F)"])
if (atest["Pr(>F)"] < 0.05) 
{
  message("Null Hypothesis is rejected: Populations Means are different")
} else 
{
  message("Null Hypothesis is not rejected: Population Means are not different")
}

