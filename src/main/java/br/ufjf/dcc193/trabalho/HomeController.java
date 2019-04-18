package br.ufjf.dcc193.trabalho;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
class HomeController {

    @RequestMapping({"", "index.html"})
    public String index(){
        return "index";
    }
    
    @RequestMapping({"", "formInsercaoSede.html"})
    public String formInsercaoSede(){
        return "formCadastroSede";
    }

    @RequestMapping({"", "formViewSede.html"})
    public String formViewSede(){
        return "formViewSede";
    }

    @RequestMapping({"", "formInsercaoMembro.html"})
    public String formInsercaoMembro(){
        return "formCadastroMembro";
    }

    @RequestMapping({"", "formViewMembro.html"})
    public String formViewMembro(){
        return "formViewMembro";
    }

    @RequestMapping({"", "formInsercaoAtividade.html"})
    public String formInsercaoAtividade(){
        return "formCadastroAtividade";
    }

    @RequestMapping({"", "formViewAtividade.html"})
    public String formViewAtividade(){
        return "formViewAtividade";
    }
}