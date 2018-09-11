# Poststratified-estimator
this is a realization of method in the paper "Good practices for estimating area and assessing accuracy of land change" by
Pontus Olofsson a,⁎, Giles M. Foody b, Martin Herold c, Stephen V. Stehman d,
Curtis E.Woodcock a, Michael A. Wulder e

#Conditions
this method is based on the errormatrix calculated from samples. 
Attention: sample design must be random sampling, stratified sampling or systematic sampling

#INPUT
errormatrix
wi:the proprotion of area mapped as class i
num:the total numbers of pixels in classified image

#OUTPUT
OA: oa ,95% confidence intervals of oa, the estimated variance of oa
PA: pa ,95% confidence intervals of pa, the estimated variance of pa
UA: ua ,95% confidence intervals of ua, the estimated variance of ua
