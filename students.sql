SELECT Students.name, Students.value, Notes.grade FROM
Students JOIN
(
      SELECT Name, Value, Grade FROM Notes
      GROUP BY  Name
)  Notes
On Notes.Grade = Students.Value/10 + 1
AND Student.Value >= 70
ORDER BY Students.Value, Students.Name
SELECT Students.name, Students.value, Notes.grade FROM
Students JOIN
(
      SELECT Name, Value, Grade FROM Notes
      GROUP BY  Name
)  Notes
On Notes.Grade = Students.Value/10 + 1
AND Student.Name = "NULL"
AND Student.Value <= 70
ORDER BY Students.Value
