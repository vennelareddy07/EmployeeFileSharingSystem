package action;
import java.util.TimerTask;
import java.util.Date;
import java.util.Timer;
import java.sql.*;
import java.text.SimpleDateFormat;

import databaseconnection.*;
public class ScheduledTask extends TimerTask{
	Date now; // to display current time

	// Add your task here
	public void run() {
		try{
		now = new Date(); // initialize date
		System.out.println("Time is :" + now); // Display current time
		SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yyyy");
		String cdate = sd.format(now);
		
		SimpleDateFormat sd1 = new SimpleDateFormat("hh:mm a");
		String ctime = sd1.format(now);
		System.out.println(ctime);
		Connection con=DBCon.getConnection();
		Statement st=con.createStatement();
		Statement st1=con.createStatement();

		ResultSet rs=st.executeQuery("select * from files") ;

		   while(rs.next())
		   { 
			   String fileid = rs.getString("fileid");
			   String fname  = rs.getString("fname");
			   String ed = rs.getString("expiredate");
			   
			   if(cdate.equalsIgnoreCase(ed)){
				   System.out.println("matched1");
				   String q1 = "delete from files where fname='"+fname+"' and fileid='"+fileid+"'";
				   String q2 = "insert into noti(fileId,fname,task,tby,tdate,role,uploadedby,expiredate) values('"+fileid+"','"+fname+"','Deleted','System',now(),'System','System','"+ed+"')";

				   st1.addBatch(q1);
				   st1.addBatch(q2);
				   
				   st1.executeBatch();
				   
				   Ftpcon ftp = new Ftpcon();
				   ftp.delete(fname);
				   
				   System.out.println("deleted "+fname);
				   
//				   if(ctime.equalsIgnoreCase("11:59 PM")){
//					   System.out.println("matched2");
//					  
//					   //System.exit(0);
//
//				   }
				   
			   }
			   
			   //System.out.println("Data is  :" + rs.getString("fileid")+" "+rs.getString("fname")+" "+rs.getString("expiredate")); // Display current time
		   }
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}
	
	public static void main(String args[]) throws InterruptedException {

		Timer time = new Timer(); // Instantiate Timer Object
		ScheduledTask st = new ScheduledTask(); // Instantiate SheduledTask class
		time.schedule(st, 0, 1000*60*2); // Create Repetitively task for every 1 secs

		//for demo only.
//		for (int i = 0; i <= 5; i++) {
//			System.out.println("Execution in Main Thread...." + i);
//			Thread.sleep(2000);
//			if (i == 3) {
//				System.out.println("Application Terminates");
//				System.exit(0);
//			}
//		}
	}
}
