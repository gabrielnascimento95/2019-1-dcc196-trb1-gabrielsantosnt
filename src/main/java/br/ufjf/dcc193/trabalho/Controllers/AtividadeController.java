package br.ufjf.dcc193.trabalho.Controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import br.ufjf.dcc193.trabalho.Models.Atividade;
import br.ufjf.dcc193.trabalho.Persistence.AtividadeRepository;
import br.ufjf.dcc193.trabalho.Persistence.SedeRepository;

/**
 * AtividadeController
 */
@Controller
public class AtividadeController {
    @Autowired
    AtividadeRepository atividadesBd;
    @Autowired
    SedeRepository sedesBd;

    @RequestMapping("formListAtividade.html")
    public String formListAtividade(Model modelo){
        modelo.addAttribute("atividades", atividadesBd.findAll());
        return "atividade/formListAtividade";
    }
    
    @RequestMapping("formInsercaoAtividade.html")
    public String formInsercaoAtividade(Model modelo){
        modelo.addAttribute("sedes", sedesBd.findAll());
        return "atividade/formCadastroAtividade";
    }

    @RequestMapping("formInsercaoAtividadeSubmit.html")
    public String formViewAtividade(Atividade atividade){
        atividadesBd.save(atividade);
        return "atividade/formCadastroAtividade";
    }

    @RequestMapping(value = { "/editaAtividade" }, method = RequestMethod.GET)
    public ModelAndView carrega_sede_editar(@RequestParam(value = "id", required = true) Long id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("atividade", atividadesBd.getOne(id));
        mv.addObject("sede", sedesBd.findAll());
        mv.setViewName("atividade/formEditaAtividade");
        return mv;
    }
}