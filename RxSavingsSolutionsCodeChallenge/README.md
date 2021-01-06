# Setup and testing instructions

## Tools Needed:
### Visual Studio 2019
### SSMS and SQL Server Installed
### Net Core 3.1 installed locally
### Postman API Client

#### Open SSMS and click on your local SQL Server, and select 'New Query' in the context menu.
#### With the new query open, copy the contents from the 'CreateDatabase.sql' file into the window and run it. This will populate the database with the necessary Pharmacy data.
#### Open Visual Studio 2019 and run the application using the 'IIS Express' option in the center top of the program. A new browser window should open and be directed to localhost:44330/pharmacy. The GET method of this endpoint should simply return "Hello World".
#### Using Postman, create a new POST request for 'https://localhost:44330/pharmacy', with the following JSON in the body of the request: ``` {"latitude": 39.24517,"longitude": -95.00031} ```
#### This should return a body similar to the following: ``` { "name": "PRICE CHOPPER PHARMACY", "address": "3700 W 95TH ST", "distance": 28.127668342941465, "city": "LEAWOOD", "state": "KS" } ```