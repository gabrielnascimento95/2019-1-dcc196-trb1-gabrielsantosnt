package br.ufjf.dcc193.trabalho.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
class HomeController {

    @RequestMapping({"", "index.html"})
    public String index(){
        return "home";
    }

    @RequestMapping({"", "sobre.html"})
    public String sobre(){
        return "sobre";
    }
    
}