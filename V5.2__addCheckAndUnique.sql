alter table users add constraint users_login_password_check check(length(login) > 3 and length(password) > 8);
alter table users add constraint users_name_check check(length(first_name) > 0 and length(last_name) > 0);
alter table users add constraint users_login_uniq unique(login);

alter table reviews add constraint reviews_reviewtext_rating_check check(length(reviewtext) > 0 and rating between 0 and 10);

alter table orders add constraint orders_price_status_check check(start_price > 0 and final_price > 0 and final_price <= start_price and length(status) > 0);

alter table payments add constraint payments_total_status_check check(length(status) > 0 and total > 0 and total < 1000000);

alter table product_refund add constraint product_refund_amount_shabbiness_check check(product_amount > 0 and shabbiness between 0 and 10);


alter table category add constraint category_name_description_check check(length(name) > 0 and length(description) > 0);
alter table category add constraint category_name_uniq unique(name);
