﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresosActivos.aspx.cs"
    Inherits="ActivosFijosEETC.Views.IngresosActivos" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

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
    <!-- Date Picker -->
    <link href="bootstrap/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="bootstrap/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet"
        type="text/css" />
    <!-- Theme style -->
    <link href="bootstrap/css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="bootstrap/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <!-- jQuery UI 1.10.3 -->
    <script src="bootstrap/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="bootstrap/js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
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
    <script src="js/IngresosActivos.js" type="text/javascript"></script>
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
                    <i class="fa fa-sign-in"></i> Ingresos <small>Devolución de activos</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                    <li><a href="#">Control de activos</a></li>
                    <li class="active">Ingresos</li>
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
                                <strong>Esta seguro que desea eliminar la devolución?</strong></p>
                            <p>
                                <small>Los ingresos en estado aprobado no podrán ser eliminados</small>
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                Cancelar</button>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger"  onclick="btnEliminarIngreso_Click"
                                />
                        </div>
                    </div>
                </div>
            </div>
            <section class="content">
                <div class="row" id="div_ListaIngresos" runat="server">
                    <div class="col-md-12">
                        <div id="div_ListaSolicitudes" class="box box-primary" runat="server">
                            <div class="box-header">
                                <h3 class="box-title">
                                    Ingresos Realizados</h3>
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
                                <asp:LinkButton ID="btnNuevoIngreso" runat="server" Text="<span class='fa fa-plus'></span> Nuevo ingreso"
                                    CssClass="btn btn-primary" onclick="btnNuevoIngreso_Click" ></asp:LinkButton>
                                <asp:LinkButton ID="btnVerDetalleIngreso" runat="server" Text="<span class='fa fa-file-text-o'></span> Ver detalle de ingreso"
                                    CssClass="btn btn-success" onclick="btnVerDetalleIngreso_Click" ></asp:LinkButton>
                                <asp:LinkButton ID="btnAprobar" runat="server" Text="<span class='fa fa-thumbs-o-up'></span> Aprobar ingreso"
                                    CssClass="btn btn-warning" 
                                    OnClientClick="return ConfirmaAprobarIngreso();" 
                                    ></asp:LinkButton>
                                <asp:LinkButton ID="btnEditarMaestro" runat="server" Text="&lt;span class='fa fa-pencil'&gt;&lt;/span&gt; Editar ingreso"
                                    CssClass="btn btn-default" onclick="btnEditarMaestro_Click"></asp:LinkButton>
                                <asp:LinkButton ID="btnEliminarIngreso" runat="server" Text="<span class='fa fa-trash-o'></span> Eliminar ingreso"
                                    CssClass="btn btn-danger" OnClientClick="return ConfirmaElimina();" 
                                   ></asp:LinkButton>
                            </div>
                            <!-- /.box-body -->
                            <div class="box">
                                <div class="box-body table-responsive">
                                    <div>
                                        <dx:aspxgridview id="gridIngresos" runat="server" autogeneratecolumns="False"
                                            width="100%" theme="Aqua" caption="Ingresos" font-size="Small" 
                                            KeyFieldName="id" onhtmlrowprepared="gridIngresos_HtmlRowPrepared">
                                            <Columns>
                                                <dx:GridViewDataTextColumn Caption="id" VisibleIndex="0" FieldName="id" 
                                                    Visible="False">
                                                   
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                   
                                                </dx:GridViewDataTextColumn>

                                                <dx:GridViewDataTextColumn FieldName="fk_ingresos_salidas_maestro" 
                                                    VisibleIndex="1" Visible="False">
                                                  
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                  
                                                </dx:GridViewDataTextColumn>
                                            
                                                <dx:GridViewBandColumn Caption="Ingresos" HeaderStyle-HorizontalAlign=Center>
                                                 <Columns>
                                                  <dx:GridViewDataTextColumn Caption="Correlativo Ingreso" VisibleIndex="2" FieldName="correlativo"
                                                    Width="150px">
                                                    
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                    
                                                </dx:GridViewDataTextColumn>

                                                <dx:GridViewDataTextColumn Caption="Fecha Ingreso" VisibleIndex="3" FieldName="f_ingreso"
                                                    Width="150px">
                                                    <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                                                       
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
                                                       
                                                    </PropertiesTextEdit>
                                                   
                                                </dx:GridViewDataTextColumn>

                                                 </Columns>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                </dx:GridViewBandColumn>
                                                  <dx:GridViewBandColumn Caption="Salidas" HeaderStyle-HorizontalAlign=Center>
                                                 <Columns>
                                                 <dx:GridViewDataTextColumn Caption="Correlativo Salida" 
                                                    FieldName="correlativo_salida" VisibleIndex="5"
                                                    Width="150px">
                                                  
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                  
                                                </dx:GridViewDataTextColumn>

                                                 <dx:GridViewDataTextColumn Caption="Fecha Solicitud" FieldName="f_solicitud" 
                                                    VisibleIndex="7">
                                                      <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
                                                      </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                 </Columns>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                </dx:GridViewBandColumn>
                                                
                                                 <dx:GridViewBandColumn Caption="Personal" HeaderStyle-HorizontalAlign=Center>
                                                 <Columns>

                                                <dx:GridViewDataTextColumn Caption="Documento" VisibleIndex="8" FieldName="documento"
                                                    Width="150px">
                                                   
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                   
                                                </dx:GridViewDataTextColumn>
                                               
                                                
                                                <dx:GridViewDataTextColumn FieldName="nombres" VisibleIndex="9" Width="200px" 
                                                    Caption="Nombres">
                                                   
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                   
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Apellidos" FieldName="apellidos" VisibleIndex="10"
                                                    Width="200px">
                                                   
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                   
                                                </dx:GridViewDataTextColumn>
                                               
                                               
                                                
                                                <dx:GridViewDataTextColumn Caption="Area" FieldName="area" VisibleIndex="12"
                                                    Width="200px">
                                                   
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                   
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Gerencia" FieldName="gerencia" 
                                                    VisibleIndex="14" Width="200px">
                                                    
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                    
                                                </dx:GridViewDataTextColumn>
                                                </Columns>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                 </dx:GridViewBandColumn>
                                                 

                                                 <dx:GridViewDataTextColumn FieldName="estado_ingreso"
                                                    VisibleIndex="18" Width="150px" Caption="Estado Ingreso">
                                                  
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                  
                                                </dx:GridViewDataTextColumn>

                                                <dx:GridViewDataTextColumn FieldName="fkc_estado_ingreso" VisibleIndex="16"
                                                    Width="50px" Visible="False">
                                                    
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                                                    
                                                </dx:GridViewDataTextColumn>
                                               
                                            </Columns>
                                            <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                            <Settings ShowFilterRow="True" ShowFilterRowMenu="True" />

<SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control"></SettingsBehavior>

<Settings ShowFilterRow="True" ShowFilterRowMenu="True"></Settings>

                                            <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                        </dx:aspxgridview>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div id="dangerSolicitudes" class="alert alert-danger" role="alert" style="display: none">
                        <strong>Error!</strong>
                    </div>
                    <div id="warningSolicitudes" class="alert alert-warning" role="alert" style="display: none">
                        <strong>Atencion!</strong>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row" id="div_RegistroMaestroIngreso" runat="server">
                        <div class="col-md-12">
                            <div id="div1" class="box box-primary" runat="server">
                                <div class="box-header">
                                    <h3 class="box-title">
                                        Registro de Ingreso</h3>
                                </div>
                                <!-- /.box-header -->
                                 <div class="box-body">
                              
                                    <asp:LinkButton ID="btnGuardarIngreso" runat="server" Text="<span class='fa fa-save'></span> Guardar y Continuar"
                                        CssClass="btn btn-primary" OnClientClick="return Validar();" 
                                        onclick="btnGuardarIngreso_Click"></asp:LinkButton>
                                 
                                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
                                        CssClass="btn btn-default" onclick="btnCancelar_Click"
                                         />
                               

                                </div>

                                
                              <div class="box-body">
                                 <div class="alert alert-info alert-dismissable">
                                        <i class="fa fa-info"></i>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        <b>Información!</b> Seleccione la fecha en la que se devolverán los activos, y seleccione la salida en base al nro de documento de solicitud de salida.
                                    </div>
                                 

                                    <div class="row">
                                        <div class="col-xs-12">
                                            <label for="nombre">
                                                Fecha de Ingreso <font color="red">*</font>
                                            </label>
                                            <asp:TextBox ID="txtFechaIngreso" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                         <div class="col-md-12">
                        <div class="row" id="div_salidas_aprobadas" runat="server">
                            <div class="col-md-12">
                                <div id="div2" class="box box-warning" runat="server">
                                    <div class="box-header">
                                        <h3 class="box-title">
                                            Salidas Aprobadas <font color="red">*</font>
                                        </h3>
                                    </div>
                                    <div class="box-body">
                                    </div>
                                    <div class="box">
                                        <div class="box-body table-responsive">
                                              <dx:aspxgridview id="gridSalidas" runat="server" autogeneratecolumns="False"
                                            width="100%" theme="Aqua" caption="Salidas Aprobadas" font-size="Small" 
                                                  KeyFieldName="id">
                                            <Columns>
                                                <dx:GridViewDataTextColumn Caption="id" VisibleIndex="0" FieldName="id" 
                                                    Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Fecha Solicitud" VisibleIndex="4" FieldName="f_solicitud"
                                                    Width="150px">
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
                                                <dx:GridViewDataTextColumn Caption="Documento" VisibleIndex="9" FieldName="documento"
                                                    Width="150px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Fecha Hasta" VisibleIndex="6" FieldName="f_hasta"
                                                    Width="150px">
                                                     <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Correlativo" FieldName="correlativo" VisibleIndex="3"
                                                    Width="100px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                    <CellStyle Font-Bold="False" HorizontalAlign="Center">
                                                    </CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="fkc_estado_salida" VisibleIndex="15"
                                                    Visible="False" Width="50px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Nombres" FieldName="nombres" VisibleIndex="10"
                                                    Width="200px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Apellidos" FieldName="apellidos" VisibleIndex="11"
                                                    Width="200px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="fk_persona" Visible="False"
                                                    VisibleIndex="8" Width="50px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Motivo" FieldName="motivo" VisibleIndex="7"
                                                    Width="300px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Estado Salida" FieldName="estado_salida" VisibleIndex="17"
                                                    Width="150px" Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Fecha Desde" FieldName="f_desde" 
                                                    VisibleIndex="5" Width="150px">
                                                     <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                                                        <ValidationSettings ErrorText="Valor inv&#225;lido">
                                                            <RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular">
                                                            </RegularExpression>
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Area" FieldName="area" VisibleIndex="12" 
                                                    Width="200px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Gerencia" FieldName="gerencia" 
                                                    VisibleIndex="13" Width="200px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Estado" 
                                                    FieldName="ingresos_salidas" VisibleIndex="1" Width="150px">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                    <EditCellStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center">
                                                    </EditCellStyle>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <CellStyle Font-Bold="True" Font-Size="X-Small" HorizontalAlign="Center">
                                                    </CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Pendientes" FieldName="pendientes" 
                                                    VisibleIndex="2" Width="100px" Visible="False">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings ErrorText="Valor inválido">
                                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                            <Settings ShowFilterRow="True" ShowFilterRowMenu="True" 
                                                      ShowHorizontalScrollBar="True" />

                                            <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control"></SettingsBehavior>

                                            <Settings ShowFilterRow="True" ShowFilterRowMenu="True"></Settings>

                                            <SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>
                                        </dx:aspxgridview>
                                        </div>
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
                                    <strong>Esta seguro que desea aprobar el ingreso?</strong></p>
                                <p>
                                    <small>Una vez aprobado el ingreso no podra realizar modificaciones ni eliminarlo</small>
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Cancelar</button>
                                <asp:Button ID="btnAprobarIngreso" runat="server" Text="Aprobar"  CssClass="btn btn-danger" onclick="btnAprobarIngreso_Click"
                                    />
                            </div>
                        </div>
                    </div>
                </div>

                <div id="modalEditar" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                        &times;</button>
                                                    <h4 class="modal-title">
                                                    <span class="fa fa-pencil"></span> Editar Ingreso
                                                        </h4>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- form start -->
                                                    <div class="box-body">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <label for="nombre">
                                                                    Fecha de ingreso <font color="red">*</font>
                                                                </label>
                                                                <input id="dateEditaFechaIngreso" type="text" name="dateEditaFechaIngreso" readonly="readonly" runat="server"
                                                                    value="" class="form-control" placeholder="ejemplo: 01/01/2014" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                                        Cerrar</button>
                                                 <asp:Button CssClass="btn btn-primary"
                                                    ID="btnGuardarEditaMaestro" runat="server"
                                                        Text="Guardar Cambios" onclick="btnGuardarEditaMaestro_Click" OnClientClick="return ValidaEdita();"
                                                     />
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

        $(document).ready(function () {

            $(document).bind("contextmenu", function (e) {
                return false;
            });


            $('#txtFechaIngreso').datepicker({
                format: 'dd-mm-yyyy'
            });

            $('#txtFechaIngreso').datepicker()
          .on('changeDate', function (ev) {
              $(this).datepicker('hide');
          });

          $('#dateEditaFechaIngreso').datepicker({
              format: 'dd-mm-yyyy',
              clearBtn: true,
              language: "es",
              calendarWeeks: true,
              autoclose: true,
              todayHighlight: true
          });


        });


      function ValidaEdita() {
          var error = 0;
          if (document.getElementById('dateEditaFechaIngreso').value == '') {
              error = 1;
          }
          if (error == 0) {
              return true;
          }
          else if (error == 1) {
              alert('Valide los datos antes de grabar');
              return false;
          }
      }

        function ConfirmaElimina() {
            $('#deleteConfirmModal').modal('show');
            return false;
        }

        function ConfirmaAprobarIngreso() {
            $('#AprobarConfirmModal').modal('show');
            return false;
        }
    </script>
</body>
</html>
