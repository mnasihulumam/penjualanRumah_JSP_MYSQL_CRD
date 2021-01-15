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
    private int id_pembelian, id_pembeli, no_rumah;
    private String tanggal, bayar;
    private fmarketing marketing;
    private fpembeli pembeli;
    private frumah rumah;
    public int getId_pembelian() {
        return id_pembelian;
    }
    public void setId_pembelian(int id_pembelian) {
        this.id_pembelian = id_pembelian;
    }
    public fpembeli getPembeli() {
        return pembeli;
    }
    public void setPembeli(fpembeli pembeli) {
        this.pembeli = pembeli;
    }
    public frumah getRumah() {
        return rumah;
    }
    public void setRumah(frumah rumah) {
        this.rumah = rumah;
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
    public fmarketing getMarketing() {
        return marketing;
    }
 
    public void setMarketing(fmarketing marketing) {
        this.marketing = marketing;
    }   
}