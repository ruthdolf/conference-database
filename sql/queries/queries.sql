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
