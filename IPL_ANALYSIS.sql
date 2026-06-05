
create database ipl;
use ipl;

-- QUESTION_1-TOP RUN SCORER AMONG ALL BATTERS 2025.

SELECT PLAYER_NAME ,RUNS
 FROM BATTERS
ORDER BY RUNS DESC  LIMIT 1 ;

-- RESULT- SAI SUDARSHAN WITH 759 RUNS

/*  Insight:  Sai Sudarshan of Gujarat Titans with 759 runs emerged as the 
			  highest run scorer of IPL 2025, cementing his 
		      reputation as one of India's most promising 
			  young batting talents           */



-- QUESTION_2-WHICH TEAM PLAYER SCORED MOST RUNS.

SELECT TEAM , PLAYER_NAME,RUNS
 FROM BATTERS
ORDER BY RUNS DESC LIMIT 1;

-- RESULT- SAI SUDHARSAN OF GUJRAT TITANS .

/* INSIGHT : Gujarat Titans dominated the run charts in IPL 2025,
             with their star batter Sai Sudarshan scoring the 
             most runs among all team players in the tournament */



-- QUESTION_3. WHO HAS THE HIGHEST STRIKE RATE.(minimum 15 matches to be valid)

SELECT * FROM BATTERS
where matches>=15
order by SR DESC LIMIT 1;

-- RESULT-  Naman Dhir (MI) with strike rate of 182 in 16 matches 


/*  INSIGHT : Naman Dhir of Mumbai Indians emerged as the 
              most explosive batter in IPL 2025 with a 
			  stunning strike rate of 182, among all batters 
              who played a minimum of 15 matches
              A strike rate of 182 means Naman Dhir scored 
              almost 2 runs every single ball he faced  
              making him one of the most destructive finishers 
              in the tournament */
              


-- QUESTION_4. WHICH BATTING POSITION SCORES MOST RUNS .

SELECT NO, MAX(RUNS)  
FROM BATTERS
GROUP BY  NO 
ORDER BY MAX(RUNS) DESC  LIMIT 1 ;

-- RESULT- Position 1 (Openers) scored most runs.

/* INSIGHT -   Batters opening the innings (Position 1) scored 
               the most runs in IPL 2025, confirming that 
               openers face the maximum balls and have the 
               greatest opportunity to accumulate runs 
               throughout the innings */


-- QUESTION_5. MOST CONSISTENT PLAYER ? [CRITERIA: HIGH AVERAGE + MANY MATCHES PLAYED]

SELECT PLAYER_NAME , AVG+INN  
FROM BATTERS
ORDER BY (AVG+INN) DESC  LIMIT 1;

-- RESULT- SURYAKUMAR YADAV

/*  INSIGHT : SKY's high average across maximum 
              matches proves he is the most reliable 
			  match winner of IPL 2025    */






-- QUESTION_6. Find average strike rate of all batters teamwise .

SELECT TEAM , AVG(SR) 
FROM BATTERS
GROUP BY TEAM ;

-- RESULT- GT highest avg strike rate (148), CSK lowest (130).

/* INSIGHT- Gujarat Titans played the most 
            aggressive brand of cricket in IPL 2025 
            while CSK preferred a calculated and 
		    steady approach both styles reflecting 
            each team's overall batting philosophy  */

 
 






-- QUESTION_7. Which team has the most combined runs across all batters?

SELECT TEAM , SUM(RUNS) 
FROM BATTERS
GROUP BY TEAM 
ORDER BY SUM(RUNS) DESC 
LIMIT 1;

-- RESULT - Punjab Kings (PBKS) with 2996 combined runs
 
 
/* INSIGHT- Punjab Kings (PBKS) dominated the team run 
            charts in IPL 2025, accumulating a massive 
            2996 combined runs across all their batters 
            proving they possessed the most destructive 
            and deep batting lineup in the tournament
            This finding suggests PBKS had excellent 
            batting depth in IPL 2025  from openers 
			to finishers, every position contributed 
            to their massive run tally, making them 
            extremely difficult to restrict  */
            
            
            
-- QUESTION_8. Find batters who have more 6s than 4s — who are they?( WHO ATLEAST PLAYED 10 MATCHES)

SELECT PLAYER_NAME,TEAM,6S ,4S , MATCHES
 FROM BATTERS
WHERE 6S>4S AND MATCHES>10
ORDER BY 6S DESC ;

-- RESULT- Aniket Verma (SRH) leads with 20 sixes more than his total fours.

/* INSIGHT - Batters with more sixes than fours are rare and represent the league most
             explosive hitters. Their scoring pattern indicates a strong preference for maximizing
             runs per shot, making them key contributors in the middle and death overs. */
             
             



-- QUESTION_9. Find all batters who scored more runs than the average runs of all batters.

SELECT PLAYER_NAME,RUNS
FROM BATTERS 
WHERE RUNS>(SELECT AVG(RUNS )  FROM BATTERS);





/* INSIGHT - Only a selected group of batters managed to 
			surpass the tournament average in IPL 2025, 
			with Sai Sudarshan, Suryakumar Yadav, 
            Virat Kohli and Shubman Gill leading the 
            above average run scorers list representing 
            the true elite of IPL 2025 batting .
            Batters scoring above the tournament average 
			represent the top performers of IPL 2025 
            these players not only contributed heavily 
            to their team's success but also raised 
            the overall batting standard of the tournament . */










-- QUESTION_10. Find the batter(s) with the second-highest run total.

SELECT PLAYER_NAME, RUNS 
FROM BATTERS 
WHERE RUNS<(SELECT MAX(RUNS) FROM BATTERS)
ORDER BY RUNS DESC LIMIT 1;

-- RESULT- SURYAKUMAR YADAV WITH 717 RUNS.


/* INSIGHT - Suryakumar Yadav secured the second position 
             in the run charts of IPL 2025 with an 
             impressive 717 runs  proving that his 
             consistency and aggressive batting style 
             made him the second most  run scorer
             of the tournament . This result was derived 
             using a subquery that first identifies  the maximum 
             runs and then fetched the next highest total  a 
             technique commonly used in real world 
             data analysis to find rankings without 
             using direct LIMIT clauses.     */
             
             



-- QUESTION _11. Find the highest run scorer from each team.

SELECT PLAYER_NAME,TEAM, RUNS 
FROM BATTERS
WHERE RUNS IN (SELECT MAX(RUNS) FROM BATTERS
				GROUP BY TEAM);
                

-- RESULT- GT   - Sai Sudarshan
-- MI   - Suryakumar Yadav
-- RCB  - Virat Kohli
-- LSG  - Mitchell Marsh
-- PBKS - Shreyas Iyer
-- RR   - Yashasvi Jaiswal
-- DC   - KL Rahul
-- SRH  - Heinrich Klaasen
-- KKR  - Ajinkya Rahane
-- CSK  - Shivam Dube 


/* INSIGHT:  8 out of 10 teams were led by 
            Indian batters reflecting the dominance 
            of Indian talent in IPL 2025 with only 
            LSG (Mitchell Marsh) and SRH (Klaasen) 
            depending on overseas stars to lead 
            their run charts. */
                
                
                


-- QUESTION_12.Find the player with the highest strike rate in each team (minimum 200 balls faced).

SELECT PLAYER_NAME, TEAM ,SR 
FROM BATTERS
WHERE  SR IN (SELECT MAX(SR) FROM BATTERS
               WHERE BF>= 200 
                GROUP BY TEAM);
                

-- RESULT-  LSG  - Nicholas Pooran    (196.25)
-- SRH  - Abhishek Sharma    (193.39)
-- PBKS - Priyansh Arya      (179.24)
-- RCB  - Phil Salt          (175.98)
-- MI   - Suryakumar Yadav   (167.91)
-- GT   - Jos Buttler        (163.03)
-- RR   - Riyan Parag        (166.52)
-- DC   - KL Rahul           (149.72)
-- KKR  - Ajinkya Rahane     (147.72)
-- CSK  - Ravindra Jadeja    (135.58)    

/* INSIGHT - Nicholas Pooran (LSG) was the most 
             explosive genuine batter with 196.25 strike 
             rate while Ravindra Jadeja (CSK) had lowest 
             at 135.58  reflecting CSK's conservative 
             batting approach compared to LSG's 
			 aggressive philosophy       */    
                

-- QUESTION_13.Which player converts fifties into centuries best?

SELECT PLAYER_NAME, 100S,50S ,concat ((round(100S/(100S+50S),2))*100,'%') AS CONVERSION_RATE
 FROM BATTERS
WHERE 100S<>0 AND 50S<>0
ORDER BY CONVERSION_RATE DESC;


/* INSIGHT- Heinrich Klaasen, Vaibhav Suryavanshi and 
            Ishan Kishan shared the best fifty to century 
            conversion rate of 50% in IPL 2025 each 
            scoring 1 century and 1 fifty, meaning every 
            alternate fifty they scored was converted 
            into a match winning century.A conversion rate of 50% means 
             that whenever these three batters reached the fifty mark, 
             they had a 1 in 2 chance of going on to score 
			a century  reflecting exceptional mental 
			strength, concentration and big match 
			temperament.    */ 
            
          


-- Question_14. Identify the top 5 players who scored most runs in each team  .


select * from ( select player_name, runs , team ,
 rank() over (partition by team 
order by runs desc) as 
rank_in_team from batters ) 
as p
where rank_in_team<=5 ;


/* INSIGHT-  GT had the most dominant top 3 
             with Sudarshan, Gill and Buttler all 
			 crossing 500 runs while PBKS showed 
             best overall depth with all 5 batters 
             crossing 350 runs  explaining why PBKS 
             accumulated highest combined team runs. 
             DC showed dangerous one man dependency 
             on KL Rahul who almost doubled the runs 
             of their second placed batter          */





-- Question_15.Find players who have hit more sixes than the average number of sixes in their team.

select * from 
(select player_name, team,6s,
round(avg(6s) over (partition by team ) ,2)
as AVG  from batters ) as p

where 6s>avg ; 



/* INSIGHT - Players who hit more sixes than 
             their team average are the true power 
			 hitters of each franchise these batters 
             single handedly elevate their team's 
             six hitting ability making them the most 
             destructive match winners in IPL 2025 */
             
             
             
-- QUESTION_16. Find players whose average is higher than the average of all players batting at the same position.             
             
             
SELECT * FROM (SELECT PLAYER_NAME ,AVG,NO,
RANK() OVER(PARTITION BY NO
ORDER BY AVG DESC
 ) AS RNK FROM BATTERS ) AS W
WHERE RNK=1;

-- RESULT-  Pos 0 - Mitchell Marsh      (avg 48.23)
-- Pos 1 - Sai Sudarshan       (avg 54.21)
-- Pos 2 - Shubman Gill        (avg 50.00)
-- Pos 3 - Virat Kohli         (avg 54.75)
-- Pos 4 - Jos Buttler         (avg 59.78)
-- Pos 5 - Suryakumar Yadav    (avg 65.18)
-- Pos 6 - Tim David           (avg 62.33)
-- Pos 7 - Shashank Singh      (avg 50.00)
-- Pos 7 - Tristan Stubbs      (avg 50.00)

/* INSIGHT- Every batting position has a clear 
            above average performer SKY dominates 
            position 5 with remarkable average of 65.18 
            while Virat Kohli and Jos Buttler prove their 
            class at positions 3 and 4 respectively  
            these players consistently outperform their 
            positional peers making them the most 
            valuable batters for their teams. */
            
            
            
-- QUESTION_17. FIND STAR PLAYERS WHERE IF [Runs >= 500 AND SR >= 150] THEN STAR PLAYER .           
            
            
SELECT PLAYER_NAME ,RUNS,SR,CASE 
WHEN RUNS>=500 AND SR>=150 THEN 'STAR PLAYER'
WHEN RUNS>=500 THEN 'CONSISTENT'
WHEN SR>=150 THEN 'EXPLOSIVE'
ELSE 'AVERAGE'
END AS CATEGORY
FROM BATTERS;  


/* INSIGHT-  This CASE classification reveals 
             that true STAR PLAYERS are rare in IPL 2025 
             only batters who combined both volume 
             (500+ runs) AND aggression (150+ SR) earned 
             this elite tag proving that consistency 
             and explosiveness together is the rarest 
			 and most valuable combination in T20 cricket . */
             

            

-- QUESTION_18. Identify players as Boundary Dependent or Balanced.

SELECT PLAYER_NAME,RUNS,6S,4S,(6S*6)+(4S*4) AS BOUNDARY_RUNS,
CONCAT(((6S*6)+(4S*4))*100/RUNS ,'%')AS BOUNDARY_PERCENTAGE,
CASE 
WHEN ((6S*6)+(4S*4))*100/RUNS >60 THEN 'DEPENDENT'
WHEN ((6S*6)+(4S*4))*100/RUNS>40 THEN 'BALANCED'
ELSE 'Accumulator'
END AS BOUNDARY_DEPENDENCY
FROM BATTERS 
WHERE MATCHES>15

ORDER BY BOUNDARY_PERCENTAGE DESC;


/* INSIGHT- This analysis classifies batters 
            by how heavily they rely on boundaries 
            DEPENDENT batters score 60%+ runs through 
            boundaries making them high risk high reward 
            players while BALANCED batters mix boundaries 
            with running between wickets showing better 
            all round batting ability. */
            
            
            
-- QUESTION_19.Which player contributes the highest and how much percentage of his team's runs?

SELECT * FROM (SELECT PLAYER_NAME,RUNS,TEAM,
SUM(RUNS) OVER(PARTITION  BY TEAM
) AS TEAM_RUNS,
CONCAT( RUNS*100/SUM(RUNS) OVER(PARTITION  BY TEAM),'%') AS PERCENTAGE_RUNS,
 rank() over (partition by team 
 order by runs desc) as rnk
  FROM BATTERS
ORDER BY RUNS*100/SUM(RUNS) OVER(PARTITION  BY TEAM) DESC) AS W
where rnk=1;


-- Result:
-- GT   - Sai Sudarshan  (759 runs  | 27.47%)
-- RCB  - Virat Kohli    (657 runs  | 25.88%)
-- MI   - SKY            (717 runs  | 25.68%)
-- LSG  - Mitchell Marsh (627 runs  | 24.18%)
-- DC   - KL Rahul       (539 runs  | 22.69%)
-- RR   - Jaiswal        (559 runs  | 22.58%)
-- KKR  - Ajinkya Rahane (390 runs  | 20.71%)
-- SRH  - H Klaasen      (487 runs  | 20.48%)
-- PBKS - Shreyas Iyer   (604 runs  | 20.16%)
-- CSK  - Shivam Dube    (357 runs  | 15.53%)


/* INSIGHT-Sai Sudarshan contributed the 
           highest percentage of team runs (27.47%) 
           making GT most dependent on one player 
           while CSK Shivam Dube contributed only 
		  15.53% proving CSK had the most balanced 
          batting lineup where no single player 
          dominated the run charts. */
          
          
          
 -- QUESTION_20.Find the second-highest run scorer in each team.
 
 SELECT * FROM (SELECT PLAYER_NAME,RUNS,TEAM,
 RANK() OVER(PARTITION BY TEAM ORDER BY RUNS DESC)
 AS RANK_IN_TEAM FROM BATTERS)
 AS W
 WHERE RANK_IN_TEAM=2
 ORDER BY RUNS DESC;
 
 
 -- Result:
-- GT   - Shubman Gill           (650 runs)
-- PBKS - Prabhsimran Singh      (549 runs)
-- LSG  - Nicholas Pooran        (524 runs)
-- SRH  - Abhishek Sharma        (439 runs)
-- MI   - Rohit Sharma           (418 runs)
-- RCB  - Phil Salt              (403 runs)
-- RR   - Riyan Parag            (393 runs)
-- CSK  - Ravindra Jadeja        (301 runs)
-- DC   - Abishek Porel          (301 runs)
-- KKR  - Angkrish Raghuvanshi   (300 runs)

/* INSIGHT-GT second highest scorer Shubman 
		  Gill (650) scored more than the TOP scorer 
          of CSK, DC and KKR proving GT had the 
          most powerful batting lineup in IPL 2025. 
          Remarkably Ravindra Jadeja appearing as 
          CSK second highest scorer confirms that 
          CSK heavily relied on their allrounders 
          rather than specialist batters. */
 








 

  
 
 


           

                
                
	
    
 
 






 











             
             





            
            





















