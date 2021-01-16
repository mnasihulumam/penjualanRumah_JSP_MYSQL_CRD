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
import function.forder;

public class order {
    public static List<forder> getAllRecords(){
        List<forder> list=new ArrayList<forder>();
        try{
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("SELECT t_pembelian.id_pembelian, "
                    + "t_pembeli.id_pembeli, t_rumah.no_rumah, t_pembelian.tanggal, "
                    + "t_pembelian.bayar, t_marketing.id_marketing, t_pembeli.nama, t_marketing.nama_mar, t_rumah.tipe FROM t_pembelian "
                    + "INNER JOIN t_pembeli ON t_pembelian.id_pembeli=t_pembeli.id_pembeli "
                    + "INNER JOIN t_rumah ON t_pembelian.no_rumah=t_rumah.no_rumah "
                    + "INNER JOIN t_marketing ON t_pembelian.id_marketing=t_marketing.id_marketing");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                forder u=new forder();
                u.setId_pembelian(rs.getInt("id_pembelian"));
                u.setId_pembeli(rs.getInt("id_pembeli"));
                u.setNo_rumah(rs.getInt("no_rumah"));
                u.setTanggal(rs.getString("tanggal"));
                u.setBayar(rs.getString("bayar"));                
                u.setId_marketing(rs.getInt("id_marketing"));
                u.setNama_pembeli(rs.getString("nama"));
                u.setNama_marketing(rs.getString("nama_mar"));
                u.setTipe(rs.getString("tipe"));
                list.add(u);
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
         return list;
    }
    public static int save(forder gt) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("INSERT INTO t_pembelian (id_pembeli,no_rumah,tanggal, bayar,id_marketing)values(?,?,?,?,?)");
            ps.setInt(1, gt.getId_pembeli());
            ps.setInt(2, gt.getNo_rumah());
            ps.setString(3, gt.getTanggal());
            ps.setString(4, gt.getBayar());
            ps.setInt(5, gt.getId_marketing());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    public static forder getRecordById(int id) {
        forder j = null;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("SELECT t_pembelian.id_pembelian, "
                    + "t_pembeli.id_pembeli, t_rumah.no_rumah, t_pembelian.tanggal, "
                    + "t_pembelian.bayar, t_marketing.id_marketing, t_pembeli.nama, t_marketing.nama_mar, t_rumah.tipe FROM t_pembelian "
                    + "INNER JOIN t_pembeli ON t_pembelian.id_pembeli=t_pembeli.id_pembeli "
                    + "INNER JOIN t_rumah ON t_pembelian.no_rumah=t_rumah.no_rumah "
                    + "INNER JOIN t_marketing ON t_pembelian.id_marketing=t_marketing.id_marketing "
                    + "where id_pembelian=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                j = new forder();
                j.setId_pembelian(rs.getInt("id_pembelian"));
                j.setId_pembeli(rs.getInt("id_pembeli"));
                j.setNo_rumah(rs.getInt("no_rumah"));
                j.setTanggal(rs.getString("tanggal"));
                j.setBayar(rs.getString("bayar"));                
                j.setId_marketing(rs.getInt("id_marketing"));
                j.setNama_pembeli(rs.getString("nama"));
                j.setNama_marketing(rs.getString("nama_mar"));
                j.setTipe(rs.getString("tipe"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return j;
    }
    public static int delete(forder u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("delete from t_pembelian "
                    + "where id_pembelian=?");
            ps.setInt(1, u.getId_pembelian());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    } 
    
}