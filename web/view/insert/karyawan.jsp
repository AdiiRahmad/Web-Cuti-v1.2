<%-- 
    Document   : karyawan
    Created on : Apr 16, 2018, 11:51:31 AM
    Author     : Siti Khusnul Azifah
--%>

<%@page import="entities.Jabatan"%>
<%@page import="entities.Karyawan"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Karyawan</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="../js/bootstrap-timepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="{{ asset('../css/style.css') }}">

        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/font-awesome.css">
        <link rel="stylesheet" href="../css/animate.css">
        <link rel="stylesheet" href="../css/timepicker.css">
        <link href="../css/style.css" rel="stylesheet" />
    </head>
    <body>
        <br><br>
    <center><h3><b>Form Data Karyawan</b></h3></center><br>
                <%
                    String autoid = (String) session.getAttribute("autoID");

                    List<Object> datas1 = (List<Object>) session.
                            getAttribute("JabatanList");
                %>
    <div class="col-sm-12 col-sm-offset-3">
        <form action="karyawanI"> 
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="nik">NIK</label>
                        <% if (autoid.equals("K")) {
                    %><input type="text" class="form-control" id="nik" name="txtNIK" value="<%= autoid%>001" placeholder="NIK" readonly="true" /><%
                    } else {%>
                     <input type="text" class="form-control" id="nik" name="txtNIK" value="<%= autoid%>" placeholder="NIK" readonly="true" />
                    <%}%>
                   
                </div>
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" id="nama" name="txtNama" value="" placeholder="Nama" />
                </div>
                <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input type="text" class="form-control" id="alamat" name="txtAlamat" value="" placeholder="Alamat" />
                </div>
                <div class="form-group">
                    <label for="agama">Agama</label>
                    <select name="txtAgama"  class="form-control">
                        <option value="Islam">Islam</option> 
                        <option value="Kristen">Kristen</option> 
                        <option value="Katolik">Katolik</option> 
                        <option value="Hindu">Hindu</option> 
                        <option value="Budha">Budha</option> 
                        <option value="Konghuchu">Konghuchu</option> 
                        <option value="Lain-lain">Lain-lain</option> 
                    </select>
                </div>


                <div class="form-group">
                    <label for="jenisKelamin">Jenis Kelamin</label>
                    <div class="radio">
                        <label><input type="radio" checked="true" name="gender" value="Laki-Laki">Laki-Laki</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" name="gender" value="Perempuan">Perempuan</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-3" style="margin-left: 30px;">
                <div class="form-group">
                    <label for="tanggalLahir">Tanggal Lahir</label>
                    <input type="date" class="form-control" id="tanggalLahir" name="txtTglLahir" value="" placeholder="Tanggal Lahir" />
                </div>

                <div class="form-group">
                    <label for="tanggalMulaiBekerja">Tanggal Mulai Bekerja</label>
                    <input type="date" class="form-control" id="tanggalMulaiBekerja" name="txtTglMulaiKerja" value="" placeholder="Tanggal Mulai Bekerja" />
                </div>
                <div class="form-group">
                    <label for="sisa">Sisa Cuti</label>
                    <input type="text" class="form-control" id="sisa" name="txtSisaCuti" value="12" placeholder="Sisa Cuti" readonly="true" />
                </div>
                <div class="form-group">
                    <label for="jabatan">ID Jabatan</label>
                    <select name="txtJabatan"  class="form-control">
                        <% for (Object data : datas1) {
                                Jabatan j = (Jabatan) data;
                        %>
                        <option value="<%= j.getIdJabatan()%>"><%= j.getIdJabatan() + " - " + j.getJabatan()%></option> 
                        <%}
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <label for="sisa">Status</label>
                    <input type="text"  class="form-control" id="status" name="txtStatus" value="" placeholder="Status" />
                </div>
                <input class="btn btn-primary" type="submit" value="Simpan" name="btnTambah"/><br><br><br>
            </div>
        </form>
    </div>
</body>
</html>
