package agendaspring.controllers;



import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import agendaspring.daos.ContatoDAO;
import agendaspring.models.Contato;

@Controller 
public class ContatoController {
		
		@RequestMapping("/contatos/form")
		public String form() {
			System.out.println("Chamou o form de contatos");
			return "contatos/form";
		}
		
		@PostMapping("/contatos")
		public String adicionar(Contato contato) {
			System.out.println(contato);
			ContatoDAO contatoDAO = new ContatoDAO();
			contatoDAO.inserir(contato);
			
			return "redirect:contatos";
		}
		
		@GetMapping("/contatos")
		public ModelAndView listar() {
			ContatoDAO contatoDAO = new ContatoDAO();
			List<Contato> lista = contatoDAO.getLista();
			ModelAndView model = new ModelAndView("contatos/lista");
			model.addObject("contatos", lista);
			return model;
		}
		@RequestMapping("/contatos/remover")
		public ModelAndView remover(Contato contato) {
			System.out.println("Chamou o m�todo remover");
			ContatoDAO contatoDAO = new ContatoDAO();
			contatoDAO.remover(contato);
			return listar();
		}

}

