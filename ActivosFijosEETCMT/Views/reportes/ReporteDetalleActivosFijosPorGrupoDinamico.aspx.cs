﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ActivosFijosEETC.Models;
using CrystalDecisions.Shared;

namespace ActivosFijosEETC.Views.reportes
{
    public partial class ReporteDetalleActivosFijosPorGrupoDinamico : System.Web.UI.Page
    {
        DataSet DsetDetalleActivos = new DataSet();
        CrystalDecisions.CrystalReports.Engine.ReportDocument rep = new CrystalDecisions.CrystalReports.Engine.ReportDocument();

        protected void Page_Load(object sender, EventArgs e)
        {
            ClaseActivo ReporteActivo = new ClaseActivo();
            int ubicacion = int.Parse(Request.QueryString["ubicacion"]);
            int linea = int.Parse(Request.QueryString["linea"]);
            int estacion = int.Parse(Request.QueryString["estacion"]);

            rep.Load(Server.MapPath("~/Views/reportes/RptDetalleActivosFijosPorGrupoDinamico.rpt"));

            DsetDetalleActivos = ReporteActivo.ReporteDetalleActivosPorGrupoDinamico(ubicacion,linea,estacion);
            rep.SetDataSource(DsetDetalleActivos);
            rep.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "REPORTE");

        }
        protected void page_unload(object sender, EventArgs e)
        {
            rep.Close();   //
            rep.Dispose(); // Para el error de limite de requerimientos alcanzado.
        }
    }
}