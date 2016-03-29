﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asignaciones.aspx.cs" Inherits="ActivosFijosEETC.Views.Asignaciones" %>

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
        document.write('<script src="js/Asignaciones.js" type="text/javascript"><\/script>');   
    </script>
    <!-- jQuery UI 1.10.3 -->
    <script src="bootstrap/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="bootstrap/js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="bootstrap/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="bootstrap/js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="bootstrap/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
        type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="bootstrap/js/AdminLTE/app.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="bootstrap/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>

    <script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
    <script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
    <script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/light.js"></script>

</head>
<body class="skin-blue" onkeydown="return (event.keyCode != 116)">
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
                  <i class="fa fa-dropbox"></i>  Asignaciones <small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li><a href="#">Asignaciones</a></li>
                    <li class="active">Registro de asignaciones</li>
                </ol>
            </section>
            <form id="form1" runat="server">
            <div class="modal fade" id="deleteConfirmModal" tabindex="-1" role="dialog" aria-labelledby="deleteLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="deleteLabel">
                                Notificacion de eliminacion</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                <strong>Esta seguro que desea eliminar la asignación?</strong></p>
                            <p>
                                <small>Las asignaciones que se encuentren en estado asignado no podran ser eliminadas</small>
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                Cancelar</button>
                            <%--<button type="button" class="btn btn-danger" id="deleteConfirm">Delete Notification</button>--%>
                            <asp:Button ID="Button1" runat="server" Text="Eliminar" CssClass="btn btn-danger"
                                OnClick="btnEliminarAsignacion_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <section class="content">
                <div class="row" id="div_Listacompras" runat="server">
                    <div class="col-md-12">
                        <div id="div_ListaAsignaciones" class="box box-primary" runat="server">
                            <div class="box-header">
                                <h3 class="box-title">
                                    Lista de Asignaciones Realizadas</h3>
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
                                <asp:LinkButton ID="btnRegistroAsignacion" runat="server" Text="<span class='fa fa-plus'></span> Nueva Asignacion" CssClass="btn btn-primary"
                                    OnClick="btnRegistroAsignacion_Click"></asp:LinkButton>

                                     <asp:LinkButton ID="btnAsignarActivos" runat="server" Text="<span class='fa fa-file-text-o'></span> Ver detalle de asignación"
                                    CssClass="btn btn-success" OnClick="btnAsignarActivos_Click"></asp:LinkButton>

                                      <asp:LinkButton ID="btnAprobar" runat="server" Text="<span class='fa fa-thumbs-o-up'></span> Aprobar Asignacion" CssClass="btn btn-warning"
                                    OnClientClick="return ConfirmaAprobarAsignacion();"></asp:LinkButton>

                                     <asp:LinkButton ID="btnEliminarAsignacion" runat="server" Text="<span class='fa fa-trash-o'></span> Eliminar Asignación"
                                    CssClass="btn btn-danger" OnClientClick="return ConfirmaElimina();"></asp:LinkButton>
                            
                            </div>
                            <!-- /.box-body -->
                            <div class="box">
                                <div class="box-body table-responsive">
                                    <div>
                                        <dx:ASPxGridView ID="gridAsignaciones" runat="server" AutoGenerateColumns="False"
                                            Width="100%" Theme="Aqua" Caption="Asignaciones" Font-Size="Small" OnHtmlRowPrepared="gridAsignaciones_HtmlRowPrepared">
                                            <Columns>
                                                <dx:GridViewDataTextColumn Caption="id" VisibleIndex="1" FieldName="id" Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Fecha Asignación" VisibleIndex="3" FieldName="f_asignacion"
                                                    Width="10%">
                                                    <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Documento" VisibleIndex="6" FieldName="documento"
                                                    Width="5%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Ubicación" VisibleIndex="5" FieldName="ubicacion"
                                                    Width="15%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Correlativo" FieldName="correlativo" 
                                                    VisibleIndex="2" Width="10%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Oficina" FieldName="oficina" VisibleIndex="9"
                                                    Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Nombres" FieldName="nombres" VisibleIndex="7"
                                                    Width="12%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Apellidos" FieldName="apellidos" VisibleIndex="8"
                                                    Width="13%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="fk_estacion" FieldName="fk_estacion" Visible="False"
                                                    VisibleIndex="14">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Estación" FieldName="estacion" VisibleIndex="10"
                                                    Width="15%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Gerencia" FieldName="gerencia" VisibleIndex="11"
                                                    Width="20%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="fkc_estado_proceso" FieldName="fkc_estado_proceso"
                                                    Visible="False" VisibleIndex="12">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Estado Proceso" FieldName="estado_proceso" VisibleIndex="13"
                                                    Width="10%">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="fkc_ubicacion" Visible="False" VisibleIndex="4">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                            <Settings ShowFilterRow="True" ShowFilterRowMenu="True" 
                                                ShowHorizontalScrollBar="True" />
                                            <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                        </dx:ASPxGridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div id="dangerAsignaciones" class="alert alert-danger" role="alert" style="display: none">
                            <strong>Error!correcto!</strong>
                        </div>
                        <div id="warningAsignaciones" class="alert alert-warning" role="alert" style="display: none">
                            <strong>Atencion!</strong>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="row" id="div_RegistroMaestroAsignacion" runat="server">
                            <div class="col-md-12">
                                <div id="div1" class="box box-primary" runat="server">
                                    <div class="box-header">
                                        <h3 class="box-title">
                                            Registro de maestro de asignación</h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body">
                                        <asp:LinkButton ID="btnGuardarAsignacion" runat="server" Text="<span class='fa fa-save'></span> Guardar y Continuar" CssClass="btn btn-primary"
                                            OnClick="btnGuardarAsignacion_Click" OnClientClick="return Validar();"></asp:LinkButton>
                                      
                                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-default"
                                            OnClick="btnCancelar_Click" />
                                    </div>
                                    <!-- /.box-body -->
                                    <div class="box-body">
                                        <asp:TextBox CssClass="hidden" ID="id" runat="server"></asp:TextBox>
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <label for="nombre">
                                                    Fecha de Asignación <font color="red">*</font>
                                                </label>
                                                <input id="dateFechaAsignacion" type="text" name="dateFechaAsignacion" readonly="readonly"
                                                    value="" class="form-control" placeholder="ejemplo: 01/01/2014" />
                                            </div>
                                            <div class="col-xs-3" id="Div3" runat="server">
                                                <label for="nombre">
                                                    Ubicación <font color="red">*</font>
                                                </label>
                                                <asp:DropDownList ID="ddlUbicacion" CssClass="form-control" runat="server" AppendDataBoundItems="true"
                                                    onchange="HideEstaciones(this);">
                                                    <asp:ListItem Text="Seleccione un item" Value="-1" />
                                                </asp:DropDownList>
                                            </div>
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <div class="col-xs-3" id="linea">
                                                        <label for="nombre">
                                                            Línea <font color="red">*</font>
                                                        </label>
                                                        <asp:DropDownList ID="ddlLinea" CssClass="form-control" runat="server" AutoPostBack="True"
                                                            AppendDataBoundItems="true" OnSelectedIndexChanged="ddlLinea_SelectedIndexChanged">
                                                            <asp:ListItem Text="Seleccione un item" Value="-1" />
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-xs-3" id="estacion">
                                                        <label for="nombre">
                                                            Estación <font color="red">*</font>
                                                        </label>
                                                        <asp:DropDownList ID="ddlEstacion" CssClass="form-control" runat="server">
                                                        </asp:DropDownList>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="div_ResponsableAsignado" runat="server">
                            <div class="col-md-12">
                                <div id="div2" class="box box-primary" runat="server">
                                    <div class="box-header">
                                        <h3 class="box-title">
                                            Responsable asignado <font color="red">*</font>
                                        </h3>
                                    </div>
                                    <div class="box-body">
                                    <div class="alert alert-info alert-dismissable">
                                        <i class="fa fa-info"></i>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                            ×</button>
                                        <b>Información!</b> Busque y seleccione la persona que custodie de los activos que
                                        serán asignados
                                    </div>
                                    </div>
                                    <div class="box">
                                        <div class="box-body table-responsive">
                                            <dx:ASPxGridView ID="gridPersonal" runat="server" AutoGenerateColumns="False" Caption="Personal"
                                                EnableTheming="True" Theme="Aqua" Width="100%">
                                                <Columns>
                                                    <dx:GridViewCommandColumn VisibleIndex="0">
                                                        <ClearFilterButton Visible="True">
                                                        </ClearFilterButton>
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn Caption="Documento" FieldName="documento" VisibleIndex="2">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Nombres" FieldName="nombres" VisibleIndex="3">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Apellidos" FieldName="apellidos" VisibleIndex="4">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Gerencia" FieldName="gerencia" VisibleIndex="5">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Area" FieldName="area" VisibleIndex="6">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="1" Visible="False">
                                                        <PropertiesTextEdit>
                                                            <ValidationSettings ErrorText="Valor inválido">
                                                                <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                            </ValidationSettings>
                                                        </PropertiesTextEdit>
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                                <SettingsBehavior AllowFocusedRow="True" />
                                                <Settings ShowFilterRow="True" ShowHeaderFilterButton="True" 
                                                    ShowFilterRowMenu="True" />
                                                <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                            </dx:ASPxGridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="AprobarConfirmModal" tabindex="-1" role="dialog" aria-labelledby="deleteLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="H2">
                                    Notificacion de Aprobacion</h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    <strong>Esta seguro que desea aprobar la asignación?</strong></p>
                                <p>
                                    <small>Una vez aprobada la asignación no podra realizar modificaciones ni eliminarla</small>
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Cancelar</button>
                                <asp:Button ID="btnAprobarAsignacion" runat="server" Text="Aprobar" CssClass="btn btn-danger"
                                    OnClick="btnAprobarAsignacion_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            </form>
        </aside>
    </div>
    <!-- ./wrapper -->
    <script>

        function HideEstaciones(ddlId) {
            var ControlName = document.getElementById(ddlId.id);

            if (ControlName.value == 11)  //it depends on which value Selection do u want to hide or show your textbox 
            {
                document.getElementById('linea').style.display = 'none';
                document.getElementById('estacion').style.display = 'none';

            }
            else {
                document.getElementById('linea').style.display = '';
                document.getElementById('estacion').style.display = '';

            }
        } 
    </script>
    <script type="text/javascript">
        function Validar() {
            var error = 0;

            if (document.getElementById('dateFechaAsignacion').value == '' || document.getElementById('<%=ddlUbicacion.ClientID %>').value == '-1') {
                error = 1;
            }

            if (document.getElementById('<%=ddlUbicacion.ClientID %>').value != '11' && document.getElementById('<%=ddlLinea.ClientID %>').value == '-1') {
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

        function ConfirmaElimina() {
            $('#deleteConfirmModal').modal('show');
            return false;
        }

        function ConfirmaAprobarAsignacion() {
            $('#AprobarConfirmModal').modal('show');
            return false;
        }


    </script>
</body>
</html>
