🏏 IPL 2025 Batters Analysis — SQL Project

📌 About the Project 

This project performs an in-depth analysis of IPL 2025 batting statistics using SQL.
The goal is to extract meaningful insights about individual player performance, team batting
strength, and key batting patterns using real match data.
This project covers 20 SQL queries ranging from basic aggregations to advanced window
functions and correlated subqueries — reflecting real-world data analysis practices.

📂 Dataset

Column                  -                     Description 

Player Name             -                  Name of the batter 

Team                    -                     IPL franchise 

Total Runs              -               Runs scored in IPL 2025 

Matches                 -                  Total matches played 

Innings                 -                  Total innings batted 

Batting Position        -                Position at which batter played 

Highest Score           -                  Best individual score 

Average                 -                    Batting average 

Balls Faced             -                   Total balls faced 

Strike Rate             -                 Runs scored per 100 balls 

100s                    -                  Total centuries scored 

50s                     -                   Total fifties scored 

4s                      -                   Total fours hit 

6s                      -                   Total sixes hit 


🛠️ Tools Used

MySQL — querying and analysis 

Excel — data collection and cleaning 

GitHub — version control and portfolio 


🎯 Key Findings


Insight              -                            Finding

🥇 Top Run Scorer         -              Sai Sudarshan (GT) — 759 runs 

🥈 Second Highest           -           Suryakumar Yadav (MI) — 717 runs 

⚡ Most Explosive Batter     -          Naman Dhir (MI) — SR of 182 (min 15 matches) 

🛡️ Most Consistent Player     -         Suryakumar Yadav (MI) — highest avg + most matches 

🏏 Best Team Batting           -         Punjab Kings (PBKS) — 2996 combined runs 

📊 Best Batting Position        -        Position 1 (Openers) — highest total runs 

🎯 Best 50 to 100 Conversion     -        Klaasen, Suryavanshi, Ishan Kishan — 50% rate 

👑 Most Team Dependent            -       GT on Sai Sudarshan — 27.47% of team runs 

⚖️ Most Balanced Team              -      CSK — top scorer contributed only 15.53% 

🌟 Most Aggressive Team             -     GT — highest avg team strike rate of 148 




📋 Questions Covered


🟢 Basic Analysis

- Top scorers

- Strike rate analysis

- Team batting performance

🟡 Intermediate Analysis

- Above-average performers

- Team-wise rankings

- Conversion rate analysis

🔴 Advanced Analysis

- Window functions

- Positional comparisons

- Player classification

- Team contribution analysis

🧠 SQL Concepts Used

GROUP BY and Aggregations (SUM, AVG, MAX, COUNT)

WHERE clause with multiple conditions

Subqueries and Nested Subqueries

Correlated Subqueries

Window Functions (RANK, SUM OVER, AVG OVER, PARTITION BY)

CASE Statements for player classification

CONCAT for formatted output

Data cleaning with NULLIF to avoid divide by zero

Filtering with minimum criteria to remove statistical outliers




💡 Interesting Observations

SKY appears twice in top findings — second highest scorer AND most consistent player,
making him the undisputed MVP of IPL 2025 batting

GT had the strongest top 3 — Sudarshan (759), Gill (650) and Buttler (538) all crossed
500 runs, the only team with 3 batters above 500

PBKS had the best depth — all top 5 batters crossed 350 runs, explaining their
record combined team total

Ravindra Jadeja appeared as CSK's second highest scorer — a bowler outscoring all
specialist CSK batters

8 out of 10 teams were led by Indian batters, reflecting the dominance of Indian
talent in IPL 2025

📸 Query Results

All 20 SQL query outputs have been documented with screenshots for easy verification.

View all results here- query_results


📁 Repository Structure

IPL-2025-Batters-Analysis/


├── README.md              - Project documentation

├── IPL2025Batters.csv      -   Raw dataset

└── IPL_ANALYSIS.sql     - All 20 SQL queries with insights

└── query_results/      - Screenshots of all query outputs

👨‍💻 Author

Harshit Pandey

BIT Mesra | Biotechnology Branch | 1st Year























