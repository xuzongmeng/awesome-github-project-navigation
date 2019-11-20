select rpt.* from hotel h
  left join hotel_room hr on hr.hotel_id = h.hotel_id
  left join room_price rp on rp.hotel_room_id=hr.hotel_room_id
  left join room_price_time rpt on rpt.room_price_id = rp.room_price_id
  where h.name like '柏曼酒店武汉阳逻店' and hr.name like '%大床房%';






/*根据酒店地址和酒店名称查酒店*/

select h.* from address a
  left join address a2 on a.pr_address_id=a2.address_id
  left join hotel h on a.address_id = h.address_id
where a2.name like '%南京%' and h.name like '%南京协春%';



/*删除相关*/

delete from capital_pool_record    where relation_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from account_record    where relation_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from comment    where order_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from order_room_price   where order_id  in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from order_customer   where order_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);


delete from `order` where user_id= 13304660124237892;
delete from `account` where user_id= 13304660124237892;

/*根据订单id评论*/
select c.* from `order` o
  left join hotel_room hr on hr.hotel_room_id=o.hotel_room_id
  left join comment c on c.hotel_id=hr.hotel_id
where o.order_id=14056400857595906;


/*根据订单id查酒店*/
select h.* from `order` o
  left join hotel_room hr on hr.hotel_room_id=o.hotel_room_id
  left join hotel h on h.hotel_id=hr.hotel_id
where o.order_id=13870127394062338;


select c.* from `order` o
  #   left join hotel_room hr on hr.hotel_room_id = o.hotel_room_id
  #   left join hotel h on h.hotel_id=hr.hotel_id
  left join comment c on c.order_id=o.order_id
where o.order_id=14056400857595906;
# where h.name like '柏曼酒店武汉阳逻店' and hr.name like '%大床房%';


delete from hotel where hotel_id= 14391250579881986;
delete from hotel where telephone= '18907447909';


select * from address  where pr_address_id = (select  a.address_id from  (SELECT * from address where name like '%湖北%') a);



#查询自己测试的酒店评论
select * from hotel where hotel_id = ( select c.hotel_id from (select * from comment where order_id !=-1) c);


SELECT * from user order by create_time desc limit 2;


#根据 role_id 查询角色所有的权限
select  a.*, r.name  from role r
left join role_authority_relation  rar on rar.role_id =r.role_id
left join authority a on  a.authority_id = rar.authority_id
where r.role_id =  14409748560478210;

#根据 某个菜单名称 查下面所有的权限
select  a.*  from authority a
where a.classify like '%订单%';


select h.*, hg.name from hotel h
LEFT JOIN hotel_group hg on hg.hotel_group_id =h.hotel_group_id
order by create_time desc;


#根据 order_id 查询下单的顾客姓名
select * from `order` o
left join user_name un on un.user_id = o.user_id
where o.order_id = 13870127394062338;



select * from room_price where room_price_id=11854068656898054;
select * from room_price_time where room_price_id=11854068656898054;


