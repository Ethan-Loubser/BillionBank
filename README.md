Index:
1.	Introduction
2.	System architecture
3.	Technical stack
4.	Security
5.	Sources & Tools
6.	Permissions
7.	System requirements
8.	User steps

1. Introduction
1.1 Purpose
The Billion Bank Web Application’s purpose is to allow Users to manage their Billion Bank Profiles and Accounts.

1.2 Features
•	Create Account
•	Display Account Information
•	Delete Account
•	Log In
•	Log Out
•	Sign Up (Create Profile)
•	Display Profile Information
•	Update Profile Information
•	View Profile Transfer Logs 
•	View Account Transfer Logs
•	Order Billion Bank Card
•	Block Billion Bank Card
•	Make Payment
•	Change Password
•	2 Step verification Questions


1.3 Key Features
•	LogIn
The LogIn feature is the most important feature as this verifies that the user is a registered Billion Bank customer and only after the user have logged in can any of the other features be used.
•	SignUp
A user can have one profile and create as many Accounts as necessary which will be linked to their profile.
•	Payment
Payment’s can be made between a user’s accounts using the Payment feature. Each transaction will be recorded in a transaction log which can be viewed by the user on the Home page or the Summary page for a broader more detailed version.
•	Create account
A user may own multiple accounts and can create a new account by simply providing a name in the Account name TextBox on the Home Page and clicking the Create Account button. A new account will then be created if an account with that name doesn’t already exist. Each new User will be rewarder with a R100 sign up reward directly deposited into their first account upon creation.


2. System Architecture
2.1 Components

Pages:
-	BB2Home.aspx
-	Login.aspx
-	SignUp.aspx
-	ChangeDetails.aspx
-	Summary.aspx
-	Cards.aspx
-	Payment.aspx
-	Forget.aspx
Master Page:
-	BB2Template.master
User Control:
-	BB2Header.ascx
Web Service:
-	BillionBankWebService
Database:
-	BillionBankDB
Transaction Log File:
-	BillionBankTrans.log


2.2 BillionBankWebService Web Methods: 

•	FetchUserDetails
•	AccNameFetch
•	NewAccDetails
•	CreateAccount
•	DeleteAccount
•	FetchDetails
•	FetchAccTrans
•	CardSet
•	CardHolder
•	Forget
•	ForgAnsw
•	Prorupts
•	LogIn
•	Sub
•	Add
•	InsDBTrans
•	FetchSenBal
•	UserUpdate
•	EmailValid
•	IDValid
•	PhoneValid
•	SignUp
•	SignUp
•	FetchProfTran
•	FetchTranDetails


3. Technical Stack
3.1 Frontend
•	Master page: Used to create the general layout for the interface of the Web App.
•	User Control: Used to create the Header for easy navigation, which will be displayed on every page as it forms part of the Master page layout.
•	Web Form: Multiple Web forms are used to display the different interfaces of the different pages that will be used.
•	HyperLink: Hyperlinks are used to navigate through the different pages of the Web Application.
•	DropDownMenu: A DropDownMenu is used to navigate to pages regarding a user’s profile, clicking on any of the Menu Items will redirect the user to their linked pages.
•	ListBox: ListBoxes are used to display the owned accounts of the logged in user as well as their transaction logs.
•	Text Boxes: Primarily used to display or update information to or from the BillionBankDatabase.
•	Labels: Labels are used to display information or instructions.
•	Validators: Various Validators are used to display instructions or any errors that might occur.
•	Image: Displays one of two images depending on whether the specified is a card holder or not.

3.2 Backend
•	Event Handlers: The Event Handlers of the controls are primarily used to call Web Methods from the BillionBankWebService and to display info returned from the Web Service in ListBoxes and TextBoxes on the interface.
•	Server Object: A server object is created each time a user logs in and stores the logged in user’s UserID for referencing and validation purposes.
•	Web Methods: Web Methods are used to read and write data to and from the Database and the WebApp as well as perform any calculations and functionality needed by the System.
•	Transaction Log File: Records Transaction logs for Accounts.

3.3 Database
A Microsoft Access database is used to save information regarding Billion Bank profiles and accounts linked to those profiles. It includes three Tables:
•	User Table: Contains data regarding user profiles used for referencing and validation. Each user can only have one profile.
•	Account Table: Contains data used for referencing as well as information regarding each account such as whether they are card holders or not as well as their balance. A User can create as many accounts as necessary.
•	Transactions Table: Contains data regarding any transactions made by Billion Bank accounts, each account can have multiple Transactions.


3.4 APIs
•	BillionBankWebService:
Used to read and write data to and from the Billion Bank Database as well as make calculations.


4. Security
4.1 Authentication
A user will be Authenticated upon login by checking the Database for the values entered in the “Email Address” and “Password” TextBoxes.

4.2 Authorization
Only after successful authentication will a user be granted the authority to interact with Billion Bank features. No pages will be accessible by the user before login, accept for the SignUP and Forgot Password Pages.


5. Sources & Tools
- Trouble Shooting: Youtube; StackOverFlow; MyLMS Learning Manual
- Interface Design: All images created and edited using PhotoShop.
- Database: Microsoft Access
- WebService: Visual Studio
- WebApp: Visual Studio


	6. Permissions
-  Log on to the computer with Administrative rights for the user.
-	From Windows Explorer, select Tools > Folder Options. In the Folder Options Window, select View. Then in Advanced Settings scroll down to the very bottom and uncheck Use simple file sharing (recommended).
-	Right-click the database file (.mdb or .accdb) and choose Properties.
-	Click on the Security Tab.
-	In the Group or user names section, click on the user with whom the currently logon is registered.
-	In the Permissions for Users Section, check the Allow option for all permissions.


7. System requirements
- Dual Core Processor
- Microsoft Windows 10
- 2 GB RAM or higher
- 50 GB of available disk space
- Microsoft Visual Studio 2019 Community Edition
- Microsoft SQL Server 2019
- Microsoft SQL Server 2019 Management Studio
- Microsoft Office Access 2019


	8. User steps
- Make sure all needed software mentioned in “7. System requirements” is installed.
- Download the zipped BillionBank folder, right click on it and then on unzip.
- Open both BillionBank2 and BillionBankWebService.
- Make sure to run the BillionBankWebService before running the BillionBank2 WebApp

- Upon successful execution the user will be introduced with the LogIn page.
![image](https://github.com/user-attachments/assets/bcdfb4ac-ba14-4419-bae5-bfaf8be7bd7f)

-	Unless the user already has a registered account, they would first have to create an account by clicking on the “SignUp” button. The user will then be directed to the SignUp page:
 ![image](https://github.com/user-attachments/assets/3292c0b3-9b34-45b3-a091-c72649b86d6e)

-	Here the user will need to provide various information inside the TextBoxes.
-	After all TextBoxes have been filled the user has to click on the “Create Account” button. This will create an account and direct the user back to the LogIn page.
 ![image](https://github.com/user-attachments/assets/766605cc-171e-447a-823e-278759786b7a)

-	The user can now enter their login details in the TextBoxes and click on the “Log In” button which will direct them to the HomePage.
 ![image](https://github.com/user-attachments/assets/fa847a1a-2a88-4b65-9c94-af3afd10bfb0)

-	First the User needs to create a new account, they can do this by entering a name in the “Account Name” TextBox and clicking on the “Create Account” button:
 ![image](https://github.com/user-attachments/assets/29a6fdef-cfc0-4603-9872-a91ea2854322)

-	New account as well as it’s information will then be displayed on the HomePage:
 
-	The user can access the Cards Page through the navigation menu on the top of the screen.
-	After clicking on the “Cards” HyperLink the user will be redirected to the Cards page:
 ![image](https://github.com/user-attachments/assets/dd2f8a46-9056-4e03-89f5-472b27188aef)

-	Here the user can display their Account cards by entering an account name into the “Account Name” TextBox and clicking on the “Card Info” button:
 ![image](https://github.com/user-attachments/assets/0e8ba658-1cdf-4067-bc06-e64c9a185f32)

-	If the user has no owned account cards, an image stating “No Card” will be displayed. The user can order a new card by clicking on the “Order” button:
  ![image](https://github.com/user-attachments/assets/a4786323-6f6d-4665-9389-55f5864181ad)

-	Before the user can transfer money they first need to create a second account on the HomePage (Account names has to be unique):
 ![image](https://github.com/user-attachments/assets/442c81db-d063-4a5d-96d4-3a115b684416)

-	The user can go to the Payment page by using the navigation bar at the top and clicking on the “Payment” HyperLink.
-	Upon clicking on the “Payment” HyperLink the user will be redirected to the Payment page:
 ![image](https://github.com/user-attachments/assets/3188cae3-a358-4063-a76d-ed7cb4a0e737)

-	Here the user can make a payment by entering the sending account name inside the “Sending account” TextBox and then clicking the “Make Payment” button.
-	User must then specify the Payment amount, beneficiary and reference inside the Textboxes, and then click on the “Confirm Payment” button:
 ![image](https://github.com/user-attachments/assets/782c83ef-95dd-422a-b059-7b27390b8a3b)

-	After successful payment a Transaction log will be made which will be displayed on the HomePage when displaying account information:
 ![image](https://github.com/user-attachments/assets/2ee6e189-102d-4874-9793-0e2397c0efde)

-	Another transaction log will be displayed on the SummaryPage, this page can be accessed by clicking on the “Summary” HyperLink in the Navigation menu at the top:
 ![image](https://github.com/user-attachments/assets/09c5cb11-5120-4d75-8fc0-045f7498791b)

-	On the summary page the user can specify which Transaction to view by entering a Transaction number inside the “Transaction num” TextBox:
 ![image](https://github.com/user-attachments/assets/83e99a2f-f1ab-4d13-9df5-4945b118aa0b)

-	The user can view or change their profile details on the ChangeProfilePage, which can be accessed through the “Profile” dropdown menu in the top right:
 ![image](https://github.com/user-attachments/assets/163a89d2-c9f1-47d2-97eb-b8e003cf0d9d)

-	Upon clicking on the “Change Details” MenuItem the user will be redirected to the ChangeProfilePage:
 ![image](https://github.com/user-attachments/assets/2d2823d7-ae10-41cf-98a9-4db54ba76b38)

-	Here the user can edit their profile details inside the TextBoxes and save it to the BillionBankDB by clicking on the “Update Details” button.
-	The User can log out of the Website at any time by clicking on the “Log Out” MenuItem in the “Profile” drop-down menu. This will redirect them to the LogIn page.
-	When in the LogIn page and a user has forgotten their password they can change it in the ForgetPage, which can be accessed by clicking on the “Create new password” button:
![image](https://github.com/user-attachments/assets/5dc7f85c-df52-40bb-967a-69e04ec98b3b)

-	Upon clicking on the “Create new password” button the user will be redirected to the ForgetPage where the user must provide their Email Address:
 ![image](https://github.com/user-attachments/assets/7d3390cc-48da-4175-82ec-3c1bd77e2b11)

-	After Email Address has successfully been authenticated the user must answer their 2 step verification question inside the “Your Answer” TextBox and must then click on the “Submit Answer” button:
 ![image](https://github.com/user-attachments/assets/560977ce-521a-4143-bf5d-24fdd357d09a)

-	The user can then enter their new password inside the “New Password” TextBox and then confirm the new password inside the “Confirm new password” TextBox.
-	The user can then click on the “Confirm new password” button to save the new password to the BillionBankDB:
 ![image](https://github.com/user-attachments/assets/60858b76-2491-4b37-9852-c672480c2c23)
