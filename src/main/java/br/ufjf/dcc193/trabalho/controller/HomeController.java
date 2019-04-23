package br.ufjf.dcc193.trabalho.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import br.ufjf.dcc193.trabalho.model.Atividade;
import br.ufjf.dcc193.trabalho.model.Membro;
import br.ufjf.dcc193.trabalho.model.Sede;
import br.ufjf.dcc193.trabalho.model.Atividade.Categoria;
import br.ufjf.dcc193.trabalho.persistence.AtividadeRepository;
import br.ufjf.dcc193.trabalho.persistence.MembroRepository;
import br.ufjf.dcc193.trabalho.persistence.SedeRepository;

/**
 * HomeController
 */
@Controller
public class HomeController {

    @Autowired
    SedeRepository Sedes;

    @Autowired
    MembroRepository Membros;

    @Autowired
    AtividadeRepository Atividades;
    
    @RequestMapping({"","index.html"})
    public ModelAndView home(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        List<Sede> sedes = Sedes.findAll();
        mv.addObject("sedes", sedes);
        return mv;
    }
//--------------------------------------------------------------------------------------------
    @RequestMapping("formEditaSede.html")
    public ModelAndView formEditaSede(@RequestParam Long id){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("formEditaSede");
        mv.addObject("sede", Sedes.getOne(id));
        return mv;
    }

    @RequestMapping("formEditaSedeSubmit.html")
    public RedirectView formEditaSedeSubmit(Sede sede){
        Sede auxSede = Sedes.getOne(sede.getId());
        auxSede.setNome(sede.getNome());
        auxSede.setEstado(sede.getEstado());
        auxSede.setCidade(sede.getCidade());
        auxSede.setBairro(sede.getBairro());
        auxSede.setTelefone(sede.getTelefone());
        auxSede.setUrl(sede.getUrl());
        Sedes.save(auxSede);
        return new RedirectView("sedeView.html?id=" + sede.getId());
    }

    @RequestMapping("formNovaSede.html")
    public String formNovaSede(){
        return "formNovaSede";
    }

    @RequestMapping("formNovaSedeSubmit.html")
    public RedirectView formNovaSedeSubmit(Sede sede){
        Sedes.save(sede);
        return new RedirectView("index.html");
    }

    @RequestMapping("formDeletaSede.html")
    public String formDeletaSede(@RequestParam Long id){
        Sedes.deleteById(id);
        return "formDeletaSede";
    }

    @RequestMapping("sedeView.html")
    public ModelAndView sedeView(@RequestParam Long id){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sedeView");
        mv.addObject("sede", Sedes.getOne(id));
        return mv;
    }

    ///--------------------------------------------------------------------------------------------

    @RequestMapping("formEditaMembro.html")
    public ModelAndView formEditaMembro(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("formEditaMembro");
        mv.addObject("membro", Membros.getOne(id));
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("formEditaMembroSubmit.html")
    public RedirectView formEditaMembroSubmit(Membro membro, @RequestParam Long id, @RequestParam Long idSede){
        Membro auxMembro = Membros.getOne(id);
        auxMembro.setNome(membro.getNome());
        auxMembro.setFuncao(membro.getFuncao());
        auxMembro.setEmail(membro.getEmail());
        auxMembro.setDataEntrada(membro.getDataEntrada());
        auxMembro.setDataEntrada(membro.getDataSaida());
        Membros.save(auxMembro);
        return new RedirectView("sedeView.html?id="+idSede);
    }

    @RequestMapping("formNovoMembro.html")
    public ModelAndView formNovoMembro(@RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        System.err.println(idSede);
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("formNovoMembroSubmit.html")
    public RedirectView formNovoMembroSubmit(Membro membro, Long idSede){
        Membros.save(membro);
        Sede sede1 = Sedes.getOne(idSede);
        sede1.addMembro(membro);
        Sedes.save(sede1);
        return new RedirectView("sedeView.html?id=" + idSede);
    }

    @RequestMapping("formDeletaMembro.html")
    public ModelAndView formDeletaMembro(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        mv.addObject("idSede", idSede);
        mv.setViewName("deletamembro");
        Membro membro = Membros.getOne(id);
        Sede auxSede = Sedes.getOne(idSede);
        auxSede.removeMembro(membro);
        Membros.deleteById(id);
        return mv;
    }

    ///------------------------------------------------------------------------------------------

    @RequestMapping("formNovaAtividade.html")
    public ModelAndView formNovaAtividade(@RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        System.err.println(idSede);
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("formNovaAtividadeSubmit.html")
    public RedirectView formNovaAtividadeSubmit(Atividade atividade, Long idSede){
        //System.err.println(idSede);
        //System.err.println(atividade.getCategoria().toString());
        Atividades.save(atividade);
        Sede auxSede = Sedes.getOne(idSede);
        auxSede.addAtividade(atividade);
        Sedes.save(auxSede);
        return new RedirectView("sedeView.html?id=" + idSede);
    }

    @RequestMapping("formDeletaAtividade.html")
    public ModelAndView formDeletaAtividade(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        //System.err.println("Atividade: " + id);
        //System.err.println("Sede: " + idSede);
        mv.addObject("idSede", idSede);
        mv.setViewName("formDeletaAtividade");
        Atividade atividade = Atividades.getOne(id);
        Sede auxSede = Sedes.getOne(idSede);
        auxSede.removeAtividade(atividade);
        Atividades.deleteById(id);
        return mv;
    }

    @RequestMapping("formEditaAtividade.html")
    public ModelAndView formEditaAtividade(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("formEditaAtividade");
        mv.addObject("atividade", Atividades.getOne(id));
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("formEditaAtividadeSubmit.html")
    public RedirectView formEditaAtividadeSubmit(Atividade atividade, @RequestParam Long id, @RequestParam Long idSede){
        Atividade auxAtividade = Atividades.getOne(id);
        auxAtividade.setTitulo(atividade.getTitulo());
        auxAtividade.setDescricao(atividade.getDescricao());
        auxAtividade.setDataInicio(atividade.getDataInicio());
        auxAtividade.setDataFim(atividade.getDataFim());
        auxAtividade.setDuracao(atividade.getDuracao());
        auxAtividade.setCategoria(atividade.getCategoria());
        Atividades.save(auxAtividade);
        return new RedirectView("sedeView.html?id="+idSede);
    }

    ///-------------------------------------------------------------------------------------------
    
    @RequestMapping("relatorioView.html")
    public ModelAndView relatorioView(@RequestParam Long id){
        ModelAndView mv = new ModelAndView();
        int duracaoTotal = 0;
        int duracaoFinanceira = 0;
        int duracaoExecutiva = 0;
        int duracaoJuridica = 0;
        int duracaoAssistencial = 0;
        Sede sede = Sedes.getOne(id);
        for (Atividade a : sede.getAtividades()) {
            System.err.println(a.getCategoria());
            if(a.getCategoria().equals(Categoria.Financeira)){
                duracaoFinanceira += a.getDuracao();
            } else if(a.getCategoria().equals(Categoria.Juridica)){
                duracaoJuridica += a.getDuracao();
            } else if(a.getCategoria().equals(Categoria.Assistencial)){
                duracaoAssistencial += a.getDuracao();
            } else {
                duracaoExecutiva += a.getDuracao();
            }
        }
        duracaoTotal = duracaoAssistencial + duracaoExecutiva + duracaoFinanceira + duracaoJuridica;
        mv.setViewName("relatorioView");
        mv.addObject("duracaoTotal", duracaoTotal);
        mv.addObject("duracaoJuridica", duracaoJuridica);
        mv.addObject("duracaoFinanceira", duracaoFinanceira);
        mv.addObject("duracaoExecutiva", duracaoExecutiva);
        mv.addObject("duracaoAssistencial", duracaoAssistencial);
        mv.addObject("id", id);
        return mv;
    }
    
}