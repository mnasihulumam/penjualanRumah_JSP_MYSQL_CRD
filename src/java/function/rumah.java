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
import function.frumah;
public class rumah {
    public static List<frumah> getAllRecords(){
        List<frumah> list=new ArrayList<frumah>();
        try{
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("select * from t_rumah");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                frumah u=new frumah();
                u.setNo_rumah(rs.getInt("no_rumah"));
                u.setTipe(rs.getString("tipe"));
                u.setLokasi(rs.getString("lokasi"));
                u.setTahun(rs.getString("tahun"));
                u.setHarga(rs.getString("harga"));
                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
         return list;
    }
    public static int save(frumah gt) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("INSERT INTO t_rumah(tipe,lokasi,tahun,harga)values(?,?,?,?)");
            ps.setString(1, gt.getTipe());
            ps.setString(2, gt.getLokasi());
            ps.setString(3, gt.getTahun());
            ps.setString(4, gt.getHarga());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    } 
    public static frumah getRecordById(int id) {
        frumah u = null;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("select * from t_rumah "
                    + "where no_rumah=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new frumah();
                u.setNo_rumah(rs.getInt("no_rumah"));
                u.setTipe(rs.getString("tipe"));
                u.setLokasi(rs.getString("lokasi"));
                u.setTahun(rs.getString("tahun"));
                u.setHarga(rs.getString("harga"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
    
    public static int update(frumah u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("update t_rumah set tipe = ?,lokasi =?,tahun= ?, harga =? where no_rumah = ?");
            ps.setString(1, u.getTipe());
            ps.setString(2, u.getLokasi());
            ps.setString(3, u.getTahun());
            ps.setString(4, u.getHarga());
            ps.setInt(5, u.getNo_rumah());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
   
    public static int delete(frumah u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("delete from t_rumah "
                    + "where no_rumah=?");
            ps.setInt(1, u.getNo_rumah());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    } 
}