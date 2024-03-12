<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@include file="aback.jsp"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*,action.*,databaseconnection.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>

<html>
<head>
</head>
<body>
<%
String ouname=(String)session.getAttribute("ouname");
int ownerId=(Integer)session.getAttribute("ownerId");
String uname=(String)session.getAttribute("uname");

String myKey=null;
String edata=null;
Thread.sleep(100);
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\uploads\\");
		String paramname=null;
		String myfile=null;
		
   		  File file1 = null;
   		  String fdata="";
   				String  url=null;
   				String db=null;
   		
		
		try {
			 
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("myfile"))
				{
					myfile=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("fdata"))
				{
					fdata=multi.getParameter(paramname);
				}
		
				}
			
			String expdate=multi.getParameter("expdate");
			//System.out.println("hello"+expdate);
		
	int f = 0;String fPath=null;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			myfile = multi.getFilesystemName(paramname);
			 fPath = context.getRealPath("\\uploads\\"+myfile);
			file1 = new File(fPath);
			FileReader fr=new FileReader(fPath);
			BufferedReader br=new BufferedReader(fr);
			FileInputStream fs = new FileInputStream(file1);
			String sCurrentLine=null;
			while ((sCurrentLine = br.readLine()) != null) {
		    	fdata=fdata+sCurrentLine;
		    	
			}
			
			
			
			
	    
			 
// 		    FileWriter fw=new FileWriter("E://sai.txt");
// 		    BufferedWriter bw=new BufferedWriter(fw);
// 		    bw.write(fdata);
// 		    bw.flush();

			
		}	
	}   
	          DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
           Date dateobj = new Date();

             Calendar calobj = Calendar.getInstance();

	         SecretKeySpec secretKey=null;
	         secretKey=AES1.setKey("secret123");//df.format(calobj.getTime()).toString());
	         edata=AES1.encrypt(fdata.trim(),secretKey.toString());
	         
	         Connection con1=DBCon.getConnection();
	    		Statement st1=con1.createStatement();
	  		

	    		PreparedStatement ps = con1.prepareStatement("select * from files where uploadedby='"+uname+"' and fdata='"+edata+"'");
	    	
	    						   	
	    		ResultSet rs1=ps.executeQuery();
	    		
	  		
	  		
	  		if(rs1.next())
		    {
	  			
	  			
	  				url="message.jsp?msg=File Content Already Exisisted with another file name&color=red&role=Authority";
				    response.sendRedirect(url);
	  				
	  			
		    }
	         
	         
	         
	        
           
			Connection conn=DBCon.getConnection(); 
            Statement st=conn.createStatement();
            Statement st2=conn.createStatement();
            Statement st3=conn.createStatement();
            
            
            ResultSet rs=st.executeQuery("select * from files where fname='"+myfile+"' and uploadedby='"+uname+"'");
            if(rs.next())
            {
            	
            	
            	
            	
            	url="message.jsp?msg=File Already Exisisted&color=red&role=Authority";
			    response.sendRedirect(url);
            }
            
            Random r=new Random();
	         int keyy=r.nextInt(442234);
	        FileInputStream fs1 = null;
	        
           // drive hq
     		String fname=myfile;
        	Ftpcon ftpcon=new Ftpcon();
   	    File file=new File(fPath);
   	FileWriter fr;
		try {
			System.out.println("uploading");
			fr = new FileWriter(file);
			fr.write(edata);
			fr.flush();
	    	ftpcon.upload(file, fname);
	    	System.out.println("completed");
		} catch (IOException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}
            
          int x=st.executeUpdate("insert into files(fname,fdata,fdate,akey,tkey,status,uploadedby,expiredate) values('"+myfile+"','"+edata+"',now(),'"+secretKey.toString()+"','"+Integer.toString(keyy)+"','uploaded','"+uname+"','"+expdate+"')");
        
			
          	ResultSet rs2=st2.executeQuery("select LAST_INSERT_ID() from files");
          	
		   
			if(rs2.next())
			{
          		st3.executeUpdate("insert into noti(fileId,fname,task,tby,tdate,role,uploadedby,expiredate) values('"+rs2.getInt(1)+"','"+myfile+"','UPLOADED','Authority',now(),'Authority','"+uname+"','"+expdate+"')");

				url="message.jsp?msg=File Uploaded Successfully&color=green&role=Authority";
			    response.sendRedirect(url);
			}
			
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>