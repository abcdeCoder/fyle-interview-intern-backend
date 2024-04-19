-- Write query to get number of graded assignments for each student:
SELECT 
   state, COUNT(*) As total_Assignment
 FROM 
   assignments
 GROUP BY
   state
