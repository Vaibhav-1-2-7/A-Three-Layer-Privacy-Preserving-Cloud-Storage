/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Algorithm;

/**
 *
 * @author java4
 */
import java.util.Scanner;
 
public class CaesarCipher
{
    public static final String ALPHABET = "abcdefghijklmnopqrstuvwxyz ";
 
    public static String encrypt(String filename, int shiftKey)
    {
        filename = filename.toLowerCase();
        String cipherText = "";
        for (int i = 0; i < filename.length(); i++)
        {
            int charPosition = ALPHABET.indexOf(filename.charAt(i));
            int keyVal = (shiftKey + charPosition) % 27;
            char replaceVal = ALPHABET.charAt(keyVal);
            cipherText += replaceVal;
        }
        return cipherText;
    }
 
    public static String decrypt(String filename, int shiftKey)
    {
        filename = filename.toLowerCase();
        String plainText = "";
        for (int i = 0; i < filename.length(); i++)
        {
            int charPosition = ALPHABET.indexOf(filename.charAt(i));
            int keyVal = (charPosition - shiftKey) % 27;
            if (keyVal < 0)
            {
                keyVal = ALPHABET.length() + keyVal;
            }
            char replaceVal = ALPHABET.charAt(keyVal);
            plainText += replaceVal;
        }
        return plainText;
    }
 
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the String for Encryption: ");
        String message = new String();
        message = sc.next();
        System.out.println(encrypt(message, 3));
        System.out.println(decrypt(encrypt(message, 3), 3));
        sc.close();
    }

    public Object encrypt(String name) {
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
