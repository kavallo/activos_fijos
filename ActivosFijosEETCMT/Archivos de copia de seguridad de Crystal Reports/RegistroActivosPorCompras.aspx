﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroActivosPorCompras.aspx.cs"
    Inherits="ActivosFijosEETC.Views.RegistroActivosPorCompras"  %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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
        document.write('<script src="js/RegistroActivos.js" type="text/javascript"><\/script>');   
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
<body class="skin-blue">
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
                    Activos <small>Registro de Activos por Compras</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li><a href="#">Activos</a></li>
                    <li class="active">Registro de activos por Compras</li>
                </ol>
            </section>
            <form runat=server>
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-primary">
                            <div class="box-header">
                                <h3 class="box-title">
                                    DATOS DE COMPRA</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <div class="box-body">
                                    <asp:Button ID="btnVerCompras" runat="server" Text="Ver Compras" 
                                        CssClass="btn btn-primary" onclick="btnVerCompras_Click" />
                                          <asp:Button ID="btnImprimir" runat="server" Text="Imprimir Informe" 
                                        CssClass="btn btn-primary" onclick="btnImprimir_Click"  />
                                </div>
                            <div class="box-body">
                                <asp:TextBox CssClass="hidden" ID="txtCodigoCompra" runat="server"></asp:TextBox>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <label for="nombre">
                                            Descripción</label>
                                        <asp:TextBox ID="txtDescripcion" CssClass="form-control" ReadOnly=true
                                            runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Fecha de Registro</label>
                                       <asp:TextBox ID="txtFechaRegistro" CssClass="form-control"
                                            ReadOnly="true" runat="server" ></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        &nbsp;<label for="nombre">Tasa UFV</label><asp:TextBox ID="txtTasaUFV" CssClass="form-control"
                                            ReadOnly="true" runat="server" ></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        &nbsp;<label for="nombre">Tasa Sus</label><asp:TextBox ID="txtTasaSus" CssClass="form-control"
                                            ReadOnly=true runat="server" ></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        &nbsp;<label for="nombre">Nro. Factura</label><asp:TextBox ID="txtNroFactura" CssClass="form-control"
                                            ReadOnly=true runat="server" ></asp:TextBox>
                                    </div>
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                        <asp:TextBox ID="txtIdGerenciaSolicitante" CssClass="form-control"
                                            ReadOnly=true runat="server" Visible="False"></asp:TextBox>
                                            Gerencia Solicitante</label><asp:TextBox ID="txtGerenciaSolicitante" CssClass="form-control"
                                            ReadOnly=true runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        &nbsp;<label for="nombre">Documento Respaldo</label><asp:TextBox ID="txtDocRespaldo"
                                            CssClass="form-control" ReadOnly=true runat="server"></asp:TextBox>
                                    </div>
                                    
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Proveedor</label>
                                             <asp:TextBox ID="txtIdProveedor" CssClass="form-control"
                                           ReadOnly=true runat="server" Visible="False"></asp:TextBox>
                                        <asp:TextBox ID="txtProveedor" CssClass="form-control"
                                           ReadOnly=true runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-3">
                                    <asp:TextBox ID="txtIdFuenteFinanciamiento" CssClass="form-control"
                                               ReadOnly=true Visible=false runat="server"></asp:TextBox>
                                        <label for="nombre">
                                            Fuente de Financiamiento</label><asp:TextBox ID="txtFuenteFinanciamiento" CssClass="form-control"
                                               ReadOnly=true runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
           
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">
                                        DATOS DEL ACTIVO</h3>
                                </div>
                                <!-- /.box-header -->
                                <!-- form start -->
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                

                                <div class="box-body">
                                <div class="row">
                                 <div class="col-xs-12">
                                            <label for="nombre">
                                                Descripción <font color="red">*</font></label>
                                           <asp:TextBox ID="txtDescripcionActivo" runat="server" CssClass="form-control" placeholder="ejemplo: Monitor marca hp color negro"></asp:TextBox>
                                        </div>
                                </div>
                                    <div class="row">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server"> 
                                     <ContentTemplate> 
                                        <div class="col-xs-3">
                                            <label for="nombre">
                                                Grupo Contable <font color="red">*</font></label>
                                              <%--   <select id="ddlGrupoContable" name="ddlGrupoContable" class="form-control">
                                                    <option value="">Seleccione un grupo contable</option>
                                                </select>--%>
                                                 <asp:DropDownList ID="ddlGrupoContable" runat="server"
                                                CssClass="form-control" 
                                                AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlGrupoContable_SelectedIndexChanged"
                                                >
                                                <asp:ListItem Text="Seleccione un item" Value="-1" />
                                                </asp:DropDownList>
                                            
                                        </div>
                                        <div class="col-xs-3">
                                            <label for="nombre">
                                                Auxiliar Contable <font color="red">*</font></label>
                                          
                                                    <asp:DropDownList ID="ddlAuxiliarContable" runat="server" 
                                                        CssClass="form-control" AppendDataBoundItems="True">
                                                          <asp:ListItem Text="Seleccione un item" Value="-1" />
                                                    </asp:DropDownList>
                                               
                                    <%--     <select id="ddlAuxiliarContable" name="ddlAuxiliarContable" class="form-control">
                                                    <option value="">Seleccione un auxiliar contable</option>
                                                </select>--%>
                                            
                                        </div>
                                        </ContentTemplate>
                                        <Triggers> 
                                        <asp:AsyncPostBackTrigger ControlID="ddlGrupoContable" EventName="SelectedIndexChanged" /> 
                                        </Triggers> 
                                        </asp:UpdatePanel>

                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
                                     <ContentTemplate> 
                                        <div class="col-xs-3">
                                            <label for="nombre">
                                                Marca <font color="red">*</font></label>
                                            <asp:DropDownList ID="ddlMarca" runat="server" CssClass="form-control" 
                                                AppendDataBoundItems="True" AutoPostBack="True" onselectedindexchanged="ddlMarca_SelectedIndexChanged" 
                                                 >
                                                  <asp:ListItem Text="Seleccione un item" Value="-1" /></asp:DropDownList>

                                          <%--    <select id="ddlMarca" name="ddlMarca" class="form-control">
                                                    <option value="">Seleccione una marca</option>
                                                </select>--%>

                                        </div>

                                        <div class="col-xs-3">
                                            <label for="nombre">
                                                Modelo <font color="red">*</font></label>
                                        <%--         <select id="ddlModelo" name="ddlModelo" class="form-control">
                                                    <option value="">Seleccione un modelo</option>
                                                </select>--%>
                                          
                                                    <asp:DropDownList ID="ddlModelo" runat="server" CssClass="form-control" 
                                                AppendDataBoundItems="True">
                                                     <asp:ListItem Text="Seleccione un item" Value="-1" />
                                                    </asp:DropDownList>
                                               

                                        </div>
                                        </ContentTemplate>
                                         <Triggers> 
                                        <asp:AsyncPostBackTrigger ControlID="ddlMarca" EventName="SelectedIndexChanged" /> 
                                        </Triggers> 
                                        </asp:UpdatePanel>
                                    </div>
                                    <div class="row">
                                       
                                        <div class="col-xs-2">
                                            <label for="nombre">
                                                Serie</label>
                                           <asp:TextBox ID="txtSerie" runat="server" CssClass="form-control" placeholder="ejemplo: XYD001EF501"></asp:TextBox>

                                        </div>
                                        <div class="col-xs-2">
                                            <label for="nombre">
                                                Costo Bs <font color="red">*</font></label>
                                            <asp:TextBox ID="txtValorInicial" runat="server" onchange="TestOnTextChange()" CssClass="form-control" placeholder="ejemplo: 1500.50 Bs"></asp:TextBox>
                                        </div>
                                        
                                      <div class="col-xs-2">
                                            <label for="nombre">
                                                Costo UFV <font color="red">*</font></label>
                                            <asp:TextBox ID="txtCostoUfv" runat="server" CssClass="form-control" ReadOnly=true></asp:TextBox>
                                          <%--<input type="type" name="name" value="" id="txtCostoUfv" class="form-control" />--%>
                                        </div>
                                        <div class="col-xs-2">
                                            <label for="nombre">
                                                Costo SUS <font color="red">*</font></label>
                                            <asp:TextBox ID="txtCostoSus" runat="server" CssClass="form-control" ReadOnly=true></asp:TextBox>
                                       <%-- <input type="type" name="name" value="" id="txtCostoSus" class="form-control" />--%>
                                        </div>
                                          <div class="col-xs-2">
                                            <label for="nombre">
                                               Inicio Garantia</label>
                                            <input id="dateInicioGarantia" type="text" name="dateInicioGarantia" class="form-control" runat=server
                                            placeholder="ejemplo: 01/01/2014" />
                                        </div>
                                          <div class="col-xs-2">
                                            <label for="nombre">
                                                Conclusión Garantia</label>
                                             <input id="dateFinGarantia" type="text" name="dateFinGarantia" value="" class="form-control" runat=server
                                            placeholder="ejemplo: 01/01/2014" />
                                        </div>
                                    </div>
                                   
                                </div>
                          

                        <div class=box-body>
                        <div id="danger" class="alert alert-danger" role="alert" style="display: none">
                                                <strong>Error!</strong>
                                                </div>
                                                <div id="success" class="alert alert-success" role="alert" style="display: none">
                                    <strong>Correcto!</strong>
                                </div>
                                <div id="warning" class="alert alert-success" role="alert" style="display: none">
                                    <strong>Atencion!</strong>
                                </div>
                        <div class="alert alert-info alert-dismissable">
                                        <i class="fa fa-info"></i>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        <b>Información! </b>Al agregar un activo nuevo se creara automaticamente su codigo 
                                    </div>
                                    </div>
                         <div class="box-footer" id="actionActivos" runat=server>
                             <asp:Button ID="btnRegistrarActivo" CssClass="btn btn-primary" runat="server" 
                                 Text="Registrar Activo" onclick="btnRegistrarActivo_Click"  OnClientClick="return Validar();"/>
                                 <asp:Button ID="btnDuplicarActivo" CssClass="btn btn-primary" runat="server" 
                                 Text="Duplicar" onclick="btnDuplicarActivo_Click" />
                                 <asp:Button ID="btnEliminar" CssClass="btn btn-primary" runat="server" 
                                 Text="Eliminar" onclick="btnEliminar_Click" OnClientClick="return ConfirmaElimina();"   />
                        </div>

                     

                        <div class="box">
                        <div class="box-body table-responsive">
                            <dx:ASPxGridView ID="GridActivosPorCompra" runat="server" AutoGenerateColumns="False" 
                                EnableTheming="True" Theme="Aqua" Width="100%" KeyFieldName="id" 
                                Caption="Activos Registrados">
                                <Columns>
                                    <dx:GridViewDataTextColumn Caption="Código Activo" VisibleIndex="1" 
                                        FieldName="codigo" Width="200px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn VisibleIndex="5" FieldName="fk_grupo_contable" 
                                        Visible="False">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Grupo Contable" VisibleIndex="6" 
                                        FieldName="grupo_contable" Width="200px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn VisibleIndex="7" FieldName="fk_auxiliar_contable" 
                                        Visible="False">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Auxiliar Contable" VisibleIndex="8" 
                                        FieldName="auxiliar_contable" Width="200px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn VisibleIndex="9" 
                                        FieldName="fk_marca" Visible="False">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Marca" VisibleIndex="10" 
                                        FieldName="marca" Width="200px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn VisibleIndex="11" FieldName="fk_modelo" 
                                        Visible="False">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Modelo" FieldName="modelo" 
                                        VisibleIndex="12" Width="200px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Serie" FieldName="serie" 
                                        VisibleIndex="13" Width="150px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Descripción" FieldName="descripcion" 
                                        VisibleIndex="4" Width="300px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Fecha Registro" FieldName="f_registro" 
                                        VisibleIndex="14" Width="200px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="fkc_estado_proceso" Visible="False" 
                                        VisibleIndex="15">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Estado Proceso" FieldName="estado_proceso" 
                                        VisibleIndex="24" Width="150px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="id" FieldName="id" Visible="False" 
                                        VisibleIndex="0">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Costo Bs" FieldName="valor_inicial" 
                                        VisibleIndex="16" Width="200px">
                                        <PropertiesTextEdit>
                                            <ValidationSettings ErrorText="Valor inválido">
                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                            </ValidationSettings>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Costo UFV" FieldName="valor_inicial_ufv" 
                                        VisibleIndex="19" Width="200px">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Costo SUS" FieldName="valor_inicial_sus" 
                                        VisibleIndex="20" Width="200px">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Inicio Garantia" 
                                        FieldName="f_inicio_garantia" VisibleIndex="22" Width="200px">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Fin Garantia" FieldName="f_fin_garantia" 
                                        VisibleIndex="23" Width="200px">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" />
<SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                            </dx:ASPxGridView>



                        </div>
                       </div>

                    </div>
                  
                </div>


                 <!-- Modal HTML -->
    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Información</h4>
                </div>
                <div class="modal-body">
                    <p>Por favor revise los datos faltantes</p>
                
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>


     <!-- Modal HTML -->
    <div id="myModal2" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Confirmación</h4>
                </div>
                <div class="modal-body">
                    <p>Está seguro que desea guardar los datos de la compra de activos?</p>
                    <p class="text-warning"><small>Si no guarda, los cambios se perderán.</small></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
            </div>
        </div>
    </div>


    <!-- /.box -->
    </section> 
    </form>
    </aside> </div>
    <!-- ./wrapper -->
    <script type="text/javascript">
        function TestOnTextChange() {
            //Your Code

            var costo_bs = document.getElementById("txtValorInicial").value;
            var tasa_ufv = document.getElementById("txtTasaUFV").value; 
            var tasa_sus = document.getElementById("txtTasaSus").value;

          

            var result_ufv = parseFloat(tasa_ufv) * parseFloat(costo_bs);
            var result_sus = parseFloat(costo_bs) / parseFloat(tasa_sus)  ;

            var result_ufv = Math.round(result_ufv * Math.pow(10, 5)) / Math.pow(10, 5);
            var result_sus = Math.round(result_sus * Math.pow(10, 2)) / Math.pow(10, 2);
            $('#txtCostoUfv').val(result_ufv);
            $('#txtCostoSus').val(result_sus);
        }
</script>

<script type="text/javascript">

    function Validar() {
        var error = 0;

        if (document.getElementById('<%=txtDescripcionActivo.ClientID %>').value == '' || document.getElementById('<%=ddlGrupoContable.ClientID %>').value == '-1' || document.getElementById('<%=ddlAuxiliarContable.ClientID %>').value == '-1' ||
            document.getElementById('<%=ddlMarca.ClientID %>').value == '-1'||document.getElementById('<%=ddlModelo.ClientID %>').value == '-1'||
            document.getElementById('<%= txtValorInicial.ClientID %>').value == ''||document.getElementById('<%= txtCostoUfv.ClientID %>').value == ''||
            document.getElementById('<%= txtCostoSus.ClientID %>').value == '') {
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
    <script type="text/javascript">
        function ConfirmaElimina() {
            if (confirm("¿Está seguro de que quiere eliminar el registro?"))
                return true;
            else return false;
        }
    </script>
</body>
</html>
