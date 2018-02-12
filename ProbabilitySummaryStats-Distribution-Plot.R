
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
# Filename: ProbabilitySummaryStats-Distribution-Plot.r
# This R code creates code for the following purposes:
# - Random Sampling;
# - Density Probability Function Plot;
# - Point Probability Plot;
# - Summary Statistics for a Sequence. 
############################################################################### 

# Library packages to be used
library(ISwR)

# Example of Random Sampling and Product of a Sequence.
# sample does Random Sampling Without Replacement. 
sample(1:40,5)
prod(5:1)

# Density Function plot for a Normal Distribution. 
x <- seq(-4,4,0.1)
plot(x,dnorm(x),type="l")
#curve(dnorm(x), from=-4, to=4)

# Point Probability plot for a Binomial Distribution. 
x <- 0:50
plot(x,dbinom(x,size=50,prob=.33),type="h")

# Calculation of summary statistics for a sequence of random Normal Distribution numbers.
# Mean, SD, Variance, Median and Quantiles are calculated. 
# Summary function is also called. 
x <- rnorm(50)
mean(x)
sd(x)
var(x)
median(x)
quantile(x)
summary(x) 

# Histogram plot of x. 
hist(x) 
#hist(x, freq=F)

# Q-Q Plot of x. 
qqnorm(x) 

# Boxplot of x.
par(mfrow=c(1,2))
boxplot(x) 





