select 
	common.eventnumber, common.Timestamp, 
	user.username,
	doc.dataname
from 
	common
join
	user on common.userid = user.userid 
join
	doc on common.dataid = doc.dataid 
where 
	(common.userid != 14) and (common.Timestamp > '2018-05-11 12:13:05' )
group by
	common.eventnumber
