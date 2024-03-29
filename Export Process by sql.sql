SET SESSION SQL_MODE='ALLOW_INVALID_DATES';
SET SQL_SAFE_UPDATES=0;
UPDATE new_merge2.ch8545_export_jan23_july23

SET SBDT = DATE_FORMAT(STR_TO_DATE(SBDT, '%Y-%m-%d %H:%i:%s'), '%d-%m-%Y')
WHERE SBDT LIKE '____-__-__ __:__:__';

update new_merge2.ch8545_export_jan23_july23  set SBDT = STR_TO_DATE(SBDT, '%d-%m-%Y');

alter table new_merge2.ch8545_export_jan23_july23 add Year_ varchar(255);
update  new_merge2.ch8545_export_jan23_july23   set Year_ = year(SBDT);

alter table new_merge2.ch8545_export_jan23_july23   add Month_ varchar(255);
update  new_merge2.ch8545_export_jan23_july23  set Month_ = month(SBDT);

alter table new_merge2.ch8545_export_jan23_july23  add Quantity_MT  varchar(255);

alter table new_merge2.ch8545_export_jan23_july23  add Total_value_FC varchar(255)
AS (QUANTITY *ITEM_RATE );

alter table new_merge2.ch8545_export_jan23_july23  add FOB_USD varchar(255);

alter table new_merge2.ch8545_export_jan23_july23
rename column FOB to FOB_INR;

alter table new_merge2.ch8545_export_jan23_july23
add price double ;

alter table new_merge2.ch8545_export_jan23_july23  add ExchangeRate1 varchar(255)  ;
alter table new_merge2.ch8545_export_jan23_july23 add ExchangeRate varchar(255)  ;



update new_merge2.ch8545_export_jan23_july23  set UQC = replace(UQC," ","");
update new_merge2.ch8545_export_jan23_july23  set Quantity_MT = (convert (Quantity,decimal)/1000) where UQC like 'KGS';
update new_merge2.ch8545_export_jan23_july23  set Quantity_MT = (convert (Quantity,decimal)/1000) where UQC like 'KGA';

update new_merge2.ch8545_export_jan23_july23   set Quantity_MT = Quantity where UQC like 'MTS';
update new_merge2.ch8545_export_jan23_july23   set Quantity_MT =  "0" where Quantity_MT is null;



update new_merge2.ch8545_export_jan23_july23 set Currency = replace(Currency," ","");
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = Total_value_FC where Currency like 'USD';

update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012153) where  month_ like '5' and Year_ like'2023' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012166) where  month_ like '6' and Year_ like'2023' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012167) where  month_ like '7' and Year_ like'2023' and  not Currency like 'USD';




update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012231) where  month_ like '1' and Year_ like'2023' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012108) where  month_ like '2' and Year_ like'2023'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012158) where  month_ like '3' and Year_ like'2023'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012202) where  month_ like '4' and Year_ like'2023'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013431) where  month_ like '1' and Year_ like'2022'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013341) where month_ like '2' and Year_ like'2022' and  not Currency like 'USD';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013120) where  month_ like '3' and Year_ like'2022'and  not Currency like 'USD';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013126) where  month_ like '4' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012937) where   month_ like '5' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012818) where  month_ like '6' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012576) where  month_ like '7' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012568) where  month_ like '8' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012478) where  month_ like '9' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012153) where  month_ like '10' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012253) where  month_ like '11' and Year_ like'2022'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012135) where  month_ like '12' and Year_ like'2022' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013673) where  month_ like '1' and Year_ like'2021' and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013735) where  month_ like '2' and Year_ like'2021' and  not Currency like 'USD';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013736) where  month_ like '3' and Year_ like'2021'and  not Currency like 'USD';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013432) where  month_ like '4' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013652) where  month_ like '5' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013597) where  month_ like '6' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013418) where  month_ like '7' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013483) where  month_ like '8' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013595) where  month_ like '9' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013349) where  month_ like '10' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013428) where  month_ like '11' and Year_ like'2021'and  not Currency like 'USD';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013258) where  month_ like '12' and Year_ like'2021'and  not Currency like 'USD';




update new_merge2.ch8545_export_jan23_july23  set ExchangeRate = FOB_INR/FOB_USD;

update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012153) where  ExchangeRate > '85' and  month_ like '5' and Year_ like'2023' ;
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012153) where  ExchangeRate < '70' and  month_ like '5' and Year_ like'2023';

update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012166) where  ExchangeRate > '85' and  month_ like '6' and Year_ like'2023' ;
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012166) where  ExchangeRate < '70' and  month_ like '6' and Year_ like'2023';

update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012167) where  ExchangeRate > '85' and  month_ like '7' and Year_ like'2023' ;
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012167) where  ExchangeRate < '70' and  month_ like '7' and Year_ like'2023';


update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012231) where  ExchangeRate > '85' and  month_ like '1' and Year_ like'2023' ;
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012108) where  ExchangeRate < '70' and  month_ like '2' and Year_ like'2023';
update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012158) where  ExchangeRate > '85' and  month_ like '3' and Year_ like'2023' ;
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012158) where  ExchangeRate < '70' and  month_ like '3' and Year_ like'2023';
update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012202) where  ExchangeRate > '85' and  month_ like '4' and Year_ like'2023' ;
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012202) where  ExchangeRate < '70' and  month_ like '4' and Year_ like'2023';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012108) where  ExchangeRate > '85' and  month_ like '2' and Year_ like'2023' ;
update new_merge2.ch8545_export_jan23_july23  set FOB_USD = (convert(FOB_INR,decimal)*0.012231) where  ExchangeRate < '70' and  month_ like '1' and Year_ like'2023';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013431) where  ExchangeRate > '85' and  month_ like '1' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013341) where  ExchangeRate > '85' and month_ like '2' and Year_ like'2022';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013120) where  ExchangeRate > '85' and month_ like '3' and Year_ like'2022';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013126) where  ExchangeRate > '85' and month_ like '4' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012937) where  ExchangeRate > '85' and  month_ like '5' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012818) where  ExchangeRate > '85' and  month_ like '6' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012576) where  ExchangeRate > '85' and  month_ like '7' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012568) where  ExchangeRate > '85' and  month_ like '8' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012478) where  ExchangeRate > '85' and month_ like '9' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012153) where  ExchangeRate > '85' and month_ like '10' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012253) where  ExchangeRate > '85' and month_ like '11' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012135) where  ExchangeRate > '85' and month_ like '12' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013673) where  ExchangeRate > '85' and month_ like '1' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013735) where  ExchangeRate > '85' and month_ like '2' and Year_ like'2021';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013736) where  ExchangeRate > '85' and month_ like '3' and Year_ like'2021';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013432) where  ExchangeRate > '85' and month_ like '4' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013652) where  ExchangeRate > '85' and month_ like '5' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013597) where  ExchangeRate > '85' and month_ like '6' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013418) where  ExchangeRate > '85' and month_ like '7' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013483) where  ExchangeRate > '85' and month_ like '8' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013595) where  ExchangeRate > '85' and month_ like '9' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013349) where  ExchangeRate > '85' and month_ like '10' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013428) where  ExchangeRate > '85' and month_ like '11' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013258) where  ExchangeRate > '85' and month_ like '12' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013431) where  ExchangeRate < '70' and  month_ like '1' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013341) where  ExchangeRate < '70' and month_ like '2' and Year_ like'2022';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013120) where  ExchangeRate < '70' and month_ like '3' and Year_ like'2022';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013126) where  ExchangeRate < '70' and month_ like '4' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012937) where  ExchangeRate < '70' and  month_ like '5' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012818) where  ExchangeRate < '70' and  month_ like '6' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012576) where  ExchangeRate < '70' and  month_ like '7' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012568) where  ExchangeRate < '70' and  month_ like '8' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012478) where  ExchangeRate < '70' and month_ like '9' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012153) where  ExchangeRate < '70' and month_ like '10' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012253) where  ExchangeRate < '70' and month_ like '11' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.012135) where  ExchangeRate < '70' and month_ like '12' and Year_ like'2022';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013673) where  ExchangeRate < '70' and month_ like '1' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013735) where  ExchangeRate < '70' and month_ like '2' and Year_ like'2021';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013736) where  ExchangeRate < '70' and month_ like '3' and Year_ like'2021';

update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013432) where  ExchangeRate < '70' and month_ like '4' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013652) where  ExchangeRate < '70' and month_ like '5' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013597) where  ExchangeRate < '70' and month_ like '6' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013418) where  ExchangeRate < '70' and month_ like '7' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013483) where  ExchangeRate < '70' and month_ like '8' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013595) where  ExchangeRate < '70' and month_ like '9' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013349) where  ExchangeRate < '70' and month_ like '10' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013428) where  ExchangeRate < '70' and month_ like '11' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23 set FOB_USD = (convert(FOB_INR,decimal)*0.013258) where  ExchangeRate < '70' and month_ like '12' and Year_ like'2021';
update new_merge2.ch8545_export_jan23_july23  set ExchangeRate1 = FOB_INR/FOB_USD;
update new_merge2.ch8545_export_jan23_july23 set Price = FOB_USD/Quantity_MT;
update new_merge2.ch8545_export_jan23_july23 set CUSH = 'AIR' where location like '%ACC%' ;
update new_merge2.ch8545_export_jan23_july23 set CUSH = 'SEA' where location like '%SEA%' ;
update new_merge2.ch8545_export_jan23_july23 set CUSH = 'ICD' where location like '%ICD%' ;
update new_merge2.ch8545_export_jan23_july23 set CUSH = 'AIR' where location like '%AIR%';
update new_merge2.ch8545_export_jan23_july23 set CUSH = 'SEA' where location like '%PORT%';
update new_merge2.ch8545_export_jan23_july23 set CUSH = 'ICD' where not (CUSH like 'AIR' or  CUSH like 'SEA' or  CUSH like 'ICD') ;
 update new_merge2.ch8545_export_jan23_july23  set CONSIGNEE =
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONSIGNEE, '.', ' '),
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
      
  update new_merge2.ch8545_export_jan23_july23  set EXPORTER =
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(EXPORTER, '.', ' '),
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