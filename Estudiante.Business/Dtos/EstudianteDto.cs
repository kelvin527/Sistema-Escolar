using Estudiante_Business.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Estudiante_Business.Dtos
{
    public class EstudianteDto : BaseDto
    {
        public string Nombres { get; set; }
        public string Apellidos { get; set; }

        public string NombresCompleto => $"{Nombres} {Apellidos}";
        public string Codigo { get; set; }
        public DateTime FechaNac { get; set; }
        public string Sexo { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string Direccion { get; set; }
        public int GradoId { get; set; }
        public string Grado { get; set; }
    }
}
