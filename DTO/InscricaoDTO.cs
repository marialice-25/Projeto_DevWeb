using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prova.DTO
{
    public class InscricaoDTO
    {
        private int id;
        private string nome, telefone, email, foto;

        public int Id { get => id; set => id = value; }
        public string Nome { get => nome; set => nome = value; }
        public string Foto { get => foto; set => foto = value; }

        public string Telefone
        {
            set
            {
                if (value != string.Empty)
                {
                    this.telefone = value;
                }
                else
                {
                    throw new Exception("Campo de telefone é obrigatório");
                }
            }
            get { return this.telefone; }
        }

        public string Email
        {
            set
            {
                if (value != string.Empty)
                {
                    this.email = value;
                }
                else
                {
                    throw new Exception("Campo de email é obrigatório");
                }
            }
            get { return this.email; }
        }
    }
}