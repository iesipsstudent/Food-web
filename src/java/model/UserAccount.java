/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Alok Hirwe
 */
public class UserAccount implements Serializable {

    private String username = null;
    private String city = null;
    private String address = null;
    private String mobileno = null;
    private String email = null;
    private String user_id = null;
    
    
//   private int age = 0;

    public UserAccount() {
    }

    public String getUserName() {
        return username;
    }

    public String getCity() {
        return city;
    }

    public String getEmail() {
        return email;
    }

    public String getMobileno() {
        return mobileno;
    }

    public String getAddress() {
        return address;
    }
    
    public String getUserID()
    {
    return user_id;
    }
//   public String getLastName(){
//      return lastName;
//   }
//   public int getAge(){
//      return age;
//   }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMobileno(String mobileno) {
        this.mobileno = mobileno;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
   public void setUserID(String user_id){
      this.user_id = user_id;
   }
//   public void setAge(Integer age){
//      this.age = age;
}

