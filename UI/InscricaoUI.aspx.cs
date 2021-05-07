using Prova.BLL;
using Prova.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova.UI
{
    public partial class InscricaoUI : System.Web.UI.Page
    {
        InscricaoDTO DTO = new InscricaoDTO();
        InscricaoBLL BLL = new InscricaoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                DTO.Id = Convert.ToInt32(txtId.Text);
                DTO.Nome = txtNome.Text;
                DTO.Telefone = txtTel.Text;
                DTO.Email = txtEmail.Text;
                DTO.Foto = Imagem.FileName.ToString();
                BLL.Inserir(DTO);
                string localFoto = Server.MapPath("/IMG" + DTO.Foto);
                Imagem.SaveAs(localFoto); 

                string mensagem = "Inscrição feita com sucesso!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + mensagem + "')", true);

            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }
        }

    }
}