--------------------------------*Basic Queries (1-10)*-------------------------------------
/* QUESTIONS 1 : Write a query to fetch all book titles and their corresponding author names. */
```
SELECT
  TOP 3 B.MEMBER_NAME,
  count(B.MEMBER_ID) AS [Member Who issue Books]
FROM
  [dbo].[LMS_BOOK_ISSUE] A
  left join [dbo].[LMS_MEMBERS] B ON A.MEMBER_ID = B.MEMBER_ID
GROUP BY
  B.MEMBER_NAME
order by
  [Member Who issue Books] desc;
```
