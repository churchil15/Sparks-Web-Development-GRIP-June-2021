# Sparks-Web-Development-GRIP-June-2021
Hello everyone, my name is Churchil Yash Rajpal and i am here to present 
before you a website on my SIP topic "Transaction System Website". 

# Why there is a need for online banking?  
Online Banking is not a new term, in-fact it was the need of the time as more and 
more customers and their data was increasing, handling it manually was becoming a very 
tedious task for the bank. Thus came the solution to shift the whole process on the internet 
and access them either through a website or an app. Our modal applies this banking process through website. 
Our modal was designed using HTML, CSS, and JavaScript as front-end technologies whereas PHP and MySQL were used as back-end technologies. MySQL has been used to create and design the database using MySQL commands.

# Advantages of the online banking
1. A user consuming this facility can conduct financial related tasks. 
2. Safe and secure mode of banking.
3. Customers can apply for the issuance of the passbook.
4. Update/Change their login credentials and PIN details.
5. 24/7 availability.

Like the person can observe his/her bank status, they can look the history of their transactions for 
a given period of time, they can open a fixed deposit, paying taxes, utility bills, recharge mobiles, 
DTH connections, insurance premium and many more. Online banking is not restricted by time. It is available 24/7. 
Users can rapidly check their account balances, financial records, and make transactions.

# Goals of the Project
1. A robust and effective web based online banking system.
2. Personal banking services that gives you complete control over all your banking demands online
3. Simple and easy user interface to work with.
4. Customer’s Satisfaction 
5. Saving Time, and
6. Security of the data.

The simple aim is to create a software programme that will handle the entire bank operation related administrative accounts, customers accounts, 
as well as maintain track of each customer's assets and other transaction procedures. 

# Security
Moving on to one of the most important feature of the project and also to the whole 
concept of online banking, that is, “Security”. This website insure security of the consumers data 
in mainly two ways. 
1. Each and every input is passed through mysqli_real_escape_string() to remove any special 
   characters from the string so that user can’t submit arbitrary input
   mysqli_real_escape_string()  is an inbulilt function in PHP which is used to escape all the special characters for use in the SQL query. It is used before inserting a string in the database, as it removes any special characters that may interfere with the query operations. 
   
   I'll demonstrate it's use from the code snippet:
      
        $uname = mysqli_real_escape_string($conn, $_POST["cust_uname"]);
      
        $pwd = mysqli_real_escape_string($conn, $_POST["cust_psw"]);

    Here as you can see $_POST[] variable is collecting the information in "cust_uname" variable 
    and $conn is our variable that we are using it for basically connecting with the database. 
    This whole thing is passed in mysqli_real_escape_string() function. Here $_POST[] is a 
    super global variable which is used to collect information sent through POST() method. 
    This method is mainly used to pass variable. The same thing is being done for password as well.
    
        $sql0 =  "SELECT * FROM customer WHERE uname='".$uname."' AND pwd='".$pwd.“’”;
        
        $result = $conn->query($sql0);
        
        $row = $result->fetch_assoc();

    Moving on as you can see in the next line that we retrieving information 
    from the customer table in database where from every coloumn we are seeing username and password 
    that matches from the one we have stored in $uname and $pwd variable above. We are storing this in 
    $sql0 variable. Next we are using an inbuilt function query() which is used to perform a query 
    against the database and checking if anything is returned from $sql0. This result is stored in 
    $result variable. That result is now fetched using fetch_assoc() 
    function which is basically used to fetch result of a particular row. 
    
2. Secondly, before any page of the customer/admin part is displayed a check is made to ensure 
   that the customer/admin session is valid and active.
   
        if (($result->num_rows) > 0) {      
      
        $_SESSION['loggedIn_cust_id'] = $row["cust_id"];     
      
        $_SESSION['isCustValid'] = true;  
      
        $_SESSION['LAST_ACTIVITY'] = time();  
      
        header("location:customer_home.php");   
      
        }
        
    
    Here if the condition $result object operator to num_rows is greater than 0 that means the 
    session is valid and we are going to store this information of this session using $_SESSION 
    inbuilt variable. Also we are storing the information of the last activity. Here $_SESSION 
    variable in PHP is a way to store information that can be used across multiple pages. 
    Session variable hold information about one single user, and are available to all pages 
    in one application. Unlike cookies this $_SESSION don not store information in your computer. 
    If all the conditions are true, this page will direct us to customer home page, otherwise we 
    are going to be redirected back to the login page. 
    Finally, sensitive details like password/username in a form are passed through method = “POST” 
    and not method = “GET” to prevent leak of such data via the URL.
   
# Overview of the Website Features (Admin)

1. Admin can access the website using his credentials.

        if (isset($_GET['loginFailed'])) {        
    
        $message = "Invalid Credentials ! Please try again.";   
    
        echo "<script type= 'text/javascript'>alert('$message');</script>";   
        
        }
        
     Here in the code you can see a condition is checked for admin that the Session is valid or not. 
     This is done via isset() function in PHP which is an inbuilt function that checks whether a 
     variable is set and is not NULL. This variable also checks if a declared variable has null 
     value, if it does, isset() returns false whereas it returns true in all other cases. 
     Here in the code you can see we are using php super global variable $_GET 
     to collect the data which was sent using GET() method. It is used to receive data from a 
     specified source. This whole thing is being passed in isset() function which if found 
     out has value other then NULL then the alert message of "Invalid Credentials ! Please Try again" will be shown.

2. Admin can add, edit or delete the customer.

   This addition is being done in the database as new customer is being created. First of all we are 
   going to take all the parameters which are required to create a customer and store them in their 
   respective variables, then this variables is being passed using mysqli_real_escape_string() method 
   and connections will be made with the database using $conn. They will me stored in their respective 
   php variables. After that we are going to use the ALTER command in the customer table of the 
   database in order to increment each coloumn by 1. Then finally we are going to add these values 
   using INSERT command into the customer table.
   Subsequently we are going to create a new passbook table and a beneficiary table for this new customer too. 

  
3. Admin can also view the Transaction History of  every customer.
4. There is no account for admin in the bank.


# Overview of Website Features (for customers)

1. Customers can login into website using the credentials given by the bank.
2. Customers can check the passbook related with their account and also can sort it with date and transaction number.
3. Customer can also add a beneficiary and transfer amount to him/her
4. Customer can delete a beneficiary.
5. Customer can debit/credit money into his/her account using an ATM simulator.

Whenever any kind of transaction takes place whether it debit or credit of money, the values for 
that transaction related to that particular user is automatically inserted to the coloumns of the 
passbook table of that customer. First the type is being checked whether the amount was credited or 
debited . If the amount was credited then the final balance is calculated as 
(current balance + the amount), otherwise for debit it is (current balance - the amount). 
Then finally the INSERT command is run on that id of that particular customer's passbook. 

If we are sending money from one beneficiary to another benficiary's account, 
the passbook of the receiving end user is going to be altered by 1 and then the values of that 
transaction will be inserted in it just like before. That same value will be shown in the sender's 
transaction history as well but in that case the updated balance will be (current balance - amount send) 
whereas the updated balance of receiver will be (current balance + amount received).

# Database

1. The database contains customer & admin tables.
2. Each customer has its own virtual passbook table linked with his/her account number.
3. Each customer has its own beneficiary table linked with his/her account number. 
4. Admin only has the right of managing customers and providing passbooks, username and password updates for them.

Database was designed in MySQL using MySQL commands. 
phpmyadmin open source administration tool facilitated all the complex SQL queries. 
The database with its related tables and coloumns were connected to front-end in our 
php script. This connection was made possible using mysqli() function in php which allows us 
to connect with the database servers while passing servername, username, password, and database 
name as parameters.


# Conclusion and Future Scope
In the end I just want to conclude that whenever we think about online banking, 
we generally picture a computer, a 3 or 4 step security process, and an interface that allows 
us to examine the balances of our various bank accounts and credit cards while also allowing to 
manage these things. 


    
    

   
   




