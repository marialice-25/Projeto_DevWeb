<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaUI.aspx.cs" Inherits="Prova.UI.ConsultaUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <title>Consulta</title>
<style>
        body{
            background-color:	#48D1CC;
            color: aliceblue;
        }
        form{
            padding-top:150px; 
        }
        footer{
            padding-top:250px;
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
             <h1 class="h3 mb-3 font-weight-normal">CONSULTA DE EVENTOS</h1>
        </div>
         <asp:GridView ID="GridIscricoes" AutoGenerateColumns="False" BackColor="white"
                SelectedRowStyle-BackColor="YellowGreen"  
                OnRowEditing="GridIscricoes_RowEditing"
                OnRowUpdating="GridIscricoes_RowUpdating"
                DataKeyNames="id"
 runat="server">    
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("id")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NOME">
                        <ItemTemplate>
                            <asp:Label ID="lblNome" runat="server" Text='<%# Eval("nome")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtNome" Text='<%# Bind("nome")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TELEFONE">
                        <ItemTemplate>
                            <asp:Label ID="lblTelefone" runat="server" Text='<%# Eval("telefone")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textTelefone" Text='<%# Bind("telefone")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email")%>'>
                            </asp:Label>
                        </ItemTemplate>
                             <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" Text='<%# Bind("email")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FOTO">
                        <ItemTemplate>
                            <asp:Label ID="lblFoto" runat="server" Text='<%# Eval("foto")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtNome" Text='<%# Bind("foto")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                      <asp:CommandField ShowEditButton="true" HeaderText="Edit" ButtonType="Button" EditText="Editar" runat="server">
                    </asp:CommandField>
                     <asp:CommandField ShowEditButton="true" HeaderText="Update" ButtonType="Button" EditText="Atualizar" runat="server">
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
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

