﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImprimirCodigosDesdeExcel.aspx.cs" Inherits="ActivosFijosEETC.Views.ImprimirCodigosDesdeExcel" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Generar codigos" 
            onclick="Button1_Click" />
        <dx:ASPxGridView ID="gridActivos" runat="server">
        </dx:ASPxGridView>
    </div>
    </form>
</body>
</html>
