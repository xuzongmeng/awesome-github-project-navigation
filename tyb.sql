select t.* from teacher t
  left join user_gen_dan ugd on ugd.teacher_id=t.id
where ugd.user_id=1;



