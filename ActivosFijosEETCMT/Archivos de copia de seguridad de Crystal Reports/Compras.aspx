﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="ActivosFijosEETC.Views.Compras" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
    // <![CDATA[
        function gridPersonal_SelectionChanged(s, e) {
            s.GetSelectedFieldValues("nombres", GetSelectedFieldValuesCallback);
        }
        function GetSelectedFieldValuesCallback(values) {
            selList.BeginUpdate();
            try {
                selList.ClearItems();
                for (var i = 0; i < values.length; i++) {
                    selList.AddItem(values[i]);
                }
            } finally {
                selList.EndUpdate();
            }
            document.getElementById("selCount").innerHTML = gridPersonal.GetSelectedRowCount();
        }
      // ]]> 
    </script>

    <link href="bootstrap/datepicker/css/datepicker.css" rel="stylesheet" type="text/css" />
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
        document.write('<script src="js/Compras.js" type="text/javascript"><\/script>');   
    </script>
    <!-- jQuery UI 1.10.3 -->
    <script src="bootstrap/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="bootstrap/js/AdminLTE/demo.js" type="text/javascript"></script>
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
 <script src="js/jquery.plugins.js"       type="text/javascript"></script>
</head>
<body class="skin-blue" onkeydown="return (event.keyCode != 116)">
   <!-- header logo: style can be found in header.less -->
    <header class="header">
        <a href="index.html" class="logo">
            <!-- Add the class icon to your logo image or logo icon to add the margining -->
            <p>
                <strong>Control de Activos Fijos</strong></p>
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
                           
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="col-xs-4 text-center">
                                    <a href="#">Activos</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">Compras</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">Usuarios</a>
                                </div>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="Perfil.aspx" class="btn btn-default btn-flat">Perfil</a>
                                </div>
                                <div class="pull-right">
                                    <a href="Login.aspx" class="btn btn-default btn-flat">Sign out</a>
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
                    <img src="img/logoBlue.JPG" class="img-thumbnail" alt="User Image" />
                    <div class="pull-left image">
                    </div>
                    <div class="pull-left info">
                        <p>
                            <asp:Label ID="lblUsuario" Text="text" runat="server" /></p>
                        <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                    </div>
                </div>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="active"><a href="Default.aspx"><i class="fa fa-dashboard"></i><span>Dashboard</span>
                    </a></li>
                     <li class="treeview"><a href="#"><i class="fa fa-edit"></i><span>Parametrización</span> <i
                        class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                        <li><a href="TasasCambio.aspx"><i class="fa fa-angle-double-right"></i>Tasas de Cambio</a></li>
                            <li><a href="GruposContables.aspx"><i class="fa fa-angle-double-right"></i>Grupos Contables</a></li>
                             <li><a href="GruposAuxiliares.aspx"><i class="fa fa-angle-double-right"></i>Auxiliares Contables</a></li>  
                              <li><a href="Marcas.aspx"><i class="fa fa-angle-double-right"></i>Marcas - Modelos</a></li>     
                              <li><a href="Personal.aspx"><i class="fa fa-angle-double-right"></i>Personal</a></li>                                              
                        </ul>
                    </li>
                     <li class="treeview"><a href="#"><i class="fa fa-group"></i><span>Proveedores</span>
                        <i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="RegistroProveedor.aspx"><i class="fa fa-angle-double-right"></i>Registrar
                                Proveedor</a></li>
                            <li><a href="EditarProveedor.aspx"><i class="fa fa-angle-double-right"></i>Editar Proveedor</a></li>
                            <li><a href="BuscaProveedor.aspx"><i class="fa fa-angle-double-right"></i>Buscar</a></li>
                            <li><a href="RutasProveedor.aspx"><i class="fa fa-angle-double-right"></i>Rutas</a></li>
                            <li><a href="ListaProveedores.aspx"><i class="fa fa-angle-double-right"></i>Lista Proveedores</a></li>
                        </ul>
                    </li>

                    <li class="treeview"><a href="#"><i class="fa fa-shopping-cart"></i><span>Compras</span>
                        <i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="Compras.aspx"><i class="fa fa-angle-double-right"></i>Gestión Compras</a></li>
                        </ul>
                    </li>

                    <li class="treeview"><a href="#"><i class="fa fa-gift"></i><span>Donación</span>
                        <i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="Compras.aspx"><i class="fa fa-angle-double-right"></i>Registro Donación</a></li>
                        </ul>
                    </li>

                    <li class="treeview"><a href="#"><i class="fa fa-retweet"></i><span>Transferencias</span>
                        <i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="Transferencias.aspx"><i class="fa fa-angle-double-right"></i>Registro Transferencias</a></li>
                        </ul>
                    </li>

                    <li class="treeview"><a href="#"><i class="fa fa-laptop"></i><span>Activos</span>
                        <i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="pages/UI/general.html"><i class="fa fa-angle-double-right"></i>Códigos de barra</a></li>
                            <li><a href="RegistroActivosPorCompras.aspx"><i class="fa fa-angle-double-right"></i>Registro de activos</a></li>
                            <li><a href="pages/UI/buttons.html"><i class="fa fa-angle-double-right"></i>Asignaciones</a></li>
                            <li><a href="pages/UI/sliders.html"><i class="fa fa-angle-double-right"></i>Transferencias</a></li>
                            
                        </ul>
                    </li>
                   
                    <li class="treeview"><a href="#"><i class="fa fa-bar-chart-o"></i><span>Reportes</span>
                        <i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="pages/charts/morris.html"><i class="fa fa-angle-double-right"></i>Prestamos</a></li>
                            <li><a href="pages/charts/flot.html"><i class="fa fa-angle-double-right"></i>Compras</a></li>
                            <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i>Activos sin seguro</a></li>
                            <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i>Garantias</a></li>
                            <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i>Activos sin seguro</a></li>
                            <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i>Asignaciones</a></li>
                            <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i>Depreciación</a></li>
                        </ul>
                    </li>
                    
                   
                    
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <section class="content-header">
                <h1>
                    Compras <small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li><a href="#">Compras</a></li>
                    <li class="active">Registro de compras</li>
                </ol>
            </section>
            <form id="form1" runat="server">
            <section class="content">
                <div class="row" id="div_Listacompras" runat="server">
                    <div class="col-md-12">
                        <div id="div_gruposcontables" class="box box-primary" runat="server">
                            <div class="box-header">
                                <h3 class="box-title">
                                    Lista de Compras Realizadas</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">

                    <div id="divMaestroDanger" class="alert alert-danger" role="alert" style="display: none">
                        <strong>Error!</strong>
                    </div>
                    <div id="divMaestroSuccess" class="alert alert-success" role="alert" style="display: none">
                        <strong>Correcto!</strong>
                    </div>
                    <div id="divMaestroWarning" class="alert alert-warning" role="alert" style="display: none">
                        <strong>Atencion!</strong>
                    </div>
                </div>

                            <div class="box-body">
                                <asp:Button ID="btnRegistroCompra" runat="server" Text="Registro de compra" CssClass="btn btn-primary"
                                    OnClick="btnRegistroCompra_Click" />
                                <asp:Button ID="btnRegistrarActivos" runat="server" 
                                    Text="Ver detalle de compra" CssClass="btn btn-primary" 
                                    onclick="btnRegistrarActivos_Click" />
                                    <asp:Button ID="btnAprobarCompra" runat="server" 
                                    Text="Aprobar Compra" CssClass="btn btn-primary" 
                                    OnClientClick="return ConfirmaAprobarCompra();" 
                                     />
                                     <asp:Button ID="btnEliminarCompra" runat="server" 
                                    Text="Eliminar Compra" CssClass="btn btn-primary" 
                                     OnClientClick="return ConfirmaElimina();"/>
                            </div>
                            <!-- /.box-body -->
                            <div class="box">
                                <div class="box-body table-responsive">
                                    <%--    <div id='jqxWidget'>
                                <div id="jqxgrid">
                                </div>
                            </div>--%>
                                    <div>
                                        <dx:ASPxGridView ID="gridCompras" runat="server" AutoGenerateColumns="False" Width="100%"
                                            Theme="Aqua" Caption="Compras Realizadas" Font-Size="Small" 
                                            onhtmlrowprepared="gridCompras_HtmlRowPrepared">
                                            <Columns>
                                                <dx:GridViewDataTextColumn Caption="id" VisibleIndex="0" FieldName="ID" 
                                                    Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Descripción" VisibleIndex="1" 
                                                    FieldName="descripcion" Width="350px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Fecha Registro" VisibleIndex="2" 
                                                    FieldName="f_registro" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Monto Bs" VisibleIndex="3" 
                                                    FieldName="monto_bs" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Monto UFV" VisibleIndex="4" 
                                                    FieldName="monto_ufv" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Monto Sus" VisibleIndex="5" 
                                                    FieldName="monto_sus" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Tasa Sus" VisibleIndex="7" 
                                                    FieldName="tasa_sus" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Tasa UFV" VisibleIndex="6" 
                                                    FieldName="tasa_ufv" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Nro. Factura" VisibleIndex="8" 
                                                    FieldName="nro_factura" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular"></RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Documento de Respaldo" FieldName="doc_respaldo" 
                                                    VisibleIndex="9" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="id proveedor" 
                                                    FieldName="fk_proveedor" VisibleIndex="10" Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="id gerencia solicitante" FieldName="fk_gerencia_solicitante" 
                                                    VisibleIndex="14" Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Estado Proceso" FieldName="estado_proceso" 
                                                    VisibleIndex="18" Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Gerencia Solicitante" 
                                                    FieldName="gerencia_solicitante" VisibleIndex="15" Width="250px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Proveedor" FieldName="proveedor" 
                                                    VisibleIndex="11" Width="150px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Fuente de Financiamiento" 
                                                    FieldName="fuente_financiamiento" VisibleIndex="17" Width="150px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="id estado proceso" 
                                                    FieldName="fkc_estado_proceso" Visible="False" VisibleIndex="16">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                            <SettingsPager PageSize="20">
                                            </SettingsPager>
                                            <Settings ShowFilterRow="True" ShowGroupPanel="True" 
                                                ShowHorizontalScrollBar="True" />
                                            <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                        </dx:ASPxGridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box-body">

                    <div id="dangerCompras" class="alert alert-danger" role="alert" style="display: none">
                        <strong>Error!</strong>
                    </div>
                    <div id="successCompras" class="alert alert-success" role="alert" style="display: none">
                        <strong>Correcto!</strong>
                    </div>
                    <div id="warningCompras" class="alert alert-warning" role="alert" style="display: none">
                        <strong>Atencion!</strong>
                    </div>
                </div>

             

                <div class="row" id="div_RegistroCompras" runat="server">
                    <div class="col-md-12">
                        <div id="div1" class="box box-primary" runat="server">
                            <div class="box-header">
                                <h3 class="box-title">
                                    Registro de Compra</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <asp:Button ID="btnGuardarCompra" runat="server" Text="Guardar y Continuar" CssClass="btn btn-primary"
                                    OnClick="btnGuardarCompra_Click" />
                                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
                                    CssClass="btn btn-primary" onclick="btnCancelar_Click" />
                            </div>
                            <!-- /.box-body -->
                            <div class="box-body">
                                <asp:TextBox CssClass="hidden" ID="id" runat="server"></asp:TextBox>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <label for="nombre">
                                            Descripción <font color="red">*</font></label>
                                        <asp:TextBox ID="txtDescripcion" CssClass="form-control" placeholder="ejemplo: ADQUISICION DE 3 PIZARRAS ACRILICAS Y 2 PIZARRAS DE CORCHO"
                                            runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Fecha de Registro <font color="red">*</font></label>
                                        <input id="dateFechaRegistro" type="text" name="dateFechaRegistro" value="" class="form-control"
                                            placeholder="ejemplo: 01/01/2014" />
                                        <%--<dx:ASPxDateEdit ID="fvdfv" runat="server">
                                        </dx:ASPxDateEdit>--%>
                                    </div>
                                    <div class="col-xs-2">
                                        &nbsp;<label for="nombre">Tasa UFV <font color="red">*</font></label><asp:TextBox ID="txtTasaUFV" CssClass="form-control"
                                             ReadOnly="true" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        &nbsp;<label for="nombre">Tasa Dolar <font color="red">*</font></label><asp:TextBox ID="txtTasaDolar" CssClass="form-control"
                                             ReadOnly="true" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        &nbsp;<label for="nombre">Nro. Factura</label><asp:TextBox ID="txtNroFactura" CssClass="form-control"
                                            placeholder="ejemplo: 123456789" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Gerencia Solicitante <font color="red">*</font></label>
                                        <%--<select id="ddlGerenciaSolicitante" name="ddlGerenciaSolicitante" class="form-control" runat=server>
                                            <option value="">Seleccione un Proveedor</option>
                                        </select>--%>
                                          <asp:DropDownList ID="ddlSolicitante" CssClass="form-control" runat="server" 
                                            >
                                    </asp:DropDownList>
                                    </div>
                                 
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        &nbsp;<label for="nombre">Documento Respaldo</label><asp:TextBox ID="txtDocRespaldo"
                                            CssClass="form-control" placeholder="ejemplo: 15" runat="server"></asp:TextBox>
                                    </div>
                                   
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Proveedor <font color="red">*</font></label>
                                        <%--<select id="ddlProveedor" runat=server name="ddlProveedor" style="width: 100%; color: Black; height: 30px;">
                                            <option value="">Seleccione un Proveedor</option>
                                        </select>--%>
                                        <asp:DropDownList ID="ddlProveedores" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>

                                     <div class="col-xs-3">
                                        <label for="nombre">
                                            Fuente de Financiamiento <font color="red">*</font></label>
                                        
                                         <asp:DropDownList ID="ddlFinanciamiento" runat="server" CssClass="form-control"> 
                                         </asp:DropDownList>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="div_comiteCompras" runat="server">
                    <div class="col-md-12">
                        <div id="div2" class="box box-primary" runat="server">
                            <div class="box-header">
                                <h3 class="box-title">
                                    Comité de Recepción</h3>
                            </div>
                            <div class="box-body">
                                <div style="float: left; width: 20%">
                                    <div class="BottomPadding">
                                        Valores Seleccionados:
                                    </div>
                                    <dx:ASPxListBox ID="ASPxListBox1" ClientInstanceName="selList" runat="server" Height="250px"
                                        Width="100%" Theme="Aqua" />
                                    <div class="TopPadding">
                                        Cantidad Seleccionada: <span id="selCount" style="font-weight: bold">0</span>
                                    </div>
                                </div>
                                <div style="float: right; width: 78%">
                                    <dx:ASPxGridView ID="gridPersonal" ClientInstanceName="gridPersonal" runat="server"
                                        Width="100%" Theme="Aqua" KeyFieldName="ci" AutoGenerateColumns="False" EnableTheming="True"
                                        Caption="Personal">
                                        <Columns>
                                            <dx:GridViewCommandColumn VisibleIndex="0" ShowSelectCheckbox="True">
                                                <ClearFilterButton Visible="True">
                                                </ClearFilterButton>
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataColumn FieldName="documento" VisibleIndex="1" Caption="documento" />
                                            <dx:GridViewDataColumn FieldName="nombres" VisibleIndex="2" Caption="nombres" />
                                            <dx:GridViewDataColumn FieldName="apellidos" VisibleIndex="3" />
                                            <dx:GridViewDataColumn FieldName="area" VisibleIndex="6" Caption="area" />
                                            <dx:GridViewDataTextColumn Caption="estado" VisibleIndex="7">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Gerencia" FieldName="gerencia" 
                                                VisibleIndex="4">
                                                <PropertiesTextEdit>
                                                    <ValidationSettings ErrorText="Valor inválido">
                                                        <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                        <ClientSideEvents SelectionChanged="gridPersonal_SelectionChanged" />
                                        <SettingsPager PageSize="3">
                                        </SettingsPager>
                                        <Settings ShowFilterRow="True" />
                                        <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                    </dx:ASPxGridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="modal fade" id="deleteConfirmModal" tabindex="-1" role="dialog" aria-labelledby="deleteLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="deleteLabel">Notificacion de eliminacion</h4>
            </div>
            <div class="modal-body">
                <p><strong>Esta seguro que desea eliminar la compra?</strong></p>
                <p><small>
                    Las compras que se encuentren en estado aprobado no podran ser eliminadas</small>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <%--<button type="button" class="btn btn-danger" id="deleteConfirm">Delete Notification</button>--%>
                <asp:Button ID="Button1" runat="server" 
                                    Text="Eliminar" CssClass="btn btn-danger" 
                                    onclick="btnEliminarCompra_Click" />
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="AprobarConfirmModal" tabindex="-1" role="dialog" aria-labelledby="deleteLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="H1">Notificacion de Aprobacion</h4>
            </div>
            <div class="modal-body">
                <p><strong>Esta seguro que desea aprobar la compra?</strong></p>
                <p><small>
                    Una vez aprobada la compra no podra realizar modificaciones en la compra</small>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <%--<button type="button" class="btn btn-danger" id="deleteConfirm">Delete Notification</button>--%>
                <asp:Button ID="Button2" runat="server" 
                                    Text="Aprobar" CssClass="btn btn-danger" 
                                    onclick="btnAprobarCompra_Click"  />
            </div>
        </div>
    </div>
</div>



            </section>
            </form>
        </aside>
    </div>
    <!-- ./wrapper -->
        <script type="text/javascript">
            function ConfirmaElimina() {
//                if (confirm("¿Está seguro de que quiere eliminar el registro?"))
//                    return true;
                //                                else return false;
                $('#deleteConfirmModal').modal('show');
                return false;

            }

//            $(function () {
//                $("#deleteConfirmModal").on('click', "#deleteConfirm", function () {
//                    return true;
//                });
//            });


            function ConfirmaAprobarCompra() {
//                if (confirm("¿Está seguro de que quiere aprobar la compra? Al realizar la aprobacion no podra realizar cambios en la compra"))
//                    return true;
                //                else return false;
                $('#AprobarConfirmModal').modal('show');
                return false;
            }

//            $(function () {
//                $("#deleteConfirmModal").on('click', "#deleteConfirm", function () {
//                    return true;
//                });
//            });

          
    </script>
</body>


</html>
