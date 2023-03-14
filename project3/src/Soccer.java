import java.sql.* ;

import static java.lang.System.exit;
import java.util.Scanner;

public class Soccer {

//todo:
    // need to delete all the hardcord( in functions) and use env varible for our userid and password instead
    public static void main ( String [ ] args ) throws SQLException
    {


        // Unique table names.  Either the user supplies a unique identifier as a command line argument, or the program makes one up.
        String tableName = "";
        int sqlCode=0;      // Variable to hold SQLCODE
        String sqlState="00000";  // Variable to hold SQLSTATE

        if ( args.length > 0 )
            tableName += args [ 0 ] ;
        else
            tableName += "exampletbl";

        // Register the driver.  You must register the driver before you can use it.
        try { DriverManager.registerDriver ( new com.ibm.db2.jcc.DB2Driver() ) ; }
        catch (Exception cnfe){ System.out.println("Class not found"); }

        // This is the url you must use for DB2.
        //Note: This url may not valid now ! Check for the correct year and semester and server name.
        String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";

        //REMEMBER to remove your user id and password before submitting your code!!
        String your_userid = "cs421g229";
        String your_password = "ilovesql1!";

        //AS AN ALTERNATIVE, you can just set your password in the shell environment in the Unix (as shown below) and read it from there.
        //$  export SOCSPASSWD=yoursocspasswd
        if(your_userid == null && (your_userid = System.getenv("SOCSUSER")) == null)
        {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        if(your_password == null && (your_password = System.getenv("SOCSPASSWD")) == null)
        {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        Connection con = DriverManager.getConnection (url,your_userid,your_password) ;
        Statement statement = con.createStatement ( ) ;


        int userchoice = showMenu();
        loop(userchoice,statement);


        statement.close ( ) ;
        con.close ( ) ;
    }

    public static void loop(int userchoice, Statement statement)throws SQLException{
        if (userchoice == 1) {
            Q1();
            }
        else if (userchoice == 2){
            Q2();
        }
        else if (userchoice == 4){
            System.out.println("You've successfully exited the application.");

        }
    }



//Q1
    public static void Q1() throws SQLException{

        int sqlCode= 0;      // Variable to hold SQLCODE
        String sqlState="00000";  // Variable to hold SQLSTATE

    String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";
    String your_userid = "cs421g229";
    String your_password = "ilovesql1!";

    Connection con = DriverManager.getConnection (url,your_userid,your_password) ;
    Statement statement = con.createStatement ( ) ;

        //get country from user input
        String country = "\'";
        country +=chooseCountry();
        country += "\'";

        try {
            String querySQL = "SELECT playing_country, opposing_country, date,round,id from Games WHERE playing_country = " + country +"OR opposing_country = " + country;

            java.sql.ResultSet rs = statement.executeQuery(querySQL);
            while (rs.next()) {
                String country1 = rs.getString(1);
                String country2 = rs.getString(2);
                Date date = rs.getDate(3);
                int round = rs.getInt(4);
                int game_id = rs.getInt(5);
                int numgoals_country1 = getNumGoals(country1,game_id);
                int numgoals_country2 = getNumGoals(country2,game_id);
                int num_tickets = getNumTickets(game_id);


                //System.out.println("game ids is " + game_id);
                System.out.println(country1 + "  " + country2 + "  " + date + "   " + getRound(round) + "   " + numgoals_country1 + "    " + numgoals_country2 + "     " + num_tickets);

            }
        }
        catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        statement.close ( ) ;
        con.close ( ) ;


        //afterwards, ask if the user wants to keep asking / or return to the main menu after Question 1

        String answer = returnfromQ1();
        if (answer.equals("A")) { //find matches of another country
            Q1();
        } else if (answer.equals("P")) { //go back to main menu
            int choice = showMenu();
            loop(choice, statement);
        }

    }

    //Q2
    //main function body for Q2, gets ID + country for the following PrintPlayers function
    public static void Q2() throws SQLException {

        int sqlCode = 0;      // Variable to hold SQLCODE
        String sqlState = "00000";  // Variable to hold SQLSTATE
        String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";
        String your_userid = "cs421g229";
        String your_password = "ilovesql1!";

        Connection con = DriverManager.getConnection(url, your_userid, your_password);
        Statement statement = con.createStatement();

        try {
            String query1 = "SELECT current_date FROM Games";

            //to harrison: dont know how to do the 3 day window
            String querySQL = "SELECT id,playing_country, opposing_country,date,round FROM Games WHERE date > current_date AND date < \'2023-03-17\' ";

            java.sql.ResultSet rs = statement.executeQuery(querySQL);
            while (rs.next()) {
                int id = rs. getInt(1);
                String country1 = rs.getString(2);
                String country2 = rs.getString(3);
                Date date  = rs. getDate(4);
                int round = rs.getInt(5);
                System.out.println(id + "   " + country1 + "  " + country2 + "    " + date + "    " + getRound(round));

            }
        }
        catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }

        int matchID = getMatchIDQ2();
        String country = "\'";
        country +=chooseCountry();
        country += "\'";

        printPlayers(matchID,country);

        statement.close ( ) ;
        con.close ( ) ;



    }
    public static void printPlayers(int id,String country) throws SQLException {



        String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";
        String your_userid = "cs421g229";
        String your_password = "ilovesql1!";


        Connection con = DriverManager.getConnection(url, your_userid, your_password);
        Statement statement = con.createStatement();

        System.out.println("The following players are already entered for match "+ id);


        int sqlCode = 0;      // Variable to hold SQLCODE
        String sqlState = "00000";  // Variable to hold SQLSTATE

        int player_count = 0; //to check if we reached max three players per country per game

        try {
            String query = "SELECT shirt_num, position FROM Performs WHERE country =" + country + "AND id =" + id;
            java.sql.ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                player_count+=1;
                int shirt_num = rs.getInt(1);
                String postiion = rs.getString(2);

                System.out.println(getPlayerName(shirt_num,country) + "  " + shirt_num + "  " + postiion + "   from minute 0   to minute NULL yellow: 0 red: 0");

            }
        }
        catch (SQLException e1) {
            sqlCode = e1.getErrorCode(); // Get SQLCODE
            sqlState = e1.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e1);
            System.out.println("error in first insert player  function, gameid is " + id);
        }

        if (player_count >= 3){
            System.out.println("You already exceeded 3-player insertion limit");
            //return to main menu
            int userchoice = showMenu();
            loop(userchoice,statement);
        }
        else {

            System.out.println("Possible palyers from " + country + "not yet selected");
            int[] numbers = new int[10];
            int index = 0;
            try {
                String query2 = "SELECT shirt_num, position FROM  Players WHERE country =" + country + "AND shirt_num NOT IN (SELECT shirt_num FROM Performs WHERE id = " + id + ")";
                java.sql.ResultSet rs2 = statement.executeQuery(query2);

                while (rs2.next()) {
                    index += 1;
                    int shirt_num = rs2.getInt(1);
                    numbers[index] = shirt_num; //add player numbers to the array
                    String postiion = rs2.getString(2);

                    System.out.println(index + ". " + getPlayerName(shirt_num, country) + "  " + shirt_num + "  " + postiion);

                }
            } catch (SQLException e1) {
                sqlCode = e1.getErrorCode(); // Get SQLCODE
                sqlState = e1.getSQLState(); // Get SQLSTATE

                // Your code to handle errors comes here;
                // something more meaningful than a print would be good
                System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                System.out.println(e1);
                System.out.println("error in second insert player  function, gameid is " + id);
            }

            String answer = Q2askforPlayer();

            if (answer.equals("P")) {
                Q2();   //if choose to go back to the previous menu
            } else {

                //ask user to enter player position
                int num = Integer.valueOf(answer);
                System.out.println("please enter play position for your chosen player number: " + num);
                String answer2 = "\'";
                Scanner keyboard = new Scanner(System.in);
                answer2 += keyboard.nextLine();
                answer2 += "\'";

                //now enter the new info to the performs table
                try {
                    String update = "INSERT INTO Performs(country, shirt_num, id, etime,position, Rcard,Ycard) " +
                            "VALUES (" + country + "," + numbers[num] + "," + id + ",'00:00:00'," + answer2 + ", 0, 0)";
                    System.out.println(update);
                    statement.executeUpdate(update);
                } catch (SQLException e1) {
                    sqlCode = e1.getErrorCode(); // Get SQLCODE
                    sqlState = e1.getSQLState(); // Get SQLSTATE

                    // Your code to handle errors comes here;
                    // something more meaningful than a print would be good
                    System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                    System.out.println(e1);
                    System.out.println("error in third update part insert player function, gameid is " + id);
                }
                Q2();
            }
        }


        statement.close ( ) ;
        con.close ( ) ;

    }


 //menu options /returning to menus
   public static int showMenu() {

     int option = 0;

     System.out.println("Soccer Main Menu:");
     System.out.println("----------------------");
     System.out.println("1.List information of matches of a country");
     System.out.println("2.Insert initial Player information for a match ");
     System.out.println("3.option3 ");
     System.out.println("4.Exit the application");

     System.out.println("--------------");
     System.out.println("Enter your choice:");
       Scanner keyboard = new Scanner(System.in);
     option = keyboard.nextInt();

     return option;
 }
 public static String returnfromQ1(){
     String answer = "";
     Scanner keyboard = new Scanner(System.in);
     System.out.println("Enter [A] to find matches of another country, [P] to go to the previous menu");
     answer += keyboard.next();
     return answer;
 }

    //scanning functions for user input
    public static String chooseCountry(){
        String country = "";
        Scanner keyboard = new Scanner(System.in);
        System.out.println("Enter country:");
        country += keyboard.next();
        return country;

    }
    public static int getMatchIDQ2(){
        int matchid = 0;
        Scanner keyboard = new Scanner(System.in);
        System.out.println("Enter the match id: ");
        matchid = keyboard.nextInt();
        return matchid;
    }
    public static String Q2askforPlayer(){
        String answer = "";

        Scanner keyboard = new Scanner(System.in);
        System.out.println("Enter number of the player you want to insert, [P] to go to the previous menu");
        answer += keyboard.next();


        return answer;
    }


    //helper SQL query functions
    public static int getNumTickets(int gameID) throws SQLException {

        String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";
        String your_userid = "cs421g229";
        String your_password = "ilovesql1!";


        Connection con = DriverManager.getConnection(url, your_userid, your_password);
        Statement statement = con.createStatement();


        int sqlCode = 0;      // Variable to hold SQLCODE
        String sqlState = "00000";  // Variable to hold SQLSTATE
        int numtickets = 0;

        try {
            String query = "SELECT * FROM Tickets, Sold_tickets WHERE Tickets.tid = Sold_tickets.tid AND Tickets.gid =" + gameID;
            java.sql.ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                numtickets += 1;

            }
        }
        catch (SQLException e1) {
            sqlCode = e1.getErrorCode(); // Get SQLCODE
            sqlState = e1.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e1);
            System.out.println("error in insert play function, gameid is " + gameID);
        }

        statement.close ( ) ;
        con.close ( ) ;

        return numtickets;
    }
    public static String getRound(int r){
        String round = "";
        if (r == 1){
            round += "group-round";
        }
        else if (r ==2){
            round += "round-of-16";
        }
        else if (r == 3) {
            round += "quarterfinals";
        }
        else{
            round += "finals";
        }
        return round;
    }

    public static String getPlayerName(int shirt_num, String country) throws SQLException {

        String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";
        String your_userid = "cs421g229";
        String your_password = "ilovesql1!";


        Connection con = DriverManager.getConnection(url, your_userid, your_password);
        Statement statement = con.createStatement();


        int sqlCode = 0;      // Variable to hold SQLCODE
        String sqlState = "00000";  // Variable to hold SQLSTATE
        String pname = "";

        try {
            String query = "SELECT pname FROM Players WHERE country = " + country + "AND shirt_num = " + shirt_num;
            java.sql.ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                pname += rs.getString(1);

            }
        }
        catch (SQLException e1) {
            sqlCode = e1.getErrorCode(); // Get SQLCODE
            sqlState = e1.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e1);
            System.out.println("error in getPlayerName function");
        }

        statement.close ( ) ;
        con.close ( ) ;

        return pname;
    }
    public static int getNumGoals( String country, int gameID) throws SQLException{
        String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";
        String your_userid = "cs421g229";
        String your_password = "ilovesql1!";

        Connection con = DriverManager.getConnection (url,your_userid,your_password) ;
        Statement statement = con.createStatement ( ) ;

        int sqlCode=0;      // Variable to hold SQLCODE
        String sqlState="00000";  // Variable to hold SQLSTATE

        String c = "\'";
        c += country;
        c += "\'";
        int numgoals = 0;
        //query the num of goals for playing country
        try {
            String query2 = "SELECT occurrence from Goals WHERE country = " + c + "AND id =" + gameID;
            java.sql.ResultSet rs = statement.executeQuery(query2);

            while (rs.next()){
                numgoals +=1;
                //to test the code
                //int occurence = rs.getInt(1);
                //System.out.println("adding one goal" + occurence);
            }
        }
        catch (SQLException e1)
        {
            sqlCode = e1.getErrorCode(); // Get SQLCODE
            sqlState = e1.getSQLState(); // Get SQLSTATE

            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e1);
        }

        statement.close ( ) ;
        con.close ( ) ;

        return numgoals;

    }

    }
