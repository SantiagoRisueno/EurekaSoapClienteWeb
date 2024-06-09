using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WS_EurekaBank_Client.wsmonster;

namespace WS_EurekaBank_Client
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            if (validar(txtImporte.Text) != 0)
            {
                wsmonster.SWeurekabankSoapClient ws = new SWeurekabankSoapClient();
                DataSet ds = ws.regDeposito(txtCuenta1.Text, validar(txtImporte.Text));
                if (ds != null)
                {
                  Messagebox("REGISTRO OK !!");
                }
                else
                {
                    //Messagebox("ERROR DE TRANSACCIÓN !!");
                }
            }
            else
            {
                //Messagebox("MONTO NO VÁLIDO !!");
            }
                

        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            wsmonster.SWeurekabankSoapClient ws = new SWeurekabankSoapClient();
            DataSet ds = ws.traerMovimiento(txtCuenta2.Text);
            if(ds!=null) 
            {
                gvMovimientos.DataSource = ds.Tables[0];
                gvMovimientos.DataBind();
               // Messagebox("CONSULTA OK !!");
            }
            else
            {
                //Messagebox("ERROR DE CONSULTA !!");
            }

        }

        public void Messagebox(string xMessage)
        {
            Response.Write("<script>alert('" + xMessage + "')</script>");
        }
        

        public double validar(String i)
        {
            try
            {
                Double importe = Convert.ToDouble(i);
                return importe;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }


    }
}