/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

/**
 *
 * @author HP
 */
public class forder {
    private int id_pembelian, id_pembeli, no_rumah, id_marketing;
    private String tanggal, bayar, nama_pembeli, nama_marketing, tipe;
    public int getId_pembelian() {
        return id_pembelian;
    }
    public void setId_pembelian(int id_pembelian) {
        this.id_pembelian = id_pembelian;
    }
    public int getId_pembeli() {
        return id_pembeli;
    }
    public void setId_pembeli(int id_pembeli) {
        this.id_pembeli = id_pembeli;
    }
    public int getNo_rumah() {
        return no_rumah;
    }
    public void setNo_rumah(int no_rumah) {
        this.no_rumah = no_rumah;
    }
     public String getTanggal() {
        return tanggal;
    }
    public void setTanggal(String tanggal) {
        this.tanggal = tanggal;
    }
    public String getBayar() {
        return bayar;
    }
    public void setBayar(String bayar) {
        this.bayar = bayar;
    }
    public int getId_marketing() {
        return id_marketing;
    }
 
    public void setId_marketing(int id_marketing) {
        this.id_marketing = id_marketing;
    }
    public String getNama_pembeli(){
        return nama_pembeli;
    }
    public void setNama_pembeli(String nama){
        this.nama_pembeli =nama;
    }
    public String getNama_marketing(){
        return nama_marketing;
    }
    public void setNama_marketing(String nama_mar){
        this.nama_marketing =nama_mar;
    }
    public String getTipe(){
        return tipe;
    }
    public void setTipe(String tipe){
        this.tipe =tipe;
    }
}