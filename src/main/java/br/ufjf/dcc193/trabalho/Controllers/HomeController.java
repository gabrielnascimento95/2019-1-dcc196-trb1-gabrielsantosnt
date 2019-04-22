package br.ufjf.dcc193.trabalho.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.ufjf.dcc193.trabalho.Persistence.AtividadeRepository;

@Controller
class HomeController {
    @Autowired
    AtividadeRepository atividadesBd;

    @RequestMapping({"", "index.html"})
    public String index(){
        return "home";
    }

    @RequestMapping({"", "sobre.html"})
    public String sobre(){
        return "sobre";
    }

    @RequestMapping("relatorio.html")
    public String relatorio(Model modelo){
        modelo.addAttribute("relatorio", atividadesBd.findAll());
        return "listagem/lista";
    }
    
}