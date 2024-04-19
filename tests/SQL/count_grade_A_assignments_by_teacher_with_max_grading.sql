-- Write query to find the number of grade A's given by the teacher who has graded the most assignments

-- Finds Teacher id with max number of Graded assignments
WITH TopGrader AS ( SELECT teacher_id, COUNT(state) as count_of_graded  FROM assignments 
    WHERE state = "GRADED"
    GROUP BY teacher_id 
    ORDER BY count_of_graded DESC 
    LIMIT 1
)


-- Calculates the total number of ‘A’ grade assignments assigned by the teacher who has graded the most assignments, referred to as MAXGRADER
SELECT  COUNT(*)
FROM 
  assignments 
WHERE 
  grade = 'A' AND teacher_id = (
    SELECT teacher_id FROM TopGrader
  )
