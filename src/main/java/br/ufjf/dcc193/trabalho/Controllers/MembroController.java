package br.ufjf.dcc193.trabalho.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.ufjf.dcc193.trabalho.Models.Membro;
import br.ufjf.dcc193.trabalho.Persistence.MembroRepository;
import br.ufjf.dcc193.trabalho.Persistence.SedeRepository;
/**
 * MembroController
 */
@Controller
public class MembroController {
    @Autowired
    MembroRepository membrosBd;
    @Autowired
    SedeRepository sedesBd;
    
    @RequestMapping("formListMembro.html")
    public String formListMembro(Model modelo){
        modelo.addAttribute("membro", membrosBd.findAll());
        return "membro/formListMembro";
    }

    @RequestMapping({"", "formInsercaoMembro.html"})
    public String formInsercaoMembro(Model modelo){
        modelo.addAttribute("sedes", sedesBd.findAll());
        return "membro/formCadastroMembro";
    }

    @RequestMapping({"", "formInsercaoMembroSubmit.html"})
    public String formMembroSubmit(Membro membro){
        membrosBd.save(membro);
        return "membro/formCadastroMembro";
    }

    @RequestMapping(value = { "/editaMembro" }, method = RequestMethod.GET)
    public ModelAndView formEditaMembro(@RequestParam(value = "id", required = true) Long id) {        
        ModelAndView mv = new ModelAndView();
        mv.addObject("membro", membrosBd.getOne(id));
        mv.addObject("sede", sedesBd.findAll());
        mv.setViewName("membro/formEditaMembro");
        return mv;
    }

    
}