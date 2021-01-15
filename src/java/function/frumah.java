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
public class frumah {
    private int no_rumah;
    private String tipe, lokasi, tahun, harga;
    List<forder> daftar_order=new ArrayList<forder>();
    
    public int getNo_rumah() {
        return no_rumah;
    }
    public void setNo_rumah(int no_rumah) {
        this.no_rumah = no_rumah;
    }
    public String getTipe() {
        return tipe;
    }
    public void setTipe(String tipe) {
        this.tipe = tipe;
    }
    public String getLokasi() {
        return lokasi;
    }
    public void setLokasi(String lokasi) {
        this.lokasi = lokasi;
    }
    public String getTahun() {
        return tahun;
    }
    public void setTahun(String tahun) {
        this.tahun = tahun;
    }
    public String getHarga() {
        return harga;
    }
    public void setHarga(String harga) {
        this.harga = harga;
    }
    public List<forder> getDaftar_order() {
        return daftar_order;
    }
 
    public void setDaftarBuku(List<forder> daftarBuku) {
        this.daftar_order = daftar_order;
    }  
}
