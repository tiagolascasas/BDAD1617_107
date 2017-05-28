.mode columns
.headers on
.nullvalue NULL

select  round(avg(score), 2) as "Review Average",
		count( Review.idReview) as "Number of Reviews",
		MIN(score) as "Lowest Review", MAX( score) as "Highest Review"
from Review;
