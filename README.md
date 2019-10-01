# 2019-GSK-APAC-Data-Studio
Code and Documentation for GSK APAC Data Studio dashboard for media performance reporting

Media Performance Reporting - SEA, HK, TW, ANZ*


Box location:
	https://lion.app.box.com/folder/87581885878

Objective:
	Provide End of Campaign (EOC) Reporting to Regional Digital team 

Stakeholders:
	Clients: Sam Morrison and GSK clients in local markets
	Regional: Michelle Rubio and team	
		YZ - ID & MY
		Fred - TW & VN
		Esther - HK & SG
		Akshay - TH & PH
		Publicis: All the team members in the above markets have access

Markets:
	Full support: SEA, HK, TW
	Limited support: ANZ (Only Video)
	To be added post transition: IN, SL, BD - October onwards

Scope:
	Programmatic video campaigns on DV360
	Social campaigns on FB
	Video campaigns running using VAS on Google AdWords
	Search campaigns tracked using AdWords

Data Sources:
	DV360 - Video
	4C (3rd party tool) - Facebook & other social channels required e.g. Twitter, LinkedIn
	AdWords - VAS video campaigns and Search campaigns

Data Input Categorization:
DV360
	Standard file: Open Exchange and Reservation buys (dv360_standard_2019MMDD)
	Trueview: YT campaigns
	(dv360_trueview_2019MMDD)
	Audience: Age, Demographic variable for YT campaigns
	(dv360_audience_2019MMDD)
	Reach: Reach data for past 93 days
	(dv360_reach_2019MMDD)
Facebook
	Standard file: All campaigns
	(facebook_standard_2019MMDD)
	Audience file: Age, Demographic variable for Social campaigns
	(facebook_audience_2019MMDD)
	Reach: Reach data for entire duration
	(facebook_reach_2019MMDD)
AdWords:
	Weekly file: Search + Video campaigns (VAS) combined download
	(search_ads_weekly_2019MMDD)

Cadence:
	Ongoing Dashboard refresh every Monday 
	Incremental data added for previous week (Mon (n-1) to Sun (n-1))
	RDT team has requested two refreshes a week from October to support increased request for End of Campaign reports
		Monday 
		Thursday

Typical Deliverables:
	Weekly refresh of the dashboard to deliver EOCs
	Addition of new features in the dashboard
	Tactical refresh of the historical data based on request from RDT team e.g. They retrospectively update campaign taxonomy and need EoC 	 reports for that campaign. In such situations you need to update the data beyond the current week

Typical Process Update Workflow:
	Ensure all your reporting templates are set across DV360, 4C and Google AdWords
	Download the latest week’s data in case of a weekly refresh
	If following twice a week frequency, download data for the latest incremental period (e.g last 2 or last 3 days)
	Rename the files as per the naming convention used in the R Scripts
	Run the individual R scripts after updating the date of the file within them
	Upload the processed csv files using BigQuery UI
	Refer to the Google Help link below in case unfamiliar with update process
	The BI team or the other members of the Analytics team can help with debugging if you run into issues 
	https://codelabs.developers.google.com/codelabs/cpb200-loading-data/#2
	Once the data is uploaded into BigQuery tables - No further action is required
	In case there’s any discrepancy, just refresh the data from inside the Data Studio Dashboard which should resolve any connectivity issue

Delivery of Reports:
	RDT team has a 7 day SLA for delivering reports to clients once a campaign ends
	Hence, we’re aligned to a weekly or 2 times a week refresh cadence to meet their requirement
	Based on RDT team’s WIP tracker, upcoming campaign endings can be identified
	Geeta then pulls the report as pdf using the ‘Download as a PDF option’ from Data Studio
	She then cross verifies the numbers across the different pages to ensure consistency
	Also checks the numbers in the pdf against the platform before sharing them with RDT over email
	RDT team then adds their insights to the report which is delivered to the local market pgsk teams
	Our local team sits down with their respective clients for discussions every fortnight

** We are not copied on e-mail communication in point #7 and point #8. There’s no active role for the data team in these steps

Potential enhancements:
	Upgrading the data refresh cycle to daily using automated workflows on cloud
	Addition of non-Google, non-FB partners such as Baidu, Alibaba, etc.

