--source data for linkchecker script (CBC Curio)
use ils
select t02Title, t147data
from ItemMarc_t147
inner join Items_t02 on t02Identifier = t147ItemIdentifier
where t147tag = '856'
and t147SubField = 'u'
and t02OnlineSource in ('CBC Curio','CBC Curio - News in Review')
order by t02Title

--source data for linkchecker script (Learn360)
use ils
select t02Title, t147data
from ItemMarc_t147
inner join Items_t02 on t02Identifier = t147ItemIdentifier
where t147tag = '856'
and t147SubField = 'u'
and t02OnlineSource in ('Learn360 - Core','Learn360 - Feature Films','Learn360 - WRDSB')
order by t02Title

--source data for linkchecker script (NFB)
use ils
select t02Title, t147data
from ItemMarc_t147
inner join Items_t02 on t02Identifier = t147ItemIdentifier
where t147tag = '856'
and t147SubField = 'u'
and t02OnlineSource in ('NFB Campus')
order by t02Title

--source data for linkchecker script (Tumblebooks)
use ils
select t02Title, t147data
from ItemMarc_t147
inner join Items_t02 on t02Identifier = t147ItemIdentifier
where t147tag = '856'
and t147SubField = 'u'
and t02OnlineSource in ('Tumblebooks')
order by t02Title

--source data for linkchecker script (Infobase eBooks)
use ils
select t02Title, t147data
from ItemMarc_t147
inner join Items_t02 on t02Identifier = t147ItemIdentifier
where t147tag = '856'
and t147SubField = 'u'
and t02OnlineSource in ('Infobase eBooks','Infobase eBooks - Literary Classics')
order by t02Title
