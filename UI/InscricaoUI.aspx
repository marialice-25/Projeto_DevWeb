<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InscricaoUI.aspx.cs" Inherits="Prova.UI.InscricaoUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <title>Inscricao fashion</title>
    <style>
        body{
            background-color:	#48D1CC;
            color: aliceblue;
        }
        form{
            padding-top:80px; 
        }
        footer{
            padding-top:30px;
        }
        nav{
            background-color:antiquewhite;
            color:#008080;
        }
        .inputs{
            width:70%;
            padding-left:340px;
        }
        h1{
            padding-bottom:30px;
        }

        .nav{
            height:60px;
            background-color:aliceblue;
        }
        .elementos{
            padding-left:500px;
            padding-top:25px;
        }
        .button{
            padding-top:20px;
        }
    </style>
</head>
<body class="text-center"> 
    <header>
           <nav class="nav">
              <div class="elementos">
                     <asp:HyperLink ID="HiperLinkHome" NavigateUrl="~/UI/index.aspx" Text="Home" runat="server"></asp:HyperLink>
                     <asp:HyperLink ID="HiperLinkInscricao" NavigateUrl="~/UI/InscricaoUI.aspx" Text="Inscrição" runat="server"></asp:HyperLink>
                     <asp:HyperLink ID="HyperLinkConsulta" NavigateUrl="~/UI/ConsultaUI.aspx" Text="Consulta" runat="server"></asp:HyperLink>
             </div>
         </nav>
    </header>
    <form id="form1" runat="server">
      <div class="form-group">
             <h1 class="h3 mb-3 font-weight-normal">INSCRIÇÕES</h1>
        </div>
                <div class="form-group inputs">
            <asp:Label for="txtId" Text="Id:" runat="server"></asp:Label>
            <asp:TextBox type="text" ID="txtId" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group inputs">
            <asp:Label for="txtNome" Text="Nome:" runat="server"></asp:Label>
            <asp:TextBox type="text" ID="txtNome" class="form-control" placeholder="Ex:Maria" runat="server"></asp:TextBox>
        </div>
                <div class="form-group inputs">
            <asp:Label for="txtTel" Text="Telefone:" runat="server"></asp:Label>
            <asp:TextBox type="text" ID="txtTel" class="form-control" placeholder="Ex:965214254" runat="server"></asp:TextBox>
        </div>
                <div class="form-group inputs">
            <asp:Label for="txtEmail" Text="Email:" runat="server"></asp:Label>
            <asp:TextBox type="email" ID="txtEmail" class="form-control" placeholder="Ex:marialice@gmail.com" runat="server"></asp:TextBox>
        </div>
               <div>
            <asp:Label for="Imagem" Text="Imagem: " runat="server"></asp:Label>
            <asp:FileUpload ID="Imagem" runat="server"></asp:FileUpload>
        </div>
         <div class="button">
             <asp:Button ID="btnEnviar" CssClass="btn btn-outline-primary" Text="Enviar" OnClick="btnEnviar_Click"  runat="server"/>
         </div><br />

            <div>
            <asp:Label ID="msgOK" Visible="false" ForeColor="Green" runat="server"></asp:Label>
            <asp:Label ID="msgErro" Visible="false" ForeColor="Red" runat="server"></asp:Label>
        </div>
    </form>
    <footer>
        <div class="footer-copy-right">
            <p>
                Copyright &copy; Desenvolvido por Maria Alice. 
            </p>
             <p>
                 Todos os direitos reservados.
            </p>
        </div>

    </footer>
</body>
</html>

