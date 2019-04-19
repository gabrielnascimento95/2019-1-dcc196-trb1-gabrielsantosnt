package br.ufjf.dcc193.trabalho.Controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * SedeController
 */
@Controller
public class SedeController {

    @RequestMapping({"", "formInsercaoSede.html"})
    public String formInsercaoSede(){
        return "formCadastroSede";
    }

    @RequestMapping({"", "formViewSede.html"})
    public String formViewSede(){
        return "formViewSede";
    }
}