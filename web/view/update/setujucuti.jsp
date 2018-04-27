<%-- 
    Document   : karyawan
    Created on : Apr 16, 2018, 11:51:31 AM
    Author     : Siti Khusnul Azifah
--%>

<%@page import="entities.Cuti"%>
<%@page import="entities.DetailCuti"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="entities.Karyawan"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Setuju Cuti</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="{{ asset('../css/style.css') }}">

        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/font-awesome.css">
        <link rel="stylesheet" href="../css/animate.css">
        <link href="../css/style.css" rel="stylesheet" />
    </head>
    <body>
        <br><br>
    <center><h3><b>Persetujuan Cuti Karyawan</b></h3></center><br>
    <div class="col-sm-12 col-sm-offset-4">
        <form action="prosesUpdateDetailCuti">
            <%
                Object datadetailcuti = session.getAttribute("setujuCutiU");
                DetailCuti decut = (DetailCuti) datadetailcuti;

                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String tglmulai = dateFormat.format(decut.getTanggalMulai());
            %>  
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="idDetailCuti">ID Detail Cuti</label>
                    <input type="text" class="form-control" id="idDetailCuti" placeholder="Detail Cuti" name="txtIdDetailCuti" value="<%= decut.getIdDetailCuti()%>" readonly="true" />
                </div>

                <div class="form-group">
                    <label for="nik">NIK</label>
                    <input type="text" class="form-control" id="nik" placeholder="NIK" name="txtNik" value="<%= decut.getNik() %>" readonly="true" />
                </div>

                <div class="form-group">
                    <label for="Id Cuti">ID Cuti</label>
                    <input type="text" class="form-control" id="idcuti" placeholder="ID Cuti" name="txtIdCuti" value="<%= decut.getIdCuti().getIdCuti()%>" readonly="true" />
                </div>

                <div class="form-group">
                    <label for="keterangan">Keterangan</label>
                    <input type="text" class="form-control" id="keterangan" placeholder="Keterangan" name="txtKeterangan" value="<%= decut.getKeterangan()%>" />
                </div>

                <div class="form-group">
                    <label for="tanggalMulai"> Tanggal Mulai Cuti </label>
                    <input type="text" class="form-control" id="tanggalMulai" placeholder="Tanggal Mulai Cuti" name="txtTanggalMulaiCuti" value="<%= tglmulai%>" readonly ="true" />
                </div>
                <div class="form-group">
                    <label for="lamaCuti">Lama Cuti</label>
                    <input type="text" class="form-control" id="lamaCuti" placeholder="Lama Cuti" name="txtLamaCuti" value="<%= decut.getLamaCuti()%>" />
                </div>
                    
                    <div class="form-group">
                        <label for="status">Status</label>
                        <select name="txtStatus" class="form-control">
                            <%
                                if (decut.getStatus().equals("Pending")) {%>
                            <option selected><%=decut.getStatus()%></option>
                            <option>Ditolak</option>
                            <option>Diterima</option>
                            <%  } else if (decut.getStatus().equals("Ditolak")) {%>
                            <option selected><%=decut.getStatus()%></option>
                            <option>Pending</option>
                            <option>Diterima</option>
                            <%  } else if (decut.getStatus().equals("Diterima")) {%>
                            <option selected><%=decut.getStatus()%></option>
                            <option>Ditolak</option>
                            <option>Pending</option>
                            <%   }%>
                        </select>
                    </div>
             
                <div class="form-group">
                    <input class="btn btn-primary" href="setujuCutiController" type="submit" value="Update" name =" btnUpdate"/>
                </div>
        </form>
    </div>
</body>
</html>
