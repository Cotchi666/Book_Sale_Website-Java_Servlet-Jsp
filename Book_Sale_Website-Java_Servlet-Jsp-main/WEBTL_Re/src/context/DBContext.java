
package context;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBContext {
    
	 public Connection getConnection()throws Exception {
		 
		 String url = "jdbc:sqlserver://"+ serverName +":"+ portNumber + ";instance=" + instance +";databaseName="+dbName;
	        if(instance == null || instance.trim().isEmpty())
	            url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
	       
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	        
	        return DriverManager.getConnection(url, userID, password);
	    }   
	    /*Insert your other code right after this comment*/
	    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
	    private final String serverName = "localhost";
	    private final String dbName = "QLG";
	    private final String portNumber = "1433";
	    private final String instance="DESKTOP-ISGCAJJ";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
	    private final String userID = "sa";
	    private final String password = "sa";
	    
	    public static void main(String[]args) {
	    	DBContext db= new DBContext();
	    	try {
				System.out.println(db.getConnection()+"");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
	            try {
	            	db.getConnection().close();
	            } catch (SQLException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            } catch (Exception e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }
	    }}
 