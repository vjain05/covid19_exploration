We're doing a bit of open ended exploration of the coronavirus data provided by the New York Times. (https://github.com/nytimes/covid-19-data)

1. We make forecasts on coronavirus cases on US states through reframing the problem in terms of simple OLS regression and solving using a python convex optimization package.

2. Under some assumptions we construct an ordinary differential equation (ODE) and run simulations on different parameters to see different scenarios of how the infection could spread and saturate a given population (and the effects of mitigation measures on infection). 

3. We use basic parameter estimation techniques to narrow down the simulations that reflect our data.

4. With each day we create revisions on our data, and revise our models. We track model revisions to see how well stay-at-home measures are working on the states.

TODO:

- automated hyperparameter tuning of parameter penalty.
- run different models such as sigmoid on data.

Contents are in the jupyter notebook COVID-19_explore_20200328.ipynb

us-states.csv contains data up to and including 20200326.
To generate point-in-time snapshots run generate_PIT_data.sh
