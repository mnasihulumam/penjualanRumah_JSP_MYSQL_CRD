/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

/**
 *
 * @author HP
 */
import java.util.ArrayList;
import java.util.List;

public class fmarketing {
    private int id_marketing;
    private String agama, nama, jk, email, alamat;
    List<forder> daftar_order=new ArrayList<forder>();
    
    public int getId_marketing() {
        return id_marketing;
    }
    public void setId_marketing(int id_marketing) {
        this.id_marketing = id_marketing;
    }
    public String getNama() {
        return nama;
    }
    public void setNama(String nama) {
        this.nama = nama;
    }
    public String getJk() {
        return jk;
    }
    public void setJk(String jk) {
        this.jk = jk;
    }
     public String getAgama() {
        return agama;
    }
    public void setAgama(String agama) {
        this.agama = agama;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getAlamat() {
        return alamat;
    }
    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }
    public List<forder> getDaftar_order() {
        return daftar_order;
    }
 
    public void setDaftarBuku(List<forder> daftarBuku) {
        this.daftar_order = daftar_order;
    }  
}