-- Write your query below

select e.student_id,
        MIN(e.exam_id) as exam_id,
        e.score
from exam_results e
JOIN (
    select student_id, MAX(score) as score
    from exam_results
    group by student_id
) ms
on e.student_id = ms.student_id
and e.score = ms.score

Group by e.student_id, e.score
order by e.student_id, e.score;