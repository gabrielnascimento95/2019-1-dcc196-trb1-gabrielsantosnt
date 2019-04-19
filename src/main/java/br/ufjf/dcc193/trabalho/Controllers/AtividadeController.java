package br.ufjf.dcc193.trabalho.Controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * AtividadeController
 */
@Controller
public class AtividadeController {

    @RequestMapping({"", "formInsercaoAtividade.html"})
    public String formInsercaoAtividade(){
        return "formCadastroAtividade";
    }

    @RequestMapping({"", "formViewAtividade.html"})
    public String formViewAtividade(){
        return "formViewAtividade";
    }
}