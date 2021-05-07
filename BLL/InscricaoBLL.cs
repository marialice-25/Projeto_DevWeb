using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Prova.DAL;
using Prova.DTO;

namespace Prova.BLL
{
    public class InscricaoBLL
    {
        private MysqlDAL con = new MysqlDAL();

        public void Inserir(InscricaoDTO inscricao)
        {
            string sql = string.Format($@"INSERT INTO inscricao VALUES('{inscricao.Id}', '{inscricao.Nome}','{inscricao.Telefone}','{inscricao.Email}',
                                       '{inscricao.Foto}');");
            con.ExecutarSQL(sql);
        }

        public void Excluir(InscricaoDTO inscricao)
        {
            string sql = string.Format($@"DELETE FROM inscricao WHERE ID = '{inscricao.Id}';");
            con.ExecutarSQL(sql);
        }

        public void Alterar(InscricaoDTO inscricao)
        {
            string sql = string.Format($@"UPDATE inscricao SET nome= '{inscricao.Nome}',telefone='{inscricao.Telefone}',email='{inscricao.Email}',
                                       foto='{inscricao.Foto}'");
            con.ExecutarSQL(sql);
        }
        public DataTable Pesquisar()
        {

            string sql = string.Format($@"SELECT nome, telefone, email, foto FROM inscricao order by id;");

            return con.ExecutarConsulta(sql);
        }
    }
}