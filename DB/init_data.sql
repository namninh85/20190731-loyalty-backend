-- 2019/05/30  :Dieu -  Insert data to table product_category
DELETE FROM public.product_category;
INSERT INTO public.product_category(product_category_id ,code,name,parent_id,description,image,web_link,is_active,is_deleted)
values(1,'BIA – RƯỢU TRÁI CÂY','BIA – RƯỢU TRÁI CÂY',0,'Sản phẩm bia và rượu trái cây tại Circle K được phục vụ 24/7 với đầy đủ các thương hiệu nổi tiếng trong nước và trên thế giới.Bạn sẽ không lo cuộc vui của mình bị gián đoạn.','https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-1-BEER-pc-450.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (2,'RƯỢU','RƯỢU',0,'Tại Circle K, bạn sẽ an tâm vì sản phẩm của chúng tôi  được đảm bảo về chất lượng và xuất xứ rõ ràng.',
		'https://www.circlek.com.vn/wp-content/uploads/2016/01/wine_470x450.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (3,'NƯỚC GIẢI KHÁT LẠNH','NƯỚC GIẢI KHÁT LẠNH',0,'Hầu hết các thương hiệu nước giải khát được yêu thích, có chất lượng và uy tín trên thị trường hiện nay đã có tại Circle K, từ nước tinh khiết, nước khoáng thiên nhiên, nước có ga, nước tăng lực, nước uống thể thao, trà, cà phê, nước trái cây…',
		'https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-3-DRINK-pc1.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (4,'BIA – RƯỢU TRÁI CÂY','BIA – RƯỢU TRÁI CÂY',0,'Sản phẩm bia và rượu trái cây tại Circle K được phục vụ 24/7 với đầy đủ các thương hiệu nổi tiếng trong nước và trên thế giới.  Bạn sẽ không lo cuộc vui của mình bị gián đoạn.','https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-1-BEER-pc-450.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (5,'BÁNH KẸO','BÁNH KẸO',0,'Chủng loại bánh, kẹo, kẹo cao su, sô-cô-la đa dạng tại Circle K sẽ mang đến nhiều niềm vui cho bữa ăn nhẹ thường ngày của bạn.','https://www.circlek.com.vn/wp-content/uploads/2016/01/candy-biscuit_4701.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (6,'BÁNH MÌ TƯƠI','BÁNH MÌ TƯƠI',0,'Các loại bánh tươi đa dạng đươc chế biến bằng nguyên liệu cao cấp, bảo đảm an toàn vê sinh thực phẩm, có xuất xứ trong nước và nước ngoài với các thương hiệu nổi tiếng như SAVOURE, D-PLUS, SAMPLIP,LEELA… cùng nhiều mùi vị hấp dẫn sẽ mang đến cho khách hàng những trải nghiệm thú vị.',
		'https://www.circlek.com.vn/wp-content/uploads/2018/04/Bakery.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (7,'SNACK','SNACK',0,'Tại Circle K Việt Nam, Snack là ngành hàng đa dạng nhất với nhiều lựa chọn từ các nhãn hàng trong nước, quốc tế đến các sản phẩm nhập khẩu của riêng Circle K như các loại hạt, rong biển, thịt/ cá khô…'
		,'https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-5-SNACK-pc1.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (8,'KEM','KEM',0,'Kem tại Circle K luôn đa dạng về chủng loại (kem que, ốc quế, kem hộp) và phong phú về hương vị, dung tích, thương hiệu (của Việt Nam, Hàn Quốc, New Zealand, Mỹ…)'
		,'https://www.circlek.com.vn/wp-content/uploads/2016/01/Product-Ice-cream-update-san-pham.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false),
	   (9,'SỮA & SẢN PHẨM TỪ SỮA','SỮA & SẢN PHẨM TỪ SỮA',0,'Circle K cung cấp các loại sản phẩm sữa tươi, sữa tiệt trùng và các sản phẩm chế biến từ sữa …'
		,'https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-6-DAIRY-pc1.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false);

DELETE FROM public.product;	   
INSERT INTO public.product(product_id ,code,name,description,image,web_link,is_active,is_deleted,has_new)
values(1,'BIA – RƯỢU TRÁI CÂY','BIA – RƯỢU TRÁI CÂY','Sản phẩm bia và rượu trái cây tại Circle K được phục vụ 24/7 với đầy đủ các thương hiệu nổi tiếng trong nước và trên thế giới.Bạn sẽ không lo cuộc vui của mình bị gián đoạn.','https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-1-BEER-pc-450.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,true),
	   (2,'RƯỢU','RƯỢU','Tại Circle K, bạn sẽ an tâm vì sản phẩm của chúng tôi  được đảm bảo về chất lượng và xuất xứ rõ ràng.',
		'https://www.circlek.com.vn/wp-content/uploads/2016/01/wine_470x450.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,true),
	   (3,'NƯỚC GIẢI KHÁT LẠNH','NƯỚC GIẢI KHÁT LẠNH','Hầu hết các thương hiệu nước giải khát được yêu thích, có chất lượng và uy tín trên thị trường hiện nay đã có tại Circle K, từ nước tinh khiết, nước khoáng thiên nhiên, nước có ga, nước tăng lực, nước uống thể thao, trà, cà phê, nước trái cây…',
		'https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-3-DRINK-pc1.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,false),
	   (4,'BIA – RƯỢU TRÁI CÂY','BIA – RƯỢU TRÁI CÂY','Sản phẩm bia và rượu trái cây tại Circle K được phục vụ 24/7 với đầy đủ các thương hiệu nổi tiếng trong nước và trên thế giới.  Bạn sẽ không lo cuộc vui của mình bị gián đoạn.','https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-1-BEER-pc-450.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,false),
	   (5,'BÁNH KẸO','BÁNH KẸO','Chủng loại bánh, kẹo, kẹo cao su, sô-cô-la đa dạng tại Circle K sẽ mang đến nhiều niềm vui cho bữa ăn nhẹ thường ngày của bạn.','https://www.circlek.com.vn/wp-content/uploads/2016/01/candy-biscuit_4701.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,true),
	   (6,'BÁNH MÌ TƯƠI','BÁNH MÌ TƯƠI','Các loại bánh tươi đa dạng đươc chế biến bằng nguyên liệu cao cấp, bảo đảm an toàn vê sinh thực phẩm, có xuất xứ trong nước và nước ngoài với các thương hiệu nổi tiếng như SAVOURE, D-PLUS, SAMPLIP,LEELA… cùng nhiều mùi vị hấp dẫn sẽ mang đến cho khách hàng những trải nghiệm thú vị.',
		'https://www.circlek.com.vn/wp-content/uploads/2018/04/Bakery.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,false),
	   (7,'SNACK','SNACK','Tại Circle K Việt Nam, Snack là ngành hàng đa dạng nhất với nhiều lựa chọn từ các nhãn hàng trong nước, quốc tế đến các sản phẩm nhập khẩu của riêng Circle K như các loại hạt, rong biển, thịt/ cá khô…'
		,'https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-5-SNACK-pc1.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,true),
	   (8,'KEM','KEM','Kem tại Circle K luôn đa dạng về chủng loại (kem que, ốc quế, kem hộp) và phong phú về hương vị, dung tích, thương hiệu (của Việt Nam, Hàn Quốc, New Zealand, Mỹ…)'
		,'https://www.circlek.com.vn/wp-content/uploads/2016/01/Product-Ice-cream-update-san-pham.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,false),
	   (9,'SỮA & SẢN PHẨM TỪ SỮA','SỮA & SẢN PHẨM TỪ SỮA','Circle K cung cấp các loại sản phẩm sữa tươi, sữa tiệt trùng và các sản phẩm chế biến từ sữa …'
		,'https://www.circlek.com.vn/wp-content/uploads/2016/01/blk-6-DAIRY-pc1.png',
	   'https://www.circlek.com.vn/vi/san-pham-dich-vu/san-pham/',true,false,true);
	   
--2019/06/05 - Dieu - inset data to table store
DELETE FROM public.store;
INSERT INTO public.store(store_id,name,address,phone,utilities,is_active,is_deleted,latitude,longitude)
VALUES ('1','Circle K','33 Hoàng Hoa Thám, Phường 11, Quận Tân Bình, Tp HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.7992202,106.6471282),
('2','Circle K','Landmark 1, Phường 22, Quận Bình Thạnh, Tp Hcm, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.7955759,106.7192569),
('3','Circle K','306 Cao Thắng, Phường 12, Quận 10, Tp HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.77496,106.67477009999993),
('4','Circle K','104 Hồ Tùng Mậu, Phường Bến Nghé, Quận 1, Tp.HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.7729456,106.70352809999997),
('5','Circle K','175 Nguyễn Công Trứ, Phường Bến Thành, Quận 1, Tp.HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.768191,106.701053),
('6','Circle K','52 Trương Định, Phường Bến Thành, Quận 1, Tp.HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.7725285,106.69585749999999),
('7','Circle K','24 Hồ Huấn Nghiệp, Phường Bến Nghé, Quận 1, Tp.HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.774498,106.70512299999996),
('8','Circle K','2 Trần Khắc Chân, Phường Tân Định, Quận 1, Tp.HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.792414,106.69131289999996),
('9','Circle K','250 Đề Thám, Phường Phạm Ngũ Lão, Quận 1, Tp.HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.76815,106.69379400000002),
('10','Circle K','62 Phạm Ngọc Thạch, Phường 06, Quận 3, Tp.HCM, Việt Nam','+84 28 3526 1003','1,2,3,4,5,6',true,false,10.786109500465226,106.69226713478565);


--2019/06/04 - Dieu - insert data to table product_in_store
DELETE FROM public.product_in_store;
INSERT INTO product_in_store(product_id,store_id,stock_amount,is_active,is_deleted)
VALUES(1,1,10,true,false),
(1,2,15,true,false),
(1,3,20,true,false),
(2,2,21,true,false),
(2,3,14,true,false),
(3,1,2,true,false),
(2,1,30,true,false),
(4,1,5,true,false);

--2019/06/04 -Dieu - Insert data to voucher
DELETE FROM public.voucher;
INSERT INTO voucher(voucher_id,name,image,value,currency,description,number_date_use,is_active,is_deleted)
VALUES(1,'Dolpan Sam','https://media.ifind.vn/data/images/media/2bp-1531454945731.png',179,'VND','Dolpan Sam - Voucher Buffet Nướng Trị Giá 179K',30,true,false),
(2,'Voucher 2 bia tươi Gammer và 1 xúc xích','http://myway.com.vn/admin/webroot/upload/image/images/2018-07-03%20ND_Facebook%20Combo%20bia-01.jpg',300,'VND','Voucher 2 bia tươi Gammer và 1 xúc xích',10,true,false),
(3,'[E-Voucher] Yến Sào Hồng Sâm Cao Cấp Bionest Ginseng Lọ 70ml','https://i-shop.vnecdn.net/resize/560/560/images/2018/10/17/5bc746d179780-Combo4GINSENG.jpg',219,'VND','[E-Voucher] Yến Sào Hồng Sâm Cao Cấp Bionest Ginseng Lọ 70ml',30,true,false),
(4,'The Coffee House - Voucher Thưởng Thức Toàn Menu Chỉ Có Tại TIKI','https://cafebiz.cafebizcdn.vn/thumb_w/600/2015/the-coffee-house-1441102961552-crop-1441123481946.jpg',400000,'VND','The Coffee House - Voucher Thưởng Thức Toàn Menu ',30,true,false),
(5,'[E-Voucher] Yến Sào Cao Cấp Bionest Gold - Hộp Quà Tặng (6 Lọ X 70ml)','https://daily24h.vn/storage/public/vu-anh-619/folder01.jpg',400,'VND','[E-Voucher] Yến Sào Cao Cấp Bionest Gold - Hộp Quà Tặng (6 Lọ X 70ml)',20,true,false),
(6,' Yến Sào Cao Cấp Bionest Gold - Hộp Tiết Kiệm (6 Lọ X 70ml)','https://oms.hotdeal.vn/images/editors/sources/000354049677/354049-354049-body%20(11).jpg',9000,'VND',' Yến Sào Cao Cấp Bionest Gold - Hộp Tiết Kiệm (6 Lọ X 70ml)',10,true,false),
(7,'Dolpan Sam','http://dolpansam.vn/menu/data1/images/6.jpg',1456,'VND','Dolpan Sam - Voucher Buffet Nướng Trị Giá 179K',15,true,false),
(8,'Voucher 100Gr Yến Tinh Chế - Yến Sào Cao Cấp Nha Trang NestViet','https://static.hotdeal.vn/images/1575/1574791/60x60/354049-qua-tet-y-nghia-to-yen-nhan-sam-chung-duong-phen-bionest-kid-danh-cho-moi-nguoi-cua-yen-sao-cao-cap-bionest.jpg',540000,'VND','Voucher 100Gr Yến Tinh Chế - Yến Sào Cao Cấp Nha Trang NestViet',20,true,false);

-- 2019/06/07 - Ninh - data sample for voucher_code
INSERT INTO public.voucher_code(
 voucher_code_id, voucher_id, voucher_code, is_active, is_deleted)
 VALUES ('1', '1' ,'ABC' ,true ,false),
('2', '2' ,'ABC2' ,true ,false),
('3', '3' ,'ABC3' ,true ,false),
('4', '4' ,'ABC4' ,true ,false),
('5', '5' ,'ABC5' ,true ,false),
('6', '6' ,'ABC6' ,true ,false),
('7', '7' ,'ABC7' ,true ,false),
('8', '8' ,'ABC8' ,true ,false);
DELETE FROM public.special_offer;
INSERT INTO special_offer(special_offer_id, code, name, image, web_link, is_active, is_deleted) VALUES (1,'fast-delicious','fast-delicious','http://triqtran.github.io/images/loyalty/special-offer/fast-delicious.jpg','https://www.circlek.com.vn/vi/thuc-an-thuc-uong/',TRUE,FALSE);
INSERT INTO special_offer(special_offer_id, code, name, image, web_link, is_active, is_deleted) VALUES (2,'food-box','food-box','http://triqtran.github.io/images/loyalty/special-offer/food-box.jpg','https://www.circlek.com.vn/vi/thuc-an-thuc-uong/thuc-an/',TRUE,FALSE);
INSERT INTO special_offer( special_offer_id, code, name, image, web_link, is_active, is_deleted) VALUES (3,'drink-box','drink-box','http://triqtran.github.io/images/loyalty/special-offer/drink-box.jpg','https://www.circlek.com.vn/vi/',TRUE,FALSE);
INSERT INTO special_offer( special_offer_id, code, name, image, web_link, is_active, is_deleted) VALUES (4,'promotion','promotion','http://triqtran.github.io/images/loyalty/special-offer/promotion.png','https://www.circlek.com.vn/vi/uu-dai-dac-biet/?l=tp-ho-chi-minh-1',TRUE,FALSE);
INSERT INTO special_offer(special_offer_id, code, name, image, web_link, is_active, is_deleted) VALUES (5,'products-services','products-services','http://triqtran.github.io/images/loyalty/special-offer/products-services.jpg','https://www.circlek.com.vn/vi/san-pham-dich-vu/',TRUE,FALSE);



 DELETE FROM public.loyalty_program;
 INSERT INTO loyalty_program(loyalty_program_id,voucher_id,start_date,end_date,point,total_release,available,is_active,is_deleted)
 VALUES(1,1,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (2,2,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (3,3,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (4,1,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (5,3,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (6,4,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (7,2,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (8,5,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (9,3,'2019-07-30','2020-07-30',4000,200,50,true,false),
 (10,4,'2019-07-30','2020-07-30',4000,200,50,true,false);
 
 -- 2019/06/05 - Nin - Data sample for customer_rewards_log
 INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (1,1,-4000,1,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (2,1,-4000,2,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (3,1,-4000,3,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (4,1,-4000,4,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (5,1,-4000,5,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (6,1,-4000,6,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (7,1,-4000,7,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (8,1,-4000,8,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (9,1,-4000,9,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (10,1,-4000,1,NULL,'2019-07-30',TRUE,FALSE);
INSERT INTO public.customer_rewards_log(customer_rewards_log_id, customer_id, point_burn_earn, loyalty_program_id, voucher_code_id, reward_date, is_active, is_deleted)
VALUES (11,1,-4000,2,NULL,'2019-07-30',TRUE,FALSE);

--2019/06/04 - Dieu - insert data to table utility
INSERT INTO public.utility(utility_id,name,image,web_link,is_active,is_deleted)
VALUES (1,'seat','https://www.circlek.com.vn/wp-content/uploads/2016/01/seat.png','https://www.circlek.com.vn/wp-content/uploads/2016/01/seat',true,false),
(2,'food','https://www.circlek.com.vn/wp-content/uploads/2016/01/1.png','https://www.circlek.com.vn/wp-content/uploads/2016/01/1',true,false),
(3,'bill','https://www.circlek.com.vn/wp-content/uploads/2016/01/1.png','https://www.circlek.com.vn/wp-content/uploads/2016/01/1',true,false),
(4,'card','https://www.circlek.com.vn/wp-content/uploads/2018/10/icon_54_card_payment.png','https://www.circlek.com.vn/wp-content/uploads/2018/10/icon_54_card_payment',true,false),
(5,'phone','https://www.circlek.com.vn/wp-content/uploads/2016/01/phonecard.png','https://www.circlek.com.vn/wp-content/uploads/2016/01/phonecard',true,false),
(6,'game','https://www.circlek.com.vn/wp-content/uploads/2016/01/73.png','https://www.circlek.com.vn/wp-content/uploads/2016/01/73',true,false);


--2019/06/06 - Dieu - Insert data to table app_data_config
INSERT INTO public.app_data_config(app_data_config_id,banner_header_img,interested_fields,logo,privacy_link,term_conditions_link,is_active,is_deleted)
VALUES(1,'http://triqtran.github.io/images/loyalty/others/bg-header.png','1,2,3,4','http://triqtran.github.io/images/loyalty/others/logo-loyalty.png','https://www.circlek.com.vn/vi/chinh-sach-bao-mat/','https://www.circlek.com.vn/vi/dieu-khoan-su-dung',true,false);

--2019/06/06 - Dieu - Insert data to table interested_field
INSERT INTO public.interested_field(interested_field_id,name,is_active,is_deleted)
VALUES(1,'Special Offers',true,false),(2,'Food',true,false),(3,'Drinks',true,false),(4,'Phone Cards',true,false);