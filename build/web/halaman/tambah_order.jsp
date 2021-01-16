<%-- 
    Document   : tambah_order
    Created on : Jan 15, 2021, 4:27:51 PM
    Author     : HP
--%>

<%@page import="function.koneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<%
    String username = (String)session.getAttribute("username");
    // redirect user to login page if not logged in
    if(username == null){
        response.sendRedirect("../login.jsp");
    }
%>

   <hr>
        <div id="content">
          <div class="container-fluid" style="padding-bottom: 450px;">
            <div class="alert alert-dark">
              <h1>Tambah Data Order</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <form method="post" action="halaman/proses_inputOrder.jsp">
                    <div class="form-group">
                      <label for="">Nama Pembeli</label>
                      <%
                        try {
                        Connection con = koneksi.getKoneksi();
                        PreparedStatement ps = con.prepareStatement("select * from t_pembeli");
                        ResultSet rs = ps.executeQuery();
                      %>
                      <select name="id_pembeli" class="form-control">
                          <option>-- Pilih Nama Pembeli --</option>
                      <%
                        while(rs.next()){
                        int id_pembeli = rs.getInt("id_pembeli");
                        String nama = rs.getString("nama");
                      %>
                        <option value="<%= id_pembeli %>"> <%=nama %></option>
                      <%
                      }
                      %>
                      </select>
                      <%
                      }
                        catch (Exception e) {
                            System.out.println(e);
                        }
 
                      %>
                    </div>
                    <div class="form-group">
                      <label for="">Tipe Rumah</label><br>
                      <%
                        try {
                        Connection con = koneksi.getKoneksi();
                        PreparedStatement ps = con.prepareStatement("select * from t_rumah");
                        ResultSet rs = ps.executeQuery();
                      %>
                      <select name="no_rumah" class="form-control">
                          <option>-- Pilih Tipe Rumah --</option>
                      <%
                        while(rs.next()){
                        int no_rumah = rs.getInt("no_rumah");
                        String tipe = rs.getString("tipe");
                      %>
                        <option value="<%= no_rumah %>"> <%=tipe %></option>
                      <%
                      }
                      %>
                      </select>
                      <%
                      }
                        catch (Exception e) {
                            System.out.println(e);
                        }
 
                      %>
                    </div>
                    <div class="form-group">
                      <label for="">Tanggal Order</label>
                      <input type="date" name="tanggal" id="" cols="" rows="3" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="">Jenis Pembayaran</label>
                      <select id="" cols="" rows="3" class="form-control" name="bayar">
                          <option value="">-- Pilih Jenis Pembayaran --</option>
                          <option value="Cash">Cash</option>
                          <option value="Kredit 1 Tahun">Kredit 1 Tahun</option>
                          <option value="Kredit 2 Tahun">Kredit 2 Tahun</option>
                          <option value="Kredit 5 Tahun">Kredit 5 Tahun</option>
                          <option value="Kredit 10 Tahun">Kredit 10 Tahun</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="">Nama Marketing</label>
                      <%
                        try {
                        Connection con = koneksi.getKoneksi();
                        PreparedStatement ps = con.prepareStatement("select * from t_marketing");
                        ResultSet rs = ps.executeQuery();
                      %>
                      <select name="id_marketing" class="form-control">
                          <option>-- Pilih Nama Marketing --</option>
                      <%
                        while(rs.next()){
                        int id_marketing = rs.getInt("id_marketing");
                        String nama_mar = rs.getString("nama_mar");
                      %>
                        <option value="<%= id_marketing %>"> <%=nama_mar %></option>
                      <%
                      }
                      %>
                      </select>
                      <%
                      }
                        catch (Exception e) {
                            System.out.println(e);
                        }
 
                      %>
                    </div>
                    <div class="form-group">
                      <button type="submit" name="submit" class="btn btn-primary">Submit</button> <button class="btn btn-warning"><a href="../index.jsp?folder=halaman&file=tampil_pegawai.jsp" style="text-decoration: none;">Kembali</a></button>
                    </div>
              </form>
      </div>
</div>