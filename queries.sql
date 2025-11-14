/* Email addresses of all participants whose paper(s) have been accepted (avg review score >=7) */
SELECT DISTINCT Participant_Email
FROM participant
INNER JOIN
submits
ON participant.Participant_ID = submits.Participant_ID
WHERE Paper_ID IN (SELECT Paper_ID
  FROM reviewed_by
  GROUP BY Paper_ID
  HAVING AVG(Review_Score)>=7);


/* Sponsor summary across tiers (#sponsors, net earnings, average earning per sponsor) */
SELECT
  Sponsor_Tier,
  COUNT(Sponsor_Company AS Num_of_Sponsors,
  SUM(Sponsor_Amount) AS Net_Earnings,
  ROUND(AVG(Sponsor_Amount),2) AS Age_Earnings
FROM sponsor
GROUP BY Sponsor_Tier;
