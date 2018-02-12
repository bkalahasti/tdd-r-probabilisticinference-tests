
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
# Filename: TwoSampleMean-Inference-TwoSampleTAndWilcoxonTests.r
# Assumption: 
# - Normal Distribution is assumed for the two Populations. 
# This R code creates code for the following purposes:
# - Inference for two Sample Mean. 
############################################################################### 


# Library packages to be used
library(ISwR)

# Load the Dataset energy in a Dataframe.
data(energy)
attach(energy)

# Apply a 2-sample t-test for the difference in Population Means. 
# This is Welch's 2-Sample T-Test. 
ttest = t.test(expend~stature)
message("p-value: ", ttest[["p.value"]])
if (ttest[["p.value"]] < 0.05) 
{
  message("Null Hypothesis is rejected: Difference in Population Means is not Zero")
} else 
{
  message("Null Hypothesis is not rejected: Difference in Population Means is Zero")
}

# Apply a 2-sample Wilcoxon-test for the difference in Population Means. 
# This is Wilcoxon's 2-Sample Non-Matched-Pairs Signed-Rank Test. 
wtest = wilcox.test(expend~stature)
message("p-value: ", wtest[["p.value"]])
if (wtest[["p.value"]] < 0.05) 
{
  message("Null Hypothesis is rejected: Difference in Population Means is not Zero")
} else 
{
  message("Null Hypothesis is not rejected: Difference in Population Means is Zero")
}

