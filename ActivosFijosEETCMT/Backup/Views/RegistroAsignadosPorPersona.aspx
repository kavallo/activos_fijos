﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroAsignadosPorPersona.aspx.cs"
    Inherits="ActivosFijosEETC.Views.RegistroAsignadosPorPersona" %>

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
    <script src="js/plugins/jquery.price_format.2.0.min.js" type="text/javascript"></script>
</head>
<body class="skin-blue">
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
                                    <a href="Login.aspx" class="btn btn-primary btn-flat">Sign out</a>
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
                  <i class="fa fa-dropbox"></i> Asignaciones <small>Registro de asignación de activos por persona</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li><a href="#">Activos</a></li>
                    <li class="active">Registro de asignación de activos</li>
                </ol>
            </section>
            <form id="Form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-primary">
                            <div class="box-header">
                                <h3 class="box-title">
                                    DATOS DE ASIGNACIÓN</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <div class="box-body">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="box-body">
                                            <asp:LinkButton  ID="btnVerAsignaciones" runat="server" Text=" <span class='fa fa-dropbox'></span> Ver asignaciones" CssClass="btn btn-primary"
                                                OnClick="btnVerAsignaciones_Click"></asp:LinkButton>
                                           <%-- <asp:Button ID="btnVerAsignaciones" runat="server" Text="Ver asignaciones" CssClass="btn btn-primary"
                                                OnClick="btnVerAsignaciones_Click" />--%>
                                            <asp:LinkButton ID="btnImprimir" runat="server" Text="<span class='fa fa-print'></span> Imprimir Informe" CssClass="btn btn-warning" 
                                                OnClick="btnImprimir_Click"></asp:LinkButton>
                                          <%--  <asp:Button ID="btnImprimir" runat="server" Text="Imprimir Informe" CssClass="btn btn-primary" 
                                                OnClick="btnImprimir_Click" />--%>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                    <asp:PostBackTrigger ControlID="btnImprimir" /> 
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                            <div class="box-body">
                                <asp:TextBox CssClass="hidden" ID="id" runat="server"></asp:TextBox>
                                <div class="row">
                                    
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Documento
                                        </label>
                                         <asp:TextBox ID="txtfkResponsable" CssClass="form-control" runat="server" ReadOnly="True" Visible="false"></asp:TextBox>
                                        <asp:TextBox ID="txtCodigoAsignacion" CssClass="form-control" runat="server" Visible="false"></asp:TextBox>
                                        <asp:TextBox ID="txtDocumento" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-4">
                                        <label for="nombre">
                                            Nombre 
                                        </label>
                                        <asp:TextBox ID="txtNombres" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-3">
                                        &nbsp;<label for="nombre">Apellidos 
                                        </label>
                                        <asp:TextBox ID="txtApellidos" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-2">
                                        <label for="nombre">
                                            Fecha de Asignación 
                                        </label>
                                        <asp:TextBox ID="txtFechaAsignacion" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        &nbsp;<label for="nombre">Gerencia
                                        </label>
                                        <asp:TextBox ID="txtGerencia" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                   <div class="col-xs-3">
                                        &nbsp;<label for="nombre">Ubicación
                                        </label>
                                        <asp:TextBox ID="txtUbicacion" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Linea 
                                        </label>
                                        <asp:TextBox ID="txtLinea" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Estación 
                                        </label>
                                        <asp:TextBox ID="txtIdEstacion" CssClass="form-control" runat="server" Visible="false"
                                            ReadOnly="True"></asp:TextBox>
                                        <asp:TextBox ID="txtEstacion" CssClass="form-control" runat="server" 
                                            ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box box-primary">
                            <div class="box-header">
                                <h3 class="box-title">
                                    DATOS DEL ASIGNACION DEL ACTIVO</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
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
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                        &times;</button>
                                    <b>Información! </b>Seleccione un activo no asignado, seleccione el estado físico
                                    del activo y alguna observación si corresponde y haga clic en asignar activo
                                </div>
                            </div>
                            <!-- form start -->
                            <div class="box-body" id="div_campos" runat=server>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <label for="nombre">
                                            Estado Físico del Activo <font color="red">*</font>
                                        </label>
                                        <asp:DropDownList ID="ddlEstadoFisicoActivo" runat="server" CssClass="form-control"
                                            AppendDataBoundItems="True">
                                            <asp:ListItem Text="Seleccione un item" Value="-1" />
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-xs-9">
                                        <label for="nombre">
                                            Observaciones
                                        </label>
                                        <asp:TextBox ID="txtObservaciones" runat="server" CssClass="form-control" placeholder="ejemplo: XYD001EF501"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                              <div class="box-footer" id="idBarCode" runat="server">
                                  <asp:LinkButton ID="btnPrintBarcode" CssClass="btn btn-default" runat="server" Text="<span class='fa fa-barcode'></span> Imprimir codigo de barras individual"
                                            OnClick="btnPrintBarcode_Click"></asp:LinkButton>

                                     <%--   <asp:Button ID="btnPrintBarcode" CssClass="btn btn-primary" runat="server" Text="Imprimir codigo de barras individual"
                                            OnClick="btnPrintBarcode_Click" />--%>
                                  <asp:LinkButton ID="btnPrintBarcodeAll" CssClass="btn btn-primary" runat="server" Text="<span class='fa fa-barcode'></span> Imprimir codigo de barras compra"
                                            OnClick="btnPrintBarcodeAll_Click"></asp:LinkButton>
                                       <%-- <asp:Button ID="btnPrintBarcodeAll" CssClass="btn btn-primary" runat="server" Text="Imprimir codigo de barras compra"
                                            OnClick="btnPrintBarcodeAll_Click" />--%>
                                    </div>

                          
                                    <div class="box" id="div_activos_sin_asignacion" runat=server>
                                        <div class="box-body table-responsive">
                                            <dx:ASPxGridView ID="GridActivosPorAsignar" runat="server" AutoGenerateColumns="False"
                                                EnableTheming="True" Theme="Aqua" Width="100%" KeyFieldName="id" Caption="Activos sin asignación">
                                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                                <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" 
                                                    ShowFooter="True" ShowGroupPanel="True" />
                                                <Settings ShowFooter="True" />
                                                <TotalSummary>
                                                    <dx:ASPxSummaryItem FieldName="valor_inicial" SummaryType="Sum" DisplayFormat="Bs {0:0,0.00}"
                                                        ShowInColumn="Costo Bs" />
                                                    <dx:ASPxSummaryItem FieldName="valor_inicial_ufv" SummaryType="Sum" DisplayFormat="ufv {0:0,0.0000}"
                                                        ShowInColumn="Costo UFV" />
                                                    <dx:ASPxSummaryItem FieldName="valor_inicial_sus" SummaryType="Sum" DisplayFormat="$us {0:0,0.00}"
                                                        ShowInColumn="Costo SUS" />
                                                </TotalSummary>
                                                <Columns>
                                                    <dx:GridViewDataTextColumn Caption="Código Activo" VisibleIndex="2" FieldName="codigo"
                                                        Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn VisibleIndex="5" FieldName="fk_grupo_contable" Visible="False">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                                <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                                </RegularExpression>
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Grupo Contable" VisibleIndex="6" FieldName="grupo_contable"
                                                        Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn VisibleIndex="7" FieldName="fk_auxiliar_contable" Visible="False">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                                <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                                </RegularExpression>
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Auxiliar Contable" VisibleIndex="8" FieldName="auxiliar_contable"
                                                        Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn VisibleIndex="9" FieldName="fk_marca" Visible="False">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                                <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                                </RegularExpression>
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Marca" VisibleIndex="10" FieldName="marca" Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn VisibleIndex="11" FieldName="fk_modelo" Visible="False">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                                <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                                </RegularExpression>
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Modelo" FieldName="modelo" VisibleIndex="12"
                                                        Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Serie" FieldName="serie" VisibleIndex="13" Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Descripción" FieldName="descripcion" VisibleIndex="4"
                                                        Width="40%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="fkc_estado_proceso" Visible="False" VisibleIndex="15">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                                <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                                </RegularExpression>
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Estado Proceso" FieldName="estado_proceso" VisibleIndex="24"
                                                        Width="150px" Visible="False">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="id" FieldName="id" Visible="False" VisibleIndex="1">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control"></SettingsBehavior>
                                                <Settings ShowVerticalScrollBar="True" ShowHorizontalScrollBar="True" ShowFilterRow="True"
                                                    ShowHeaderFilterButton="True"></Settings>
                                                <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                            </dx:ASPxGridView>
                                        </div>
                                    </div>
                             

                                    <div class="box-footer" id="actionActivos" runat="server">
                                        <asp:LinkButton ID="btnAsignarActivo" CssClass="btn btn-success" runat="server" Text="<span class='fa fa-download'></span> Asignar Activo"
                                            OnClientClick="return Validar();" OnClick="btnAsignarActivo_Click"></asp:LinkButton>

                                      <%--  <asp:Button ID="btnAsignarActivo" CssClass="btn btn-success" runat="server" Text="Asignar Activo"
                                            OnClientClick="return Validar();" OnClick="btnAsignarActivo_Click" /> --%>
                                        <asp:LinkButton ID="btnQuitarAsignacion" CssClass="btn btn-danger" runat="server" Text="<span class='fa fa-upload'></span> Quitar Asignación"
                                            OnClientClick="return ConfirmaElimina();" OnClick="btnQuitarAsignacion_Click"></asp:LinkButton>
                                       <%-- <asp:Button ID="btnQuitarAsignacion" CssClass="btn btn-danger" runat="server" Text="Quitar Asignación"
                                            OnClientClick="return ConfirmaElimina();" OnClick="btnQuitarAsignacion_Click" />--%>
                                    </div>
                                   
                                    <div class="box">
                                        <div class="box-body table-responsive">
                                            <dx:ASPxGridView ID="gridActivosAsignados" runat="server" AutoGenerateColumns="False"
                                                EnableTheming="True" Theme="Aqua" Width="100%" KeyFieldName="id" Caption="Activos fijos asignados">
                                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                                <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" 
                                                    ShowFooter="True" ShowGroupPanel="True" />
                                                <TotalSummary>
                                                    <dx:ASPxSummaryItem FieldName="valor_inicial" SummaryType="Sum" DisplayFormat="Bs {0:0,0.00}"
                                                        ShowInColumn="Costo Bs" />
                                                    <dx:ASPxSummaryItem FieldName="valor_inicial_ufv" SummaryType="Sum" DisplayFormat="ufv {0:0,0.0000}"
                                                        ShowInColumn="Costo UFV" />
                                                    <dx:ASPxSummaryItem FieldName="valor_inicial_sus" SummaryType="Sum" DisplayFormat="$us {0:0,0.00}"
                                                        ShowInColumn="Costo SUS" />
                                                </TotalSummary>
                                                <Columns>
                                                    <dx:GridViewDataTextColumn Caption="Código Activo" VisibleIndex="2" FieldName="codigo"
                                                        Width="20%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn VisibleIndex="21" FieldName="descripcion" Caption="Descripción"
                                                        Width="50%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                                <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                                </RegularExpression>
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn VisibleIndex="25" Caption="Estado Físico del Activo" FieldName="estado_activo"
                                                        Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                                <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                                </RegularExpression>
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Observaciones" VisibleIndex="23" FieldName="observaciones"
                                                        Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Estado Proceso" VisibleIndex="22" FieldName="estado_proceso"
                                                        Width="10%">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="id" FieldName="id" Visible="False" VisibleIndex="0">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="fk_activo" VisibleIndex="1" 
                                                        Visible="False">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                                <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                            </dx:ASPxGridView>
                                        </div>
                                    </div>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnQuitarAsignacion" EventName="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="btnAsignarActivo" EventName="Click" />
                                   <asp:PostBackTrigger ControlID="btnPrintBarcode" />
                                   <asp:PostBackTrigger ControlID="btnPrintBarcodeAll" />
                                </Triggers>
                            </asp:UpdatePanel>

                           
                        </div>
                    </div>
                </div>
                <!-- Modal HTML -->
                <div id="myModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;tos faltanteslass="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                    Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal HTML -->
                <div id="myModal2" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;</button>
                                <h4 class="modal-title">
                                    Confirmación</h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    Está seguro que desea guardar los datos de la compra de activos?</p>
                                <p class="text-warning">
                                    <small>Si no guarda, los cambios se perderán.</small></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Cerrar</button>
                                <button type="button" class="btn btn-primary">
                                    Guardar</button>
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
        function ConfirmaElimina() {
            if (confirm("¿Está seguro de que quiere eliminar el registro?"))
                return true;
            else return false;
        }

        function Validar() {
            var error = 0;


            if (document.getElementById('<%=ddlEstadoFisicoActivo.ClientID %>').value == '-1') {
                error = 1;
            }

            if (error == 0) {
                return true;
            }
            else {
                alert('El estado físico de activo es obligatorio');
                return false;
            }
        }
    </script>
</body>
</html>
