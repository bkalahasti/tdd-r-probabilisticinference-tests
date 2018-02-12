
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
# Filename: TwoSampleVariances-Inference-TwoSampleFTest.r
# This R code creates code for the following purposes:
# - Inference for two Sample Variances.
############################################################################### 

# Library packages to be used
library(ISwR)

# Load the Dataset energy in a Dataframe.
data(energy)
attach(energy)

# Apply a 2-sample f-test for the difference in Population Variances.
ftest = var.test(expend~stature)
message("p-value: ", ftest[["p.value"]])
if (ftest[["p.value"]] < 0.05) 
{
  message("Null Hypothesis is rejected: Ratio of Population Variances is not One")
} else 
{
  message("Null Hypothesis is not rejected: Ratio of Population Variances is One")
}

