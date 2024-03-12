package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author java2
 */
public class Ftpcon {

    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    boolean status;

    public boolean upload(File file,String fname) {
        try {
            client.connect("ftp.drivehq.com");
            client.login("FratelloDrivehq", "drivehq@123");
            client.enterLocalPassiveMode();
            fis = new FileInputStream(file);
            status = client.storeFile(fname, fis);
            client.logout();
            fis.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;
        }
    }
    
    public boolean delete(String path) {
        try {
            client.connect("ftp.drivehq.com");
            client.login("FratelloDrivehq", "drivehq@123");
            client.enterLocalPassiveMode();
            status = client.deleteFile(path);
            
            client.logout();
            

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;
        }
    }
    
    
    public boolean getFile(String path) {
        try {
            client.connect("ftp.drivehq.com");
            client.login("FratelloDrivehq", "drivehq@123");
            client.enterLocalPassiveMode();
            OutputStream out = new FileOutputStream(path);
            status = client.retrieveFile(path,out);
            client.logout();
           

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;
        }
    }
    
    public boolean getFiles() {
        try {
        	FTPClientConfig configuration = new FTPClientConfig(FTPClientConfig.SYST_NT);
        	client.configure(configuration);
            client.connect("ftp.drivehq.com");
            client.login("FratelloDrivehq", "drivehq@123");
            client.enterLocalPassiveMode();
            FTPFile[] files = client.listFiles("/");
            for(int i=0;i<files.length;i++){
            System.out.println(files[i].getLink()+" "+files[i].getName()+" "+files[i].getUser()+" "+files[i].getSize()+" "+files[i].getType());
            }
            client.logout();
           

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;
        }
    }
    public static void main(String args[])
    {   String fname="E:\\check.txt";
    	Ftpcon ftpcon=new Ftpcon();
    	File file=new File(fname);
    	FileWriter fr;
		try {
			System.out.println("uploading");
			fr = new FileWriter(file);
			fr.write("hii i am okay");
			fr.flush();
			ftpcon.getFiles();
			//ftpcon.getFile("check.txt");
	    	//ftpcon.upload(file, "check.txt");
	    	//ftpcon.delete("java.txt");
	    	
	    	System.out.println("completed");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
}
