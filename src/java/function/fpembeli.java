/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class fpembeli {
    private int id_pembeli;
    private String agama, nama, jk, no_hp, gaji, alamat;
    List<forder> daftar_order =new ArrayList<forder>();
    
    public int getId_pembeli() {
        return id_pembeli;
    }
    public void setId_pembeli(int id_pembeli) {
        this.id_pembeli = id_pembeli;
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
    public String getNo_hp() {
        return no_hp;
    }
    public void setNo_hp(String no_hp) {
        this.no_hp = no_hp;
    }
    public String getGaji() {
        return gaji;
    }
    public void setGaji(String gaji) {
        this.gaji = gaji;
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