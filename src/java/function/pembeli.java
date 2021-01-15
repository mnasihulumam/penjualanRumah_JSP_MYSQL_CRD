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
import function.fpembeli;
public class pembeli {
    public static List<fpembeli> getAllRecords(){
        List<fpembeli> list=new ArrayList<fpembeli>();
        try{
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("select * from t_pembeli");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                fpembeli u=new fpembeli();
                u.setId_pembeli(rs.getInt("id_pembeli"));
                u.setNama(rs.getString("nama"));
                u.setJk(rs.getString("jk"));
                u.setAgama(rs.getString("agama"));
                u.setNo_hp(rs.getString("no_hp"));
                u.setGaji(rs.getString("gaji"));
                u.setAlamat(rs.getString("alamat"));
                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
         return list;
    }
    public static int save(fpembeli gt) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("INSERT INTO t_pembeli(nama,jk,agama, no_hp,gaji, alamat)values(?,?,?,?,?,?)");
            ps.setString(1, gt.getNama());
            ps.setString(2, gt.getJk());
            ps.setString(3, gt.getAgama());
            ps.setString(4, gt.getNo_hp());
            ps.setString(5, gt.getGaji());
            ps.setString(6, gt.getAlamat());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    } 
    public static fpembeli getRecordById(int id) {
        fpembeli u = null;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("select * from t_pembeli "
                    + "where id_pembeli=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new fpembeli();
                u.setId_pembeli(rs.getInt("id_pembeli"));
                u.setNama(rs.getString("nama"));
                u.setJk(rs.getString("jk"));
                u.setAgama(rs.getString("agama")); 
                u.setNo_hp(rs.getString("no_hp"));
                u.setGaji(rs.getString("gaji"));
                u.setAlamat(rs.getString("alamat")); 
                 
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
    
    public static int update(fpembeli u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("update t_pembeli set nama = ?,jk =? , agama=? ,no_hp= ?, gaji =?, alamat =? where id_pembeli = ?");
            ps.setString(1, u.getNama());
            ps.setString(2, u.getJk());
            ps.setString(3, u.getAgama());
            ps.setString(4, u.getNo_hp());
            ps.setString(5, u.getGaji());
            ps.setString(6, u.getAlamat());
            ps.setInt(7, u.getId_pembeli());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
   
    public static int delete(fpembeli u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("delete from t_pembeli "
                    + "where id_pembeli=?");
            ps.setInt(1, u.getId_pembeli());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    } 
}