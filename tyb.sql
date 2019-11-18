select c.* from `order` o
  left join hotel_room hr on hr.hotel_room_id=o.hotel_room_id
  left join comment c on c.hotel_id=hr.hotel_id
where o.order_id=14056400857595906;



select c.* from `order` o
  #   left join hotel_room hr on hr.hotel_room_id = o.hotel_room_id
  #   left join hotel h on h.hotel_id=hr.hotel_id
  left join comment c on c.order_id=o.order_id
where o.order_id=14056400857595906;




