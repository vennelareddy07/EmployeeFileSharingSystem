package action;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Arrays;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import javax.print.DocFlavor.STRING;

import org.apache.commons.codec.binary.Base64;



public class AES
{

	
//    private static SecretKeySpec secretKey ;
   private static byte[] key ;
    
	private static String decryptedString;
	private static String encryptedString;
 
    
    public static SecretKeySpec setKey(String myKey){
    	MessageDigest sha = null;
    	SecretKeySpec secretKey=null;
		try {
			key = myKey.getBytes("UTF-8");
			System.out.println(key.length);
			sha = MessageDigest.getInstance("SHA-1");
			key = sha.digest(key);
	    	key = Arrays.copyOf(key, 16); // use only first 128 bit
	    	System.out.println(key.length);
	    	System.out.println(new String(key,"UTF-8"));
		    secretKey = new SecretKeySpec(key, "AES");
		    
		    
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return secretKey;
    }
    
    public static String getDecryptedString() {
		return decryptedString;
	}

	public static void setDecryptedString(String decryptedString) {
		AES.decryptedString = decryptedString;
	}

    public static String getEncryptedString() {
		return encryptedString;
	}

	public static void setEncryptedString(String encryptedString) {
		AES.encryptedString = encryptedString;
	}

	public static String encrypt(String strToEncrypt,String myKey)
    {  SecretKeySpec secretKey=null;
      String edata=null;
		MessageDigest sha = null;
		try {
			key = myKey.getBytes("UTF-8");
			System.out.println(key.length);
			sha = MessageDigest.getInstance("SHA-1");
			key = sha.digest(key);
	    	key = Arrays.copyOf(key, 16); // use only first 128 bit
	    	System.out.println(key.length);
	    	System.out.println(new String(key,"UTF-8"));
	    	secretKey= new SecretKeySpec(key, "AES");
		    
		    
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try
        {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
        
         
            edata=Base64.encodeBase64String(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
        
        }
        catch (Exception e)
        {
           
            System.out.println("Error while encrypting: "+e.toString());
        }
        return edata;

    }

    public static String decrypt(String strToDecrypt,String myKey)
    {
    	SecretKeySpec secretKey=null;
    	MessageDigest sha = null;
        String fdata=null;
		try {
			key = myKey.getBytes("UTF-8");
			System.out.println(key.length);
			sha = MessageDigest.getInstance("SHA-1");
			key = sha.digest(key);
	    	key = Arrays.copyOf(key, 16); // use only first 128 bit
	    	System.out.println(key.length);
	    	System.out.println(new String(key,"UTF-8"));
	    	 secretKey= new SecretKeySpec(key, "AES");
		    
		    
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try
        {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
           
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            fdata=new String(cipher.doFinal(Base64.decodeBase64(strToDecrypt)));
            
        }
        catch (Exception e)
        {
         
            System.out.println("Error while decrypting: "+e.toString());

        }
        return fdata;
    }


    public static void main(String args[])
    {
 
                final String strToEncrypt = "venu gudluri";
                final String strPssword = "encryptor key";
                AES.setKey(strPssword);
               
                AES.encrypt(strToEncrypt.trim(),strPssword);
                
                System.out.println("String to Encrypt: " + strToEncrypt); 
                System.out.println("Encrypted: " + AES.getEncryptedString());
           
                final String strToDecrypt =  AES.getEncryptedString();
                AES.decrypt(strToDecrypt.trim(),strPssword);
               
                System.out.println("String To Decrypt : " + strToDecrypt);
                System.out.println("Decrypted : " + AES.getDecryptedString());
        
    }
     
}