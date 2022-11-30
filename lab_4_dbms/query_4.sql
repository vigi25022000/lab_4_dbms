/*question 2 : orders along with product name ordered by a customer having Customer_Id=2 */

select product.PRO_NAME, `order`.* from product inner join supplier_pricing on supplier_pricing.PRO_ID = product.PRO_ID
inner join `order` on `order`.PRICING_ID = supplier_pricing.PRICING_ID where `order`.CUS_ID=2;