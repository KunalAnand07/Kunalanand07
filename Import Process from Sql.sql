

SET SESSION SQL_MODE='ALLOW_INVALID_DATES';
SET SQL_SAFE_UPDATES=0; 
update new_merge2.CH34029099_Jan21_Dec23_import_7
SET BE_Date = DATE_FORMAT(STR_TO_DATE(BE_Date, '%Y-%m-%d %H:%i:%s'), '%y-%m-%d')
WHERE BE_Date LIKE '____-__-__ __:__:__';
    
    
update new_merge2.CH34029099_Jan21_Dec23_import_7 set BE_Date = STR_TO_DATE(BE_Date, '%y-%m-%d');



alter table new_merge2.CH34029099_Jan21_Dec23_import_7  add Year_ varchar(255);
update  new_merge2.CH34029099_Jan21_Dec23_import_7  set Year_ = year(BE_Date);

alter table new_merge2.CH34029099_Jan21_Dec23_import_7  add Month_ varchar(255);
update  new_merge2.CH34029099_Jan21_Dec23_import_7 set Month_ = month(BE_Date);

alter table new_merge2.CH34029099_Jan21_Dec23_import_7 add Quantity_MT  varchar(255);

alter table new_merge2.CH34029099_Jan21_Dec23_import_7 add Total_value_FC varchar(255)
AS (QUANTITY *Invoice_Unit_Price_FC );

alter table new_merge2.CH34029099_Jan21_Dec23_import_7 add CIF_USD varchar(255);

alter table new_merge2.CH34029099_Jan21_Dec23_import_7  
rename column TOTAL_ASS_VALUE to TOTAL_ASS_VALUE_INR;

alter table new_merge2.CH34029099_Jan21_Dec23_import_7  
add price double ;

alter table new_merge2.CH34029099_Jan21_Dec23_import_7 add ExchangeRate1 varchar(255)  ;
alter table new_merge2.CH34029099_Jan21_Dec23_import_7  add ExchangeRate varchar(255)  ;


SET SQL_SAFE_UPDATES=0;
update new_merge2.CH34029099_Jan21_Dec23_import_7 set UQC = replace(UQC," ","");
update new_merge2.CH34029099_Jan21_Dec23_import_7 set Quantity_MT = (convert (Quantity,decimal)/1000) where UQC like 'KGS';



update new_merge2.CH34029099_Jan21_Dec23_import_7  set Quantity_MT = Quantity where UQC like 'MTS';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set Quantity_MT =  "0" where Quantity_MT is null;



update new_merge2.CH34029099_Jan21_Dec23_import_7  set INVOICE_CURRENCY = replace(INVOICE_CURRENCY," ","");
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = Total_value_FC where INVOICE_CURRENCY like 'USD';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012072) where not INVOICE_CURRENCY like 'USD' and month_ like '8' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012047) where not INVOICE_CURRENCY like 'USD' and month_ like '9' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012015) where not INVOICE_CURRENCY like 'USD' and month_ like '10' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012009) where not INVOICE_CURRENCY like 'USD' and month_ like '11' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012013) where not INVOICE_CURRENCY like 'USD' and month_ like '12' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012153) where not INVOICE_CURRENCY like 'USD' and month_ like '5' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012166) where not INVOICE_CURRENCY like 'USD' and month_ like '6' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012167) where not INVOICE_CURRENCY like 'USD' and month_ like '7' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012158) where not INVOICE_CURRENCY like 'USD' and month_ like '3' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012202) where not INVOICE_CURRENCY like 'USD' and month_ like '4' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7 set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012231) where not INVOICE_CURRENCY like 'USD' and month_ like '1' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012108) where not INVOICE_CURRENCY like 'USD' and month_ like '2' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013431) where not INVOICE_CURRENCY like 'USD' and month_ like '1' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013341) where not INVOICE_CURRENCY like 'USD' and month_ like '2' and Year_ like'2022';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013120) where not INVOICE_CURRENCY like 'USD' and month_ like '3' and Year_ like'2022';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013126) where not INVOICE_CURRENCY like 'USD' and month_ like '4' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012937) where not INVOICE_CURRENCY like 'USD' and month_ like '5' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012818) where not INVOICE_CURRENCY like 'USD' and month_ like '6' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012576) where not INVOICE_CURRENCY like 'USD' and month_ like '7' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012568) where not INVOICE_CURRENCY like 'USD' and month_ like '8' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012478) where not INVOICE_CURRENCY like 'USD' and month_ like '9' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012153) where not INVOICE_CURRENCY like 'USD' and month_ like '10' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012253) where not INVOICE_CURRENCY like 'USD' and month_ like '11' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012135) where not INVOICE_CURRENCY like 'USD' and month_ like '12' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013673) where not INVOICE_CURRENCY like 'USD' and month_ like '1' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013735) where not INVOICE_CURRENCY like 'USD' and month_ like '2' and Year_ like'2021';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013736) where not INVOICE_CURRENCY like 'USD' and month_ like '3' and Year_ like'2021';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013432) where not INVOICE_CURRENCY like 'USD' and month_ like '4' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013652) where not INVOICE_CURRENCY like 'USD' and month_ like '5' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013597) where not INVOICE_CURRENCY like 'USD' and month_ like '6' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013418) where not INVOICE_CURRENCY like 'USD' and month_ like '7' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013483) where not INVOICE_CURRENCY like 'USD' and month_ like '8' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013595) where not INVOICE_CURRENCY like 'USD' and month_ like '9' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013349) where not INVOICE_CURRENCY like 'USD' and month_ like '10' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013428) where not INVOICE_CURRENCY like 'USD' and month_ like '11' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013258) where not INVOICE_CURRENCY like 'USD' and month_ like '12' and Year_ like'2021';




update new_merge2.CH34029099_Jan21_Dec23_import_7 set ExchangeRate = total_ass_value_inr/CIF_USD;

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012072) where  ExchangeRate < '70' and  month_ like '8' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012072) where  ExchangeRate > '85' and  month_ like '8' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012047) where  ExchangeRate < '70' and  month_ like '9' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012047) where  ExchangeRate > '85' and  month_ like '9' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012015) where  ExchangeRate < '70' and  month_ like '10' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012015) where  ExchangeRate > '85' and  month_ like '10' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012009) where  ExchangeRate < '70' and  month_ like '11' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012009) where  ExchangeRate > '85' and  month_ like '11' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012013) where  ExchangeRate < '70' and  month_ like '12' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012013) where  ExchangeRate > '85' and  month_ like '12' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012153) where  ExchangeRate < '70' and  month_ like '5' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012153) where  ExchangeRate > '85' and  month_ like '5' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012166) where  ExchangeRate < '70' and  month_ like '6' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012166) where  ExchangeRate > '85' and  month_ like '6' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012167) where  ExchangeRate < '70' and  month_ like '7' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012167) where  ExchangeRate > '85' and  month_ like '7' and Year_ like'2023';


update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012202) where  ExchangeRate < '70' and  month_ like '4' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012202) where  ExchangeRate > '85' and  month_ like '4' and Year_ like'2023';

update new_merge2.CH34029099_Jan21_Dec23_import_7 set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012231) where  ExchangeRate > '85' and  month_ like '1' and Year_ like'2023' ;
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012108) where  ExchangeRate < '70' and  month_ like '2' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012108) where  ExchangeRate > '85' and  month_ like '2' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7 set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012231) where  ExchangeRate > '85' and  month_ like '1' and Year_ like'2023' ;
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012158) where  ExchangeRate < '70' and  month_ like '3' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012158) where  ExchangeRate > '85' and  month_ like '3' and Year_ like'2023' ;


update new_merge2.CH34029099_Jan21_Dec23_import_7 set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012231) where  ExchangeRate < '70' and  month_ like '1' and Year_ like'2023';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013431) where  ExchangeRate > '85' and  month_ like '1' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013341) where  ExchangeRate > '85' and month_ like '2' and Year_ like'2022';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013120) where  ExchangeRate > '85' and month_ like '3' and Year_ like'2022';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013126) where  ExchangeRate > '85' and month_ like '4' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012937) where  ExchangeRate > '85' and  month_ like '5' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012818) where  ExchangeRate > '85' and  month_ like '6' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012576) where  ExchangeRate > '85' and  month_ like '7' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012568) where  ExchangeRate > '85' and  month_ like '8' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012478) where  ExchangeRate > '85' and month_ like '9' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012153) where  ExchangeRate > '85' and month_ like '10' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012253) where  ExchangeRate > '85' and month_ like '11' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012135) where  ExchangeRate > '85' and month_ like '12' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013673) where  ExchangeRate > '85' and month_ like '1' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013735) where  ExchangeRate > '85' and month_ like '2' and Year_ like'2021';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013736) where  ExchangeRate > '85' and month_ like '3' and Year_ like'2021';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013432) where  ExchangeRate > '85' and month_ like '4' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013652) where  ExchangeRate > '85' and month_ like '5' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013597) where  ExchangeRate > '85' and month_ like '6' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013418) where  ExchangeRate > '85' and month_ like '7' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013483) where  ExchangeRate > '85' and month_ like '8' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013595) where  ExchangeRate > '85' and month_ like '9' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013349) where  ExchangeRate > '85' and month_ like '10' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013428) where  ExchangeRate > '85' and month_ like '11' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013258) where  ExchangeRate > '85' and month_ like '12' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013431) where  ExchangeRate < '70' and  month_ like '1' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013341) where  ExchangeRate < '70' and month_ like '2' and Year_ like'2022';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013120) where  ExchangeRate < '70' and month_ like '3' and Year_ like'2022';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013126) where  ExchangeRate < '70' and month_ like '4' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012937) where  ExchangeRate < '70' and  month_ like '5' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012818) where  ExchangeRate < '70' and  month_ like '6' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012576) where  ExchangeRate < '70' and  month_ like '7' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012568) where  ExchangeRate < '70' and  month_ like '8' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012478) where  ExchangeRate < '70' and month_ like '9' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012153) where  ExchangeRate < '70' and month_ like '10' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012253) where  ExchangeRate < '70' and month_ like '11' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.012135) where  ExchangeRate < '70' and month_ like '12' and Year_ like'2022';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013673) where  ExchangeRate < '70' and month_ like '1' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013735) where  ExchangeRate < '70' and month_ like '2' and Year_ like'2021';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013736) where  ExchangeRate < '70' and month_ like '3' and Year_ like'2021';

update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013432) where  ExchangeRate < '70' and month_ like '4' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013652) where  ExchangeRate < '70' and month_ like '5' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013597) where  ExchangeRate < '70' and month_ like '6' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013418) where  ExchangeRate < '70' and month_ like '7' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013483) where  ExchangeRate < '70' and month_ like '8' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013595) where  ExchangeRate < '70' and month_ like '9' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013349) where  ExchangeRate < '70' and month_ like '10' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013428) where  ExchangeRate < '70' and month_ like '11' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CIF_USD = (convert(TOTAL_ASS_VALUE_INR,decimal)*0.013258) where  ExchangeRate < '70' and month_ like '12' and Year_ like'2021';
update new_merge2.CH34029099_Jan21_Dec23_import_7 set ExchangeRate1 = total_ass_value_inr/CIF_USD;
update new_merge2.CH34029099_Jan21_Dec23_import_7  set Price = CIF_USD/Quantity_MT;

update new_merge2.CH34029099_Jan21_Dec23_import_7  set Price =  "0" where Price is null;
alter table new_merge2.CH34029099_Jan21_Dec23_import_7  add Cleaned_Importer_name varchar(255);
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CUSH = 'AIR' where location like '%ACC%' ;
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CUSH = 'SEA' where location like '%SEA%' ;
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CUSH = 'ICD' where location like '%ICD%' ;
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CUSH = 'AIR' where location like '%AIR%';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CUSH = 'SEA' where location like '%PORT%';
update new_merge2.CH34029099_Jan21_Dec23_import_7  set CUSH = 'ICD' where not (CUSH like 'AIR' or CUSH like 'SEA' or CUSH like 'ICD') ;


  update new_merge2.CH34029099_Jan21_Dec23_import_7  set Supplier_Name =
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Supplier_Name, '.', ' '),
                                ',',
                                ' '),
                            'LTD',
                            'LIMITED'),
                        'PVT',
                        'PRIVATE'),
                    '&',
                    ' AND '),
                'M/S',
                ''),
            '(',
            ' '),
        ')',
        ' '),'*',
        ' ')
        ,'-',
        ' ') , '/'
        ,' '),
        '|',
        ' '),
            '/',
            ' '),
        '!',
        ' '),';',
        ' ')
        ,':',
        ' ') , '#'
        ,' '),
        '?',
        ' '), '`'
        ,' '),
        'Pharmaceuticals',
        ' Pharmaceutical'),
            'Enterprises',
            'Enterprise'),
        'Solutions',
        'Solution'),'Technologies',
        'Technology')
        ,'Textiles',
        'Textile') , 'Products'
        ,'Product'),
        'Electricals',
        'Electrical'),
        'Industries',
        'Industry') ;
      
  update new_merge2.CH34029099_Jan21_Dec23_import_7  set Importer_Name =
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Importer_Name, '.', ' '),
                                ',',
                                ' '),
                            'LTD',
                            'LIMITED'),
                        'PVT',
                        'PRIVATE'),
                    '&',
                    ' AND '),
                'M/S',
                ''),
            '(',
            ' '),
        ')',
        ' '),'*',
        ' ')
        ,'-',
        ' ') , '/'
        ,' '),
        '|',
        ' '),
            '/',
            ' '),
        '!',
        ' '),';',
        ' ')
        ,':',
        ' ') , '#'
        ,' '),
        '?',
        ' '), '`'
         ,' '),
        'Pharmaceuticals',
        ' Pharmaceutical'),
            'Enterprises',
            'Enterprise'),
        'Solutions',
        'Solution'),'Technologies',
        'Technology')
        ,'Textiles',
        'Textile') , 'Products'
        ,'Product'),
        'Electricals',
        'Electrical'),
        'Industries',
        'Industry') ;
alter table new_merge2.CH34029099_Jan21_Dec23_import_7  add product varchar(255);
update  new_merge2.CH34029099_Jan21_Dec23_import_7  set product = 'CRUDE PALM OIL' where Item_Description like '%CRUDE PALM OIL%' or '%CRUDE PALM OIL' or 'CRUDE PALM OIL%';
update new_merge2.CH34029099_Jan21_Dec23_import_7 set BE_Type = replace(BE_Type,' ','');
update  new_merge2.CH34029099_Jan21_Dec23_import_7  set BE_Type = 'Warehouse Shipment' where BE_Type like 'W';
update  new_merge2.CH34029099_Jan21_Dec23_import_7  set BE_Type = 'X-Bond Shipment' where BE_Type like 'X';
update  new_merge2.CH34029099_Jan21_Dec23_import_7  set BE_Type = 'House Consumption' where BE_Type like 'H';