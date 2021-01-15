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
import function.fmarketing;
import function.fpembeli;
import function.frumah;

public class order {
    public static List<forder> getAllRecords() throws SQLException{
        List<forder> daftar_order=new ArrayList<forder>();
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("select t_pembelian.id_pembelian, f_pembeli.id_pembeli, f_pembeli.tipe ,f_rumah.no_rumah, t_pembelian.tanggal, t_pembelian.bayar, fmarketing.id_marketing, fmarketing.nama FROM t_pembelian JOIN t_marketing ON (t_pembelian.id_pembelian=t_marketing.id_marketing) "
                    + "JOIN t_pembeli ON (t_pembelian.id_pembeli=t_pembeli.id_pembeli) "
                    + "JOIN t_rumah ON (t_rumah.no_rumah=t_rumah.no_rumah) ");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                forder order=new forder();
                fpembeli pembeli =new fpembeli();
                frumah rumah=new frumah();
                fmarketing marketing=new fmarketing();
                
                order.setId_pembelian(rs.getInt("id_pembelian"));
                pembeli.setId_pembeli(rs.getInt("id_pembeli"));
                pembeli.setNama(rs.getString("nama"));
                rumah.setNo_rumah(rs.getInt("no_rumah"));
                rumah.setTipe(rs.getString("tipe"));
                order.setBayar(rs.getString("bayar"));
                marketing.setId_marketing(rs.getInt("id_marketing"));
                marketing.setNama(rs.getString("nama"));
                
                order.setMarketing(marketing);
                order.setPembeli(pembeli);               
                order.setRumah(rumah);
                
               daftar_order.add(order);
            }
            return daftar_order;
    }
}