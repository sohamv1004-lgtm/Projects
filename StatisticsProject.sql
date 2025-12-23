

select *
from statistics
where Country='Afghanistan'

select *
from statistics
where Gender='Female'
and Region!='Other'
order by Child_Labor_Rate_Percent Desc

select Country,round(sum(Estimated_Children_Millions),2) as Total_Children
from statistics as S
group by Country
order by Total_Children

 select S.Country,S.Region,S.Child_Labor_Rate_Percent,S.Year
 from statistics AS S
 where Child_Labor_Rate_Percent =(
 Select max(Child_Labor_Rate_Percent)
 from statistics as S1
 where S.Year=S1.Year and Country!='World'
 )
 order by Year DESC
 
 select *
 from statistics
 where Age_Group like '%5%' and Child_Labor_Rate_Percent IN(
 SELECT max(Child_Labor_Rate_Percent)
 FROM statistics
 where Age_Group like '%5%'
 group by Region)
 order by YEAR desc
 
 select *,
 dense_rank() over(
 order by Child_Labor_Rate_Percent DESC) as Rankings
 from Statistics
 where Year='2023'

  
 
 
 



