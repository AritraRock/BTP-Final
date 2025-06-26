#📈 Advanced Portfolio Suggestion System (BTP - IIT Kharagpur)

A data-driven, risk-aware mutual fund optimization engine that uses **Modern Portfolio Theory (MPT)**, **SARIMAX time-series forecasting**, **clustering**, and **genetic algorithms** to generate personalized investment portfolios based on user-defined risk appetite and return goals.

🎓 Developed as part of my final-year B.Tech thesis at **IIT Kharagpur**, under the guidance of **Prof. Biswajit Mahanty** (Dept. of Industrial and Systems Engineering).

---

## 📌 Project Overview

Traditional portfolio models often fall short in real-world markets due to lack of personalization, predictive modeling, and scalability.

This project bridges that gap by:
- Integrating **time-series forecasting (SARIMA)** with MPT
- Using **clustering (PCA + t-SNE)** to group mutual funds by risk profiles
- Applying a **Genetic Algorithm** to optimize fund selection and weight allocation
- Offering a plug-and-play pipeline to suggest **low, moderate, or high risk** portfolios

---

## 🔍 Features

- 📊 **User-personalized portfolios** (based on target return & risk appetite)
- 🧠 **Two-layer clustering** (based on structure and historical return patterns)
- 🧮 **SARIMAX time series models** for NAV return prediction
- 🧬 **Genetic Algorithm optimization** with constraints
- 🖼️ Visualizations: fund weight allocation, equity-debt split
- ⚖️ Output includes return expectations, volatility, and diversification levels

---

## ⚙️ Methodology

### 🗂️ Data Integration
- 38 features per mutual fund: NAV, AUM, Expense Ratio, Returns, Category, etc.
- Used **fuzzy matching** to add missing scheme codes
- NAV history fetched via `mfapi.in` public API

### 👤 User Inputs
- Number of funds to include
- Forecast date (future date)
- Risk level: Low / Moderate / High

### 🧩 Clustering
- **PCA** on structural features (AUM, expense ratio)
- **t-SNE** on historical return vectors (1M to 10Y)
- Clusters mapped to user-defined risk appetite

### 🔮 Forecasting
- Monthly NAV data modeled using **SARIMA (1,1,1)(1,1,1,12)**
- Returns forecasted based on user-selected future date
- Used forecasted returns (µ) in optimization phase

### 📈 Optimization
- Objective:  
  \[
  \min \left( \lambda_1 \cdot \text{AvgCorrelation} + \lambda_2 \cdot \text{PortfolioVariance} \right)
  \]
- Constraints:
  - Weight sum = 1
  - Selected funds = `n`
  - Minimum expected return ≥ user-defined threshold
- Solved using **PyGAD Genetic Algorithm**

---

## 🔬 Results (Sample Portfolios)

### 🟢 Low Risk Portfolio
- 100% Debt + Arbitrage Funds
- Expected Return: **8.66%**
- Portfolio Variance: **0.898**

### 🟡 Moderate Risk Portfolio
- ~74% Debt, ~26% Equity/Gold
- Expected Return: **22.26%**
- Portfolio Variance: **0.434**

### 🔴 High Risk Portfolio
- 100% Equity Exposure
- Expected Return: **33.97%**
- Portfolio Variance: **0.951**

📊 Each portfolio includes:
- List of selected funds with weights
- Pie chart of weight distribution
- Equity vs Debt breakdown

---

## 🛠️ Tech Stack

| Category | Tools / Libraries |
|---------|--------------------|
| Language | Python |
| ML/Stats | `scikit-learn`, `PyGAD`, `statsmodels` |
| Data | `pandas`, `numpy`, `seaborn`, `matplotlib` |
| Forecasting | `SARIMAX (statsmodels)` |
| API/Data Fetching | `mfapi.in`, `requests` |
| NLP Matching | `thefuzz (FuzzyWuzzy)` |

---

## 🧪 GA Configuration

| Parameter | Value |
|----------|-------|
| Population Size | 300 |
| Selection | Steady-state |
| Crossover | Single-point (0.8 prob) |
| Mutation | Random (0.05 prob) |
| Max Generations | 200 |

---

## 🧠 What I Learned

- Applying MPT practically using real-world data
- Advanced time series modeling (SARIMA vs ARIMA)
- Clustering for investment categorization
- Implementing constrained optimization using GAs
- Financial domain-specific insight into fund management

---

## 🌐 Deployment (Planned)

| Component | Stack |
|----------|-------|
| Frontend | ReactJS (Chart.js for visualizations) |
| Backend | Flask / FastAPI |
| Hosting | Heroku / Vercel / AWS |
| UX | User inputs risk, date → gets optimized portfolio & visualizations |

---

## 📄 Thesis

This project was submitted as a Bachelor’s thesis:
- **Title:** *Advanced Portfolio Suggestion*
- **Institute:** Indian Institute of Technology Kharagpur
- **Department:** Industrial and Systems Engineering
- **Supervisor:** Prof. Biswajit Mahanty

---

## 📬 Contact

> **Aritra Ray**  
> B.Tech – Industrial Engineering  
> IIT Kharagpur (2025)  
> [GitHub](https://github.com/AritraRock) | [LinkedIn](https://linkedin.com/in/aritraray) | [Email](mailto:aritrabts@gmail.com)

---

## 📌 Tags

`#PortfolioOptimization` `#MPT` `#MutualFunds` `#GeneticAlgorithm` `#TimeSeriesForecasting` `#Python` `#IITKGP`

