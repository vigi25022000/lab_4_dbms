/* question 3 : Supplier details who can supply more than one product */

select supplier.* from supplier where SUPP_ID in
(select SUPP_ID from supplier_pricing group by SUPP_ID having COUNT(PRO_ID) > 1);