using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var personas = new List<Person>();
            personas.Add(new Person {
                Nombre = "jose",
                Fecha = DateTime.Now,
                Apellido = "rodriguez"
            });
            personas.Add(new Person
            {
                Nombre = "laura",
                Fecha = DateTime.Now,
                Apellido = "pantanos"
            });
            personas.Add(new Person
            {
                Nombre = "nagore",
                Apellido = "ubago"
            });

            gvPerson.DataSource = personas;
            gvPerson.DataBind();
        }


        protected void btnDescargar_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow row in gvPerson.Rows)
            {

                Console.WriteLine(row.Cells[2].Text); // Nombre
                Console.WriteLine(row.Cells[3].Text); // Fecha
                Console.WriteLine(row.Cells[4].Text); // Apellidp

                /*  Controlar Datetime nullable
                    1.- Poner en el datagridview NullDisplayText
                    2.- Trim aquí para validar si es fecha válida
                    3.- Condicionales siguientes
                 */

                var date = row.Cells[3].Text;

                if (!String.IsNullOrEmpty(date.Trim()))
                {
                    // Fecha válida
                    if (Convert.ToDateTime(date) < new DateTime(2020, 1, 18))
                    {
                        Console.WriteLine(Server.HtmlDecode(date));
                    }
                }
               
            }
        }
    }


}