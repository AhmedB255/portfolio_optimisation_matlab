## Introduction
In this project, we downloaded the adjusted closing prices of the chosen companies from Yahoo Finance for the period from January 1, 2019, to January 1, 2024. With the data, we constructed three portfolios, each following a different model. The first portfolio implemented the Naïve model, where all the assets that we chose have the exact same weight regardless of their size or importance to the investor. The second portfolio follows the Mean-Variance model, where the objective is to maximize returns given a specific level of risk, or minimize risk given a certain level of return. The third portfolio uses the Black-Litterman model, which is an extension of the Mean-Variance model, with the added benefit of incorporating the views of the investment analyst into the portfolio analysis process. For all the models, we calculated the expected returns, covariance matrix, and covariance matrix.
  
## Portfolio Estimates
The expected return of the equally weighted portfolio was 16.746%, and the expected return of the Mean-Variance portfolio was 23%. The Black-Litterman produced a myriad of expected returns, with each return belonging to a single asset in the portfolio. By examining the covariance matrix created, we see that the largest positive covariances are between the same assets. For example, the covariance between JPM and itself is approximately 14.6%, which is also the highest covariance. By examining the correlation matrix, we see that there are several strong positive correlations between different types of assets, suggesting that several assets move in the same direction but not with the same magnitude in response to the price movement of other assets. These anticipated movements were expected, considering that most of the companies chosen were related to technology.
## Data Visualisation
To better visualize the relationship between risk and return, we proceeded with generating an efficient frontier. We created a chart that contains all the assets that we chose and created an efficient frontier of 30 portfolios. We identified where the returns of the Mean-Variance are on the chart and compared them to the position of the returns of Naïve portfolio. As expected, the Mean-Variance portfolio lies on the efficient frontier, signifying it as an optimal portfolio, whilst the Naïve portfolio is not. Additionally, for the mean variance model, we also developed a frontier based on a target expected return of 20%. For the Black-Litterman model, we did not develop an efficient frontier, but we visualized the distribution of weights of the mean-variance model and compared with that of the Black-Litterman model.
## Performance Evaluation
We calculated the Sharpe Ratio and Information Ratio for all three models for the period starting from January 1, 2024 till February 29, 2024. We noticed that they both turned out to be negative for all three models. This was expected as many companies experienced a fall in their share prices due to poor earnings reports that were below what analysts estimated. The most notable companies that experienced share price dips include Tesla and Apple. We also conclude that the strategy needs a larger period of time for proper back testing before it is deployed.
