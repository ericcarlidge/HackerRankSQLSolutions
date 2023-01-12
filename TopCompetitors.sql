SELECT Submissions.hacker_id, Hackers.name
FROM Submissions
JOIN Hackers ON Submissions.hacker_id = Hackers.hacker_id
JOIN Challenges ON Submissions.challenge_id = Challenges.challenge_id
JOIN Difficulty ON Difficulty.difficulty_level = Challenges.difficulty_level
WHERE Submissions.score = Difficulty.score
GROUP BY Submissions.hacker_id, Hackers.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, 1;
