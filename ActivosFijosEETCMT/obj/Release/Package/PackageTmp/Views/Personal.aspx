﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal.aspx.cs" Inherits="ActivosFijosEETC.Views.Personal" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <!-- bootstrap 3.0.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="bootstrap/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="bootstrap/css/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="bootstrap/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet"
        type="text/css" />
    <!-- Date Picker -->
    <link href="bootstrap/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="bootstrap/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet"
        type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="bootstrap/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet"
        type="text/css" />
    <!-- Theme style -->
    <link href="bootstrap/css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="bootstrap/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- jQuery 2.0.2 -->
    <%--   <script src="js/jquery.min.js"           type="text/javascript"></script>--%>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        document.write('<script src="js/Personal.js" type="text/javascript"><\/script>');   
    </script>
    <!-- jQuery UI 1.10.3 -->
    <script src="bootstrap/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
 
    <script src="bootstrap/js/plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="bootstrap/js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="bootstrap/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"
        type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="bootstrap/js/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="bootstrap/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="bootstrap/js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="bootstrap/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
        type="text/javascript"></script>
    <!-- iCheck -->
    <script src="bootstrap/js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="bootstrap/js/AdminLTE/app.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="bootstrap/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
</head>
<body class="skin-blue" onkeydown="return (event.keyCode != 116)">
                 <script>
                     function CierraSesion() {
                         $.ajax({

                             type: "POST",
                             url: "../Controllers/ControllerLogin.asmx/CierraSesion",
                             data: "{}",
                             contentType: "application/json; chartset:utf-8",
                             dataType: "json",
                             async: false,
                             success: function (result) {
                                 if (result.d) {
                                     window.location = 'Login.aspx';
                                 }
                             },
                             error: function (XMLHttpRequest, textStatus, errorThrown) {
                                 alert(textStatus + ": " + XMLHttpRequest.responseText);
                             },
                             async: true
                         });
                     }
   </script>
    <!-- header logo: style can be found in header.less -->
    <header class="header">
        <a href="Default.aspx" class="logo">
            <!-- Add the class icon to your logo image or logo icon to add the margining -->
            <p>
                <strong>Sistema de Activos Fijos</strong></p>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                    class="icon-bar"></span><span class="icon-bar"></span></a>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="glyphicon glyphicon-user"></i><span>
                            <asp:Label ID="lblUsuario2" Text="text" runat="server" />
                            <i class="caret"></i></span></a>
                        <ul class="dropdown-menu">
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="Perfil.aspx" class="btn btn-default btn-flat">Perfil</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-primary btn-flat" onclick="CierraSesion();">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <img src="img/logo.png" class="img-thumbnail" alt="User Image" />
                    <div class="pull-left image">
                    </div>
                    <div class="pull-left info">
                        <p>
                            <asp:Label ID="lblUsuario" Text="text" runat="server" /></p>
                        <a href="#"><i class="fa fa-circle text-success"></i>Online </a>
                    </div>
                </div>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul id="_menu" class="sidebar-menu" runat="server">
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <section class="content-header">
                <h1>
                  <span class='fa fa-users'></span> Personal <small>Registro Alterno de Personal</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li><a href="#">Parametricas</a></li>
                    <li class="active">Personal</li>
                </ol>
            </section>
            <form id="form1" runat="server">
            <section class="content">
             
                <div class="row">
                    <div class="col-md-12">
                        <div  class="box box-primary" runat="server">
                            <div class="box-header">
                                <h3 class="box-title">
                                    Personal</h3>
                            </div>

                            <div class="box-body">
                            <div id="danger" class="alert alert-danger" role="alert" style="display: none">
                                                <strong>Error!</strong>
                                                </div>
                                                <div id="success" class="alert alert-success" role="alert" style="display: none">
                            <strong>Correcto!</strong>
                        </div>
                        <div id="warning" class="alert alert-warning" role="alert" style="display: none">
                            <strong>Correcto!</strong>
                        </div>
                          <asp:LinkButton ID="btnSincronizarPersonal" runat="server" CssClass="btn btn-warning" 
                                    Text="<span class='fa fa-refresh'></span> Sincronizar" 
                                    onclick="btnSincronizarPersonal_Click"></asp:LinkButton>
                        <asp:LinkButton ID="btnNuevoPersona" runat="server" CssClass="btn btn-primary" Enabled=false Visible=false
                                    Text="<span class='fa fa-user'></span>  Adicionar Persona" 
                                    EnableTheming="False" EnableViewState="False"></asp:LinkButton>
                                <asp:LinkButton ID="btnEditaPersona" runat="server" CssClass="btn btn-default" Enabled=false Visible=false
                                    Text="<span class='fa fa-pencil'></span> Editar" 
                                    onclick="btnEditaPersona_Click" EnableTheming="False" EnableViewState="False"></asp:LinkButton>
                   
                
                              
                            </div>
                            <div class="box">
                                <div class="box-body table-responsive">
                                    <dx:ASPxGridView ID="gridPersonas" runat="server" AutoGenerateColumns="False" 
                                        Theme="Aqua" Width="100%" EnableTheming="True" oninit="gridPersonas_Init">
                                     
                                        <Columns>
                                            <dx:GridViewCommandColumn VisibleIndex="0">
                                                <ClearFilterButton Visible="True">
                                                </ClearFilterButton>
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn Caption="Documento" FieldName="documento" 
                                                VisibleIndex="1">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="nombres" FieldName="nombres" 
                                                VisibleIndex="2">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Apellidos" FieldName="apellidos" 
                                                VisibleIndex="3">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Area" FieldName="area" VisibleIndex="4">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Gerencia" FieldName="gerencia" 
                                                VisibleIndex="5">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Estado" FieldName="estado" VisibleIndex="8">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Cargo" FieldName="cargo" VisibleIndex="6">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                        <SettingsBehavior AllowFocusedRow="True" />
                                        <Settings ShowFilterRow="True" ShowFilterRowMenu="True"  />
                                      
<SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                    </dx:ASPxGridView>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="modalDatosPersonas" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;</button>
                                    <h4 class="modal-title">
                                    <asp:label ID="lblTitleModal" text="text" runat="server" />
                                        <%-- <label id="lblTitleModal">
                                        </label>--%>
                                    </h4>
                                </div>
                                <div class="modal-body">
                                    <!-- form start -->
                                    <div class="box-body">
                                        <div class="row">
                                         
                                            <div class="col-xs-12">
                                                <label for="docuemtno">
                                                    Documento</label>
                                                <asp:TextBox ID="txtDocumento" CssClass="form-control" placeholder="ejemplo: 8305691"
                                                    runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <label for="nombre">
                                                    Nombres</label>
                                                <asp:TextBox ID="txtNombres" CssClass="form-control" placeholder="ejemplo: Andres"
                                                    runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <label for="nombre">
                                                    Apellidos</label>
                                                <asp:TextBox ID="txtApellidos" CssClass="form-control" placeholder="ejemplo: Garcia" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                           <asp:UpdatePanel ID="UpdatePanel2" runat="server"> 
                                     <ContentTemplate> 
                                       <div class="row">
                                            <div class="col-xs-12">
                                                <label for="nombre">
                                                    Gerencia</label><asp:DropDownList 
                                                    ID="ddlGerencia" runat="server" 
                                                    onselectedindexchanged="ddlGerencia_SelectedIndexChanged" CssClass="form-control" AutoPostBack=true>
                                       
                                                    </asp:DropDownList>
                                           
                                            </div>
                                        </div>
                                      
                                          <div class="row">
                                            <div class="col-xs-12">
                                                <label for="nombre">
                                                    Area</label>
                                                    <asp:DropDownList ID="ddlArea" runat="server" CssClass="form-control">
                                                     
                                                    </asp:DropDownList>
                                              
                                            </div>
                                            
                                        </div>
                                       
                                          </ContentTemplate>
                                           <Triggers> 
                                        <asp:AsyncPostBackTrigger ControlID="ddlGerencia" EventName="SelectedIndexChanged" /> 
                                        </Triggers> 
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                        Cerrar</button>
                                   <asp:Button CssClass="btn btn-primary" runat="server" Text="Guardar Cambios" OnClientClick="return Validar();"
                                        ID="btnGuardarPersona" 
         onclick="btnGuardarPersona_Click" />
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           
                <!-- /.box -->
            </section>
            </form>
        </aside>
    </div>
  
     
    <!-- ./wrapper -->
    <script type="text/javascript">

        function Validar() {
            var error = 0;

            if (document.getElementById('<%=txtDocumento.ClientID %>').value == '' || document.getElementById('<%=txtNombres.ClientID %>').value == ''||
                document.getElementById('<%=txtApellidos.ClientID %>').value == '' || document.getElementById('<%=ddlGerencia.ClientID %>').value == ''
               ) {
                error = 1;
            }
            

            if (error == 0) {

                return true;

            }
            else {
                alert('Valide los datos antes de grabar');
                return false;
            }
        } 
    </script>
    <script type = "text/javascript">
        window.onload = function () {
            document.onkeydown = function (e) {
                return (e.which || e.keyCode) != 116;
            };
        }
</script>

</body>
</html>

