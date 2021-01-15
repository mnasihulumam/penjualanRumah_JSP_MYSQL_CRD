/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

/**
 *
 * @author HP
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import function.fmarketing;
public class marketing {
    public static List<fmarketing> getAllRecords(){
        List<fmarketing> list=new ArrayList<fmarketing>();
        try{
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("select * from t_marketing");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                fmarketing u=new fmarketing();
                u.setId_marketing(rs.getInt("id_marketing"));
                u.setNama(rs.getString("nama"));
                u.setJk(rs.getString("jk"));
                u.setAgama(rs.getString("agama"));
                u.setEmail(rs.getString("email"));                
                u.setAlamat(rs.getString("alamat"));
                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
         return list;
    }
    public static int save(fmarketing gt) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("INSERT INTO t_marketing(nama,jk,agama, email, alamat)values(?,?,?,?,?)");
            ps.setString(1, gt.getNama());
            ps.setString(2, gt.getJk());
            ps.setString(3, gt.getAgama());
            ps.setString(4, gt.getEmail());;
            ps.setString(5, gt.getAlamat());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    } 
    public static fmarketing getRecordById(int id) {
        fmarketing u = null;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("select * from t_marketing "
                    + "where id_marketing=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new fmarketing();
                u.setId_marketing(rs.getInt("id_marketing"));
                u.setNama(rs.getString("nama"));
                u.setJk(rs.getString("jk"));
                u.setAgama(rs.getString("agama")); 
                u.setEmail(rs.getString("email"));
                u.setAlamat(rs.getString("alamat")); 
                 
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
    
    public static int update(fmarketing u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("update t_marketing set nama = ?,jk =? , agama=? ,email= ?, alamat =? where id_marketing = ?");
            ps.setString(1, u.getNama());
            ps.setString(2, u.getJk());
            ps.setString(3, u.getAgama());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getAlamat());
            ps.setInt(6, u.getId_marketing());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
   
    public static int delete(fmarketing u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("delete from t_marketing "
                    + "where id_marketing=?");
            ps.setInt(1, u.getId_marketing());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    } 
}