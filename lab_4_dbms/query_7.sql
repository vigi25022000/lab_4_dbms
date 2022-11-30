/* question 5 : Id and Name of the Product ordered after “2021-10-05”  */

select product.PRO_ID, product.PRO_NAME from`order`
inner join supplier_pricing
 on supplier_pricing.PRICING_ID = `order`.PRICING_ID
 inner join product on product.PRO_ID = supplier_pricing.PRO_ID
 where `order`.ORD_DATE > "2021-10-05" ;