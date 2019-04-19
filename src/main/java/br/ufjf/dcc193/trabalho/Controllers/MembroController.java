package br.ufjf.dcc193.trabalho.Controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * MembroController
 */
@Controller
public class MembroController {

    @RequestMapping({"", "formInsercaoMembro.html"})
    public String formInsercaoMembro(){
        return "formCadastroMembro";
    }

    @RequestMapping({"", "formViewMembro.html"})
    public String formViewMembro(){
        return "formViewMembro";
    }

    
}