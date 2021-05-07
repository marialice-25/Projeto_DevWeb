using Prova.BLL;
using Prova.DAL;
using Prova.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova.UI
{

    public partial class ConsultaUI : System.Web.UI.Page
    {
        InscricaoBLL inscBLL = new InscricaoBLL();
        InscricaoDTO inscDTO = new InscricaoDTO();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Exibir()
        {
            GridIscricoes.DataSource = inscBLL.Pesquisar();
            GridIscricoes.DataBind();
        }
        protected void GridIscricoes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridIscricoes.PageIndex = e.NewEditIndex;
            Exibir();
        }
        protected void GridIscricoes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            inscDTO.Id = Convert.ToInt32(GridIscricoes.DataKeys[e.RowIndex].Value.ToString());
            inscDTO.Nome = e.NewValues[1].ToString();
            inscDTO.Telefone = e.NewValues[2].ToString();
            inscDTO.Foto = e.NewValues[3].ToString();
            inscDTO.Email = e.NewValues[4].ToString();

            inscBLL.Alterar(inscDTO);
            GridIscricoes.EditIndex = -1;
            Exibir();
        }
    }
}