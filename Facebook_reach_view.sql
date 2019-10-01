
/* Query to create the view for Reach data which powers the dashboard view */
SELECT *, 
safe_divide((Amount_Spent*1.05),Reach) as CPR,
safe_divide((Amount_Spent*1.05),Post_Engagement) as CPE,
safe_divide((Amount_Spent*1.05),Link_Clicks) as CPC_Link_Click,
safe_divide((Amount_Spent*1.05),_2_Second_Continuous_Video_Views) as CPV_2sec
FROM `pgsk-gsk-apac-media.facebook_reach.facebook_reach_data` 

/* Query to remove and reload certain campaigns */
SELECT * 
  FROM `pgsk-gsk-apac-media.facebook_standard.facebook_standard_data`
WHERE Campaign_ID not in  (23843486289760300, 23843489122180300, 23843489123860300, 23843489129750300, 23843494623310300, 23843500000000000, 23843506301390300) 


/* Query to remove and reload certain accounts */
SELECT *
FROM `pgsk-gsk-apac-media.facebook_standard.facebook_standard_data` 
WHERE Account not in ('Calpol - calpol.com.ph - EN-PH - USD', 'Calpol - X.X - X-142 - USD', 'Sensodyne - sensodyne.com.ph - EN-PH - USD')


