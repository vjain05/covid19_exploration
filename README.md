We're doing a bit of open ended exploration of the coronavirus data provided by the New York Times. (https://github.com/nytimes/covid-19-data)

1. We make forecasts on coronavirus cases on US states through reframing the problem in terms of simple OLS regression using a python convex optimization package.

2. Under some assumptions we construct an ordinary differential equation (ODE) and run simulations on different parameters to see different scenarios of how the infection could spread and saturate a given population (and the effects of mitigation measures on infection). 

TODO:

-parameter estimation of ODE to fit current data.

Contents are in the jupyter notebook COVID-19_explore_20200328.ipynb


