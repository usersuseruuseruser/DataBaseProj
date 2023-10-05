CREATE TABLE Bucket
(
    bucket_id BIGINT
);
CREATE TABLE ProductsReviews
(
    product_review_id BIGINT,
    product_id BIGINT,
    review_id BIGINT,
    review_date DATE
);
CREATE TABLE ProductsBuckets
(
    bucket_product_id BIGINT,
    bucket_id BIGINT,
    product_id BIGINT
);
create table Reviews(
	review_id bigint,
	reviewText varchar(40),
	rating int
);
CREATE TABLE saleInfoProduct
(
    saleInfo_product_id BIGINT,
    saleInfo_id BIGINT,
    product_id BIGINT
);
CREATE TABLE SaleInfo
(
    saleInfo_id BIGINT,
    name text,
    description text,
    percentSlash int
);
CREATE TABLE UsersBuckets
(
    user_bucket_id BIGINT,
    user_id BIGINT,
    bucket_id BIGINT
);
CREATE TABLE UsersReviews
(
    user_review_id BIGINT,
    user_id BIGINT,
    review_id BIGINT,
    review_date DATE
);