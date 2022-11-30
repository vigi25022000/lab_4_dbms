/* question 1 : total number of customers based on gender who have placed orders of worth 
at least Rs.3000 */

select CUS_GENDER, COUNT(CUS_GENDER) COUNT from customer
where CUS_ID in (select CUS_ID from `order` where ORD_AMOUNT >= 3000)
group by CUS_GENDER;