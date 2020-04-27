ruby version 2.6.3p62 as that was used while developing the framework. 


Please do bundle install.     


Ensure you have chromedriver installed on your machine


Then do bundle install in terminal


Then do rake cases in terminal


If there are failed scenarios you can see screenshot where the scenarios failed in folder screenshots


There is an html report generated too which you can see in reports folder


Issues Sometimes due to flakiness , when running consective tests via rake the frst secnario will sign in successfully but subsequent scenarios might not sign in successfully

