<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Prova.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <title>Home</title>
<style>
        body{
            background-color:	#48D1CC;
            color: aliceblue;
        }
        form{ 
            padding-top:50px;
        }
        footer{
            padding-top:70px;
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
             <h1 class="h3 mb-3 font-weight-normal">FASHION MARK</h1>
        <asp:Image ImageUrl="~/IMG/workshop.jpg" AlternateText="Imagem não carregada" runat="server" Width="400px" Height=" 300px"  />
          </div>
    <p>
        EVENTO ONLINE VOLTADO PARA VENDA PROMOCIONAL DE ROUPAS DE GRANDE TENDÊNCIA NA MODA 2021.
    </p>
      <p>
        PREÇOS E MODELOS ACESSÍVEIS A TODOS OS GOSTOS E CONDIÇÕES. 
    </p><br />
   <asp:Table id="Table1" runat="server"
        CellPadding="20" 
        Width="400px"
        GridLines="Both"
        BorderColor="White"
        HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                HORÁRIO
            </asp:TableCell>
            <asp:TableCell>
                DESCRIÇÃO
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                13:00 - 14:00
            </asp:TableCell>
            <asp:TableCell>
                Apresentação de peças
            </asp:TableCell>
              </asp:TableRow>
               <asp:TableRow>
              <asp:TableCell>
                14:00 - 16:00
            </asp:TableCell>
            <asp:TableCell>
                Venda de peças e acessórios
            </asp:TableCell>
                </asp:TableRow>
             <asp:TableRow>
              <asp:TableCell>
                16:00 - 18:00
            </asp:TableCell>
            <asp:TableCell>
                Divulgação de futuros eventos
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                18:00 - 19:00
            </asp:TableCell>
            <asp:TableCell>
                Dicas de moda
            </asp:TableCell>
              </asp:TableRow>
       <asp:TableRow>
            <asp:TableCell>
                19:00 - 20:00
            </asp:TableCell>
            <asp:TableCell>
                Palestra de combinações
            </asp:TableCell>
              </asp:TableRow>
       <asp:TableRow>
            <asp:TableCell>
                20:00 - 21:00
            </asp:TableCell>
            <asp:TableCell>
                Finalizacão de vendas
            </asp:TableCell>
              </asp:TableRow>
    </asp:Table>
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
