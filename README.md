# College Basketball Team Performance Analysis

## Overview

This project analyzes **three seasons of NCAA college basketball conference game data** to identify teams with the strongest net changes in offensive and defensive performance. Using game-level data, I engineered team-level features that capture **average changes in points scored and points allowed per game**, then visualized the results to highlight top-performing teams.

Only **conference games** were included to ensure fair comparisons. Non-conference schedules often include mismatches (e.g., top teams hosting significantly weaker opponents), which can heavily skew point differentials. Conference opponents are generally closer in competitive level, making the resulting metrics more meaningful.

The workflow intentionally separates **data engineering** and **visualization**, using Python for data processing and R for exploratory plotting.

---

## Data Collection

* Ingested **three seasons of college basketball game data** from public repositories
* Restricted the dataset to **conference games only**
* Game-level data includes team scores, opponents, and season context
* Data was cleaned and consolidated into a team-level dataset

---

## Feature Engineering

For each team, I engineered:

* **Average change in points scored per game (offense)**
* **Average change in points allowed per game (defense)**
* **Net average point differential**:
  Average Offensive Change - Average Defensive Change

These features measure how a team’s scoring and defensive performance changed on average against conference-level competition.

---

## Visualization

Two plots were created:

1. **All Teams Plot**

   * Displays offensive vs. defensive point differentials for every team
   * Provides a league-wide performance overview

2. **Top Teams Plot**

   * Filters to teams with a **net positive differential ≥ 11 points**
   * Highlights teams with the strongest combined offensive and defensive improvements
   * Reduces visual clutter to focus on meaningful outliers

Plots were created in **R**, with attention to label clarity and interpretability.

---

## Tools & Technologies

* **Python**

  * Data ingestion from public CSV repositories
  * Data cleaning and filtering (conference-only)
  * Feature engineering
* **R**

  * Exploratory data analysis
  * Visualization and annotation
* **Libraries**

  * Python: `pandas`, `numpy`
  * R: base R plotting, `ggplot2`, `ggrepel`

---

## Key Takeaways

* Restricting analysis to **conference games** produces more comparable and realistic team evaluations
* Team-level feature engineering reveals performance trends not obvious from raw game data
* Filtering by net differential effectively surfaces high-impact teams
* Both historically strong and weak programs appear among teams with large positive net differentials, suggesting that home advantage / away disadvantage does not strongly correlate with overall team success
* The engineered metric captures how sensitive a team is to home vs. away environments, but does not distinguish whether this effect is driven by exceptional home performance, poor away performance, or a combination of both

---

## Future Improvements

* Incorporate opponent strength within conferences
* Extend analysis to predictive modeling
* Add interactive visualizations
