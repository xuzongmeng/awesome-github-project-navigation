select rpt.* from hotel h left join hotel_room hr on hr.hotel_id = h.hotel_id left join room_price rp on rp.hotel_room_id=hr.hotel_room_id
                          left join room_price_time rpt on rpt.room_price_id = rp.room_price_id where h.name like '柏曼酒店武汉阳逻店' and hr.name like '%大床房%';






/*根据*/

select h.* from address a left join address b on a.pr_address_id=b.address_id  left join hotel h on a.address_id = h.address_id where b.name like '%南京%' and h.name like '%南京协春%';



/*删除相关*/

delete from capital_pool_record    where relation_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from account_record    where relation_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from commment   where order_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from order_room_price   where order_id  in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);

delete from order_customer   where order_id in (select  a.id from (select o.order_id id from `order` o where user_id = 13304660124237892) a);


delete from `order` where user_id= 13304660124237892;