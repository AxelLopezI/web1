/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexionjdbc1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class ConexionJDBC1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        /*
        host: 127.0.0.1
        nombrBD: fes_ico
        user: root
        pass: 12345
        */
        
        String host;
        String dbName;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            //vamos a definir la url
            
            host="jdbc:mysql://localhost:3306/";
            dbName="fes_ico";
            
            //Establecer la conexion
            Connection db = DriverManager.getConnection(host+dbName, "root","12345");
            
            Statement st = db.createStatement();
            
            ResultSet rs = st.executeQuery("SELECT * FROM ALUMNO");
            
            while(rs.next()){
                System.out.println(rs.getString("nombre usuario"));
                
            }
            
        } catch (Exception e) {
            System.out.println("Problema con la conexion "+e);
        }
    }
    
}
