﻿using AutoMapper;
using Estudiante_Business.Dtos;
using Estudiante_Business.Interface;
using Estudiante_Business.Repository;
using Estudiante_Data.Context;
using Estudiante_Data.Entidades;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Net;

namespace Estudiante.api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GradoController : BaseController
    {
        public readonly IGradoService _service;
        public GradoController(IGradoService service, BaseContext context, IMapper mapper) : base(context, mapper)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var result = await _service.GetAllAsync();

            if (result != null)
            {
                var model = _mapper.Map<List<GradoDto>>(result);
                return Ok(model);
            }

            return NoContent();
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(int id)
        {
            var result = await _service.GetByIdAsync(id);
            if (result != null)
            {
                var model = _mapper.Map<GradoDto>(result);
                return Ok(model);
            }

            return NoContent();
        }
        [HttpPost]
        public async Task<ActionResult> Post(GradoDto modelDto)
        {
            try
            {
                if (modelDto == null)
                    return BadRequest();

                var model = _mapper.Map<Grados>(modelDto);

                _context.Add(model);

                await _context.SaveChangesAsync();

                var result = new Resultado()
                {
                    Success = true,
                    StatusCode = HttpStatusCode.Created,
                    Message = "Registro guardado  con éxito."
                };
                return Ok(result);
            }
            catch (DbUpdateException ex)
            {
                ModelState.AddModelError(string.Empty, ex.ToString());
            }
            catch (Exception ex2)
            {
                ModelState.AddModelError(string.Empty, ex2.ToString());
            }

            return BadRequest();

        }

        [HttpPut("{id}")]
        public virtual async Task<IActionResult> Put(int id, [FromBody] GradoDto modelDto)
        {

            try
            {
                if (modelDto == null || id == 0)
                    return BadRequest(new Resultado() { StatusCode = HttpStatusCode.BadRequest });
                var model = _mapper.Map<Grados>(modelDto);

                _context.Entry(model).State = EntityState.Modified;

                await _context.SaveChangesAsync();

                var result = new Resultado()
                {
                    Success = true,
                    StatusCode = HttpStatusCode.OK,
                    Message = "Registro actualizado  con éxito."
                };

                return Ok(result);
            }
            catch (DbUpdateException ex)
            {
                ModelState.AddModelError(string.Empty, ex.ToString());
            }
            catch (Exception ex2)
            {
                ModelState.AddModelError(string.Empty, ex2.ToString());
            }
            return BadRequest();

        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<Resultado>> Delete(int id)
        {
            var model = await _service.GetByIdAsync(id);
            if (model == null)
                return NotFound();
            try
            {
                _service.DeleteByEntity(model);
                await _service.SaveAsync();
            }
            catch (DbUpdateException ex)
            {
                ModelState.AddModelError(string.Empty, ex.ToString());
            }
            catch (Exception ex2)
            {
                ModelState.AddModelError(string.Empty, ex2.ToString());
            }
            var result = new Resultado()
            {
                Success = true,
                StatusCode = HttpStatusCode.OK,
                Message = "Registro eliminado  con éxito."
            };

            return Ok(result);

        }
    }
}
