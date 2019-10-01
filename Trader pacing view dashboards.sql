
/* Trader pacing dashboards - Facebook */
SELECT JO_final, PR_Description, MK_Description, Advertiser_Currency,  max(betterDate) as latest_date, sum(Amount_Spent) as media_spends_fb 
FROM `pgsk-gsk-apac-media.new_fb.facebook_standard_data` 
group by 1, 2, 3, 4

/* Trader pacing dashboards - DV360 */
SELECT JO_final, PR_Description, MK_Description, Advertiser_Currency, max(betterDate) as latest_date, SUM(Revenue__Adv_Currency_) AS media_spends     
FROM `pgsk-gsk-apac-media.new_dv360.dv360_standard_data`
group by 1, 2, 3, 4