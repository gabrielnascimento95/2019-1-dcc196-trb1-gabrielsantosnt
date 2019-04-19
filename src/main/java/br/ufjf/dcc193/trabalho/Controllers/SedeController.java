package br.ufjf.dcc193.trabalho.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.ufjf.dcc193.trabalho.Models.*;
import br.ufjf.dcc193.trabalho.Persistence.AtividadeRepository;
import br.ufjf.dcc193.trabalho.Persistence.SedeRepository;

/**
 * SedeController
 */
@Controller
public class SedeController {
    @Autowired
    SedeRepository sedesBd;
    @Autowired
    AtividadeRepository atividades;

    @RequestMapping("listSedes.html")
    public String sede(Model model){
        model.addAttribute("sede", sedesBd.findAll());
        List<Sede> sedesList = sedesBd.findAll();
        List<Atividade> atividadesList = atividades.findAll();
        int aux = 0;
        for(int i = 0; i < sedesList.size(); i++){
            for(int j = 0; j < atividadesList.size(); j++){
                if(sedesList.get(i).getNome().equals(atividadesList.get(j).getSede().getNome())){
                    aux = atividadesList.get(j).getTotalHoras();
                    System.out.println(
                        "Sede: "+ sedesList.get(i).getNome() 
                    + " \nAtividade: "+atividadesList.get(j).getTitulo()
                    + " \nHoras Totais: " + aux);
                }
            }
        }
        return "sede/formListSedes";
    }

    @RequestMapping({"", "formInsercaoSede.html"})
    public String formInsercaoSede(){
        return "sede/formCadastroSede";
    }

    @RequestMapping({"", "formInsercaoSedeSubmit.html"})
    public String formInsercaoSedeSubmit(Sede sede){
        sedesBd.save(sede);
        return "sede/formCadastroSede";
    }

    @RequestMapping(value = {"/editarSede"}, method = RequestMethod.GET)
    public ModelAndView formEditaSede(@RequestParam(value = "id", required = true) Long id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("sede", sedesBd.getOne(id));
        mv.setViewName("sede/formEditaSede");
        return mv;
    }

    @RequestMapping(value = { "/excluirSede" }, method = RequestMethod.GET)
    public ModelAndView formExcluiSede(@RequestParam(value = "id", required = true) Long id) {
        sedesBd.deleteById(id);
        ModelAndView mv = new ModelAndView();
        List<Sede> sedesList = sedesBd.findAll();
        mv.addObject("sede", sedesList);
        mv.setViewName("sede/formListSedes");
        return mv;
    }

}