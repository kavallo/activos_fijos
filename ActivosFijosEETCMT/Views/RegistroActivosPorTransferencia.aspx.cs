﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ActivosFijosEETC.Controllers;
using iTextSharp.text.pdf;
using System.Data;
using System.Text;

namespace ActivosFijosEETC.Views
{
    public partial class RegistroActivosPorTransferencia : System.Web.UI.Page
    {

        ControllerHelper controllerHelper = new ControllerHelper();


        enum tipo_adquisicion
        {
            compra_directa=1,
            donacion = 2,
            transferencia=6,

        }

        enum fuente_financiamiento
        {
            recursos_propios=1,
            tgn=2,
            transferencia = 3
        }

        enum estado_proceso
        {
            elaborado=4,
            aprobado=5
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["user"] == null) { Response.Redirect("~/Views/login.aspx"); }
        }

        protected void _armarMenu()
        {
            ControllerAdministracion ObjetoAdministracion = new ControllerAdministracion();
            DataSet dsMenu = ObjetoAdministracion.getMenu();
            DataTable dtMenu = dsMenu.Tables[0];
            DataTable dtSubMenu = dsMenu.Tables[1];

            StringBuilder sb = new StringBuilder();
           
            foreach (DataRow dr in dtMenu.Rows)
            {
                if (dr[4].ToString() == "0")
                {
                    sb.Append("<li class=" + "\"" + "active" + "\"" + "><a href=" + "\"" + dr[2].ToString() + "\"" + "><i class=" + "\"" + dr[3] + "\"" + "></i><span>" + dr[1].ToString() + " </span></a>");
                    sb.Append("</li>");
                }
                else
                {
                    sb.Append("<li class=" + "\"" + "treeview" + "\"" + "><a href=" + "\"" + "#" + "\"" + "><i class=" + "\"" + dr[3] + "\"" + "></i><span>" + dr[1].ToString() + "</span><i class=" + "\"" + "fa fa-angle-left pull-right" + "\"" + "></i></a>");
                    sb.Append("<ul class=" + "\"" + "treeview-menu" + "\"" + ">");
                    foreach (DataRow dr1 in dtSubMenu.Rows)
                    {
                        if (dr1[1].ToString().Equals(dr[0].ToString()))
                        {
                            sb.Append("<li><a href=" + "\"" + dr1[3] + "\"" + "><i class=" + "\"" + "fa fa-angle-double-right" + "\"" + "></i>" + dr1[2] + "</a>");
                            sb.Append("</li>");
                        }
                    }
                    sb.Append("</ul>");
                    sb.Append("</li>");
                }
            }
            _menu.InnerHtml = sb.ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
             string vPerfil = HttpContext.Current.Session["perfil"].ToString();
             if (!vPerfil.Equals("2"))//persona
             {
                 if (!Page.IsPostBack)
                 {
                     lblUsuario.Text = HttpContext.Current.Session["nombre"].ToString() + " " + HttpContext.Current.Session["apellido"].ToString();
                     lblUsuario2.Text = HttpContext.Current.Session["nombre"].ToString() + " " + HttpContext.Current.Session["apellido"].ToString();
                     _armarMenu();

                     txtCodigoTransferencia.Text = controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["codigoTransferencia"]));
                     txtDescripcion.Text = controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["descripcion"]));
                     txtFechaTransferencia.Text = controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["fechaTransferencia"]));
                     txtTasaUFV.Text = controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["tasaUFV"])).Replace(".", ",");
                     txtTasaSus.Text = controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["tasaSus"])).Replace(".", ",");
                     txtDocumentoRespaldo.Text = controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["docRespaldo"]));
                     txtOrigen.Text = controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["origen"]));

                     if (controllerHelper.Decrypt(HttpUtility.UrlDecode(Request.QueryString["idEstadoProceso"])) == ((int)estado_proceso.aprobado).ToString())
                     {
                         actionActivos.Visible = false;
                         idBarCode.Visible = true;
                     }
                     else
                     {
                         actionActivos.Visible = true;
                         idBarCode.Visible = false;
                     }

                     cargarComboGruposContables();
                     cargarComboMarcas();


                 }
                 cargarActivosPorTransferencia();

                 string validate1 = "$('#txtValorInicial').numeric();";
                 ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "validate1", validate1, true);
             }
             else
             {
                 Response.Redirect("ActivosPorResponsable.aspx");
             }
        }

        /// <summary>
        /// Carga la grilla de activos
        /// </summary>
        private void cargarActivosPorTransferencia()
        {
            ControllerActivos vObjeto = new ControllerActivos();
            GridActivosPorTransferencia.DataSource = controllerHelper.ToDataTable(vObjeto.DatosActivosPorTransferencia(txtCodigoTransferencia.Text));
            GridActivosPorTransferencia.DataBind();
        }

        /// <summary>
        /// Carga el combo de marcas
        /// </summary>
        private void cargarComboMarcas()
        {
            ControllerMarcas vObjeto = new ControllerMarcas();
            ddlMarca.DataSource = controllerHelper.ToDataTable(vObjeto.DatosMarcas());
            ddlMarca.DataValueField = "ID";
            ddlMarca.DataTextField = "nombre";
            ddlMarca.DataBind();
        }

        /// <summary>
        /// Carga el combo de grupos contables
        /// </summary>
        private void cargarComboGruposContables()
        {
            ControllerGruposContables vObjeto = new ControllerGruposContables();
            ddlGrupoContable.DataSource = controllerHelper.ToDataTable(vObjeto.DatosGruposContables());
            ddlGrupoContable.DataValueField = "ID";
            ddlGrupoContable.DataTextField = "nombre";
            ddlGrupoContable.DataBind();
        }

        protected void btnRegistrarActivo_Click(object sender, EventArgs e)
        {
            ControllerActivos vObjeto = new ControllerActivos();

            string fk_auxiliar_contable = Request.Form["ddlAuxiliarContable"];
            string fk_modelo = Request.Form["ddlModelo"];
            string serie = txtSerie.Text;
            string descripcion = txtDescripcionTransferenciaActivo.Text;
            string f_registro = txtFechaTransferencia.Text;
            string valor_inicial = spinValorInicial.Text.Replace(".", ",");
            string costo_actualizado_inicial = spinCostoActualizadoInicial.Text.Replace(".", ","); 
            string depreciacion_acumulada_total = spinDepreciacionAcumuladaTotalInicial.Text.Replace(".", ","); 
            string fk_transferencia = txtCodigoTransferencia.Text;
            string fkc_tipo_adquisicion = ((int)tipo_adquisicion.transferencia).ToString();
            string tasa_ufv = txtTasaUFV.Text;
            string tasa_sus = txtTasaSus.Text;
            string fk_fuente_financiamiento = ((int)fuente_financiamiento.transferencia).ToString();

          
            int result = vObjeto.CreaActivoPorTransferencia(fk_fuente_financiamiento, fk_auxiliar_contable, fk_modelo, serie, descripcion, f_registro, valor_inicial,costo_actualizado_inicial,depreciacion_acumulada_total, fk_transferencia, fkc_tipo_adquisicion, tasa_ufv, tasa_sus);
            if (result > 0)
            {
                string message = "$('#success').text('Registro guardado con éxito').fadeIn(800).delay(4000).fadeOut(800).css({ display: inline });";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                limpiaCamposActivo();
            }
            else
            {
                string message = "$('#danger').text('Lo Sentimos Hubo un error').fadeIn(800).delay(4000).fadeOut(800).css({ display: inline });";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
                cargarActivosPorTransferencia();
        }
        /// <summary>
        /// Limpia los campos de activos
        /// </summary>
        private void limpiaCamposActivo()
        {
            txtDescripcionTransferenciaActivo.Text = "";
            ddlGrupoContable.SelectedIndex = -1;
            ddlAuxiliarContable.SelectedIndex = -1;
            ddlMarca.SelectedIndex = -1;
            ddlModelo.SelectedIndex = -1;
            txtSerie.Text = "";
            spinValorInicial.Number = 0;
            spinCostoActualizadoInicial.Number = 0;
            spinDepreciacionAcumuladaTotalInicial.Number = 0;

           
        }

        /// <summary>
        /// Duplica la informacion de un activo en los campos
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnDuplicarActivo_Click(object sender, EventArgs e)
        {
            if (GridActivosPorTransferencia.FocusedRowIndex > -1)
            {

                ddlGrupoContable.SelectedValue = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "fk_grupo_contable").ToString();
                cargaAuxiliaresContables(GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "fk_grupo_contable").ToString());
                ddlAuxiliarContable.SelectedValue = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "fk_auxiliar_contable").ToString();
                ddlMarca.SelectedValue = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "fk_marca").ToString();
                cargaModelos(GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "fk_marca").ToString());
                ddlModelo.SelectedValue = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "fk_modelo").ToString();
                txtSerie.Text = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "serie").ToString();
                txtDescripcionTransferenciaActivo.Text = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "descripcion").ToString();
                spinValorInicial.Text = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "valor_inicial").ToString();
                spinCostoActualizadoInicial.Text=GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "costo_actualizado_inicial_historico").ToString();
                spinDepreciacionAcumuladaTotalInicial.Text = GridActivosPorTransferencia.GetRowValues(GridActivosPorTransferencia.FocusedRowIndex, "depreciacion_acumulada_total_historico").ToString();
            }
        }

        public void cargaAuxiliaresContables(string idGrupoContable)
        {
            ddlAuxiliarContable.Items.Clear();
            ddlAuxiliarContable.Items.Add(new ListItem("Seleccione un item", "-1"));

            ControllerAuxiliaresContables vObjeto = new ControllerAuxiliaresContables();
            ddlAuxiliarContable.DataSource = controllerHelper.ToDataTable(vObjeto.DatosAuxiliaresContables(idGrupoContable));
            ddlAuxiliarContable.DataValueField = "ID";
            ddlAuxiliarContable.DataTextField = "nombre";
            ddlAuxiliarContable.DataBind();

        }

        public void cargaModelos(string idMarca)
        {
            ddlModelo.Items.Clear();
            ddlModelo.Items.Add(new ListItem("Seleccione un item", "-1"));
            ControllerModelos vObjeto = new ControllerModelos();
            ddlModelo.DataSource = controllerHelper.ToDataTable(vObjeto.DatosModelos(idMarca));
            ddlModelo.DataValueField = "ID";
            ddlModelo.DataTextField = "nombre";
            ddlModelo.DataBind();
        }

        protected void ddlGrupoContable_SelectedIndexChanged(object sender, EventArgs e)
        {
            string idGrupoContable = ddlGrupoContable.SelectedItem.Value.ToString();
            cargaAuxiliaresContables(idGrupoContable);
        }

        protected void ddlMarca_SelectedIndexChanged(object sender, EventArgs e)
        {
            string idMarca = ddlMarca.SelectedItem.Value.ToString();
            cargaModelos(idMarca);
        }

        protected void btnVerTransferencias_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transferencias.aspx");
        }
        /// <summary>
        /// Elimina un activo de transferencia en estado elaborado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            var fila = this.GridActivosPorTransferencia.GetRow(GridActivosPorTransferencia.FocusedRowIndex);
            string idActivo = ((System.Data.DataRowView)(fila)).Row.ItemArray[0].ToString();
            string idCompra = txtCodigoTransferencia.Text;
            string idEstado_proceso = ((System.Data.DataRowView)(fila)).Row.ItemArray[18].ToString();

            if (idEstado_proceso == ((int)estado_proceso.elaborado).ToString())
            {
                ControllerActivos vObjeto = new ControllerActivos();
                int result = vObjeto.EliminaActivoPorTransferencia(idActivo);
                if (result > 0)
                {
                    string message = "$('#success').text('Registro Eliminado con éxito').fadeIn(800).delay(4000).fadeOut(800).css({ display: inline });";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }
                else
                {
                    string message = "$('#danger').text('Lo Sentimos Hubo un error').fadeIn(800).delay(4000).fadeOut(800).css({ display: inline });";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                }
                    cargarActivosPorTransferencia();
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript: $('#warning').text('No puede eliminar un activo en estado aprobado').fadeIn(800).delay(4000).fadeOut(800).css({ display: inline });</script>");
           
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.open('reportes/ReporteTransferencia.aspx?idTransferencia=" + txtCodigoTransferencia.Text + "','_blank');</script>");
        }

        protected void GridActivosPorTransferencia_HtmlDataCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableDataCellEventArgs e)
        {
            if (e.DataColumn.FieldName == "valor_inicial")
            {
                e.Cell.Text = string.Format("Bs. {0:0,0.00}", Convert.ToDecimal(e.CellValue));
            }
            if (e.DataColumn.FieldName == "valor_inicial_ufv")
            {
                e.Cell.Text = string.Format("ufv. {0:0,0.0000}", Convert.ToDecimal(e.CellValue));
            }
            if (e.DataColumn.FieldName == "valor_inicial_sus")
            {
                e.Cell.Text = string.Format("$us. {0:0,0.00}", Convert.ToDecimal(e.CellValue));
            }

            if (e.DataColumn.FieldName == "costo_actualizado_inicial_historico")
            {
                e.Cell.Text = string.Format("Bs. {0:0,0.00}", Convert.ToDecimal(e.CellValue));
            }
            if (e.DataColumn.FieldName == "depreciacion_acumulada_total_historico")
            {
                e.Cell.Text = string.Format("Bs. {0:0,0.00}", Convert.ToDecimal(e.CellValue));
            }
        }
        /// <summary>
        /// Imprime el codigo de barras de un activo seleccionado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnPrintBarcode_Click(object sender, EventArgs e)
        {
            if (GridActivosPorTransferencia.FocusedRowIndex > -1)
            {
                var fila = this.GridActivosPorTransferencia.GetRow(GridActivosPorTransferencia.FocusedRowIndex);

                iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(new iTextSharp.text.Rectangle(160, 80), 10, 10, 10, 0);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();


                PdfContentByte cb1 = writer.DirectContent;
                BaseFont bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);

                cb1.SetFontAndSize(bf, 6);
                cb1.BeginText();
                cb1.SetTextMatrix(6, 65);
                cb1.ShowText("Empresa Estatal de Transporte Por Cable 'Mi Teleferico'");
                cb1.EndText();

                iTextSharp.text.pdf.PdfContentByte cb = writer.DirectContent;
                iTextSharp.text.pdf.Barcode128 bc = new Barcode128();
                bc.TextAlignment = iTextSharp.text.Element.ALIGN_CENTER;
                bc.Code = ((System.Data.DataRowView)(fila)).Row.ItemArray[1].ToString();
                bc.StartStopText = false;
                bc.CodeType = iTextSharp.text.pdf.Barcode128.EAN13;
                bc.Extended = true;

                iTextSharp.text.Image img = bc.CreateImageWithBarcode(cb,
                      iTextSharp.text.BaseColor.BLACK, iTextSharp.text.BaseColor.BLACK);

                cb.SetTextMatrix(2f, 3.0f);
                img.ScaleToFit(200, 54);
                img.SetAbsolutePosition(8, 6);
                img.WidthPercentage = 10;
                cb.AddImage(img);



                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;" +
                                               "filename=barcode.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();

            }
        }
        /// <summary>
        /// Imprime todos los codigos de barra de una transferencia
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnPrintBarcodeAll_Click(object sender, EventArgs e)
        {
             iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(new iTextSharp.text.Rectangle(160, 80), 10, 10, 10, 0);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();

            int i = 0;
            while (i < GridActivosPorTransferencia.VisibleRowCount)
            {
                if (i != 0)
                    pdfDoc.NewPage();

                PdfContentByte cb1 = writer.DirectContent;
                BaseFont bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);

                cb1.SetFontAndSize(bf, 6);
                cb1.BeginText();
                cb1.SetTextMatrix(6, 65);
                cb1.ShowText("Empresa Estatal de Transporte Por Cable 'Mi Teleferico'");
                cb1.EndText();

                iTextSharp.text.pdf.PdfContentByte cb = writer.DirectContent;
                iTextSharp.text.pdf.Barcode128 bc = new Barcode128();
                bc.TextAlignment = iTextSharp.text.Element.ALIGN_CENTER;
                bc.Code = this.GridActivosPorTransferencia.GetRowValues(i, "codigo").ToString();
                bc.StartStopText = false;
                bc.CodeType = iTextSharp.text.pdf.Barcode128.EAN13;
                bc.Extended = true;

                iTextSharp.text.Image img = bc.CreateImageWithBarcode(cb,
                      iTextSharp.text.BaseColor.BLACK, iTextSharp.text.BaseColor.BLACK);

                cb.SetTextMatrix(2f, 3.0f);
                img.ScaleToFit(200, 54);
                img.SetAbsolutePosition(8, 6);
                img.WidthPercentage = 10;
                cb.AddImage(img);

                i = i + 1;
            }

            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;" +
                                           "filename=barcode.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();

        }
        
    }
}