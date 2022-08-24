# sql-challenge

# Opening Project
To open the schema and query sql files you can use a source code editor of your choice to view the code, I use visual studio code. If you want to run the files you need download all necessary csv files in the data folder, create a database in pg admin, create a new query tool and open schema.sql. Then you need to import all csv files into their respective table. After this create a new query tool and open the query.sql file. 

To open the Bonus.ipynb file, please use jupyter notebook. To run this code you must provide your own username and password for pgadmin for the url. Replace "{userpass}" with "username:password", username and password being your unique credentials.

# Methods
First I created each table and inputed the respective csv data into them. I made sure to set up keys so that I can see relationships between the tables. 
After creating all of my tables I perform joins to filter the data to get the information required of me. 

Lastly, I created a jupyter notebook file for additional analysis. I create a connection to my database and import all of the tables as dataframes. I create a histograph showing the most common salary ranges for employees and the average salary given an employee's title.

# Findings
I found that most employees are paid within the 40k range. The employees that get paid the most on average are either staff or senior staff. It might be interesting to look further into each title's average pay to see if there are any outliers in the data. 