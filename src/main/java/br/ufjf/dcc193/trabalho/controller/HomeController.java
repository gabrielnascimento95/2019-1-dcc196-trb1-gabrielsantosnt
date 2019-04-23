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
    public ModelAndView formeditasede(@RequestParam Long id){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("formEditaSede");
        mv.addObject("sede", Sedes.getOne(id));
        return mv;
    }

    @RequestMapping("formEditaSedeSubmit.html")
    public RedirectView editasede(Sede sede){
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

    @RequestMapping("formnovasede.html")
    public String formnovasede(){
        return "formnovasede";
    }

    @RequestMapping("novasede.html")
    public RedirectView novasede(Sede sede){
        Sedes.save(sede);
        return new RedirectView("index.html");
    }

    @RequestMapping("deletasede.html")
    public String deletasede(@RequestParam Long id){
        Sedes.deleteById(id);
        return "deletasede";
    }

    @RequestMapping("visualizasede.html")
    public ModelAndView visualizasede(@RequestParam Long id){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("visualizasede");
        mv.addObject("sede", Sedes.getOne(id));
        return mv;
    }

    ///--------------------------------------------------------------------------------------------

    @RequestMapping("formeditamembro.html")
    public ModelAndView formeditamembro(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("formeditamembro");
        mv.addObject("membro", repMembros.getOne(id));
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("editamembro.html")
    public RedirectView editamembro(Membro membro, @RequestParam Long id, @RequestParam Long idSede){
        Membro updateMembro = repMembros.getOne(id);
        updateMembro.setNome(membro.getNome());
        updateMembro.setFuncao(membro.getFuncao());
        updateMembro.setEmail(membro.getEmail());
        updateMembro.setDataEntrada(membro.getDataEntrada());
        updateMembro.setDataEntrada(membro.getDataSaida());
        repMembros.save(updateMembro);
        return new RedirectView("visualizasede.html?id="+idSede);
    }

    @RequestMapping("formnovomembro.html")
    public ModelAndView formnovomembro(@RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        System.err.println(idSede);
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("novomembro.html")
    public RedirectView novomembro(Membro membro, Long idSede){
        repMembros.save(membro);
        Sede sede1 = repSedes.getOne(idSede);
        sede1.addMembro(membro);
        repSedes.save(sede1);
        return new RedirectView("visualizasede.html?id=" + idSede);
    }

    @RequestMapping("deletamembro.html")
    public ModelAndView deletamembro(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        System.err.println("Membro: " + id);
        System.err.println("Sede: " + idSede);
        mv.addObject("idSede", idSede);
        mv.setViewName("deletamembro");
        Membro membro = repMembros.getOne(id);
        Sede sede1 = repSedes.getOne(idSede);
        sede1.removeMembro(membro);
        repMembros.deleteById(id);
        return mv;
    }

    ///------------------------------------------------------------------------------------------

    @RequestMapping("formnovaatividade.html")
    public ModelAndView formnovaatividade(@RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        System.err.println(idSede);
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("novaatividade.html")
    public RedirectView novaatividade(Atividade atividade, Long idSede){
        System.err.println(idSede);
        System.err.println(atividade.getCategoria().toString());
        repAtividades.save(atividade);
        Sede sede1 = repSedes.getOne(idSede);
        sede1.addAtividade(atividade);
        repSedes.save(sede1);
        return new RedirectView("visualizasede.html?id=" + idSede);
    }

    @RequestMapping("deletaatividade.html")
    public ModelAndView deletaatividade(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        System.err.println("Atividade: " + id);
        System.err.println("Sede: " + idSede);
        mv.addObject("idSede", idSede);
        mv.setViewName("formDeletaAtividade");
        Atividade atividade = repAtividades.getOne(id);
        Sede sede1 = repSedes.getOne(idSede);
        sede1.removeAtividade(atividade);
        repAtividades.deleteById(id);
        return mv;
    }

    @RequestMapping("formeditaatividade.html")
    public ModelAndView formeditaatividade(@RequestParam Long id, @RequestParam Long idSede){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("formeditaatividade");
        mv.addObject("atividade", repAtividades.getOne(id));
        mv.addObject("idSede", idSede);
        return mv;
    }

    @RequestMapping("formEditaAtividadeSubmit.html")
    public RedirectView editaatividade(Atividade atividade, @RequestParam Long id, @RequestParam Long idSede){
        Atividade updateAtividade = repAtividades.getOne(id);
        updateAtividade.setTitulo(atividade.getTitulo());
        updateAtividade.setDescricao(atividade.getDescricao());
        updateAtividade.setDataInicio(atividade.getDataInicio());
        updateAtividade.setDataFim(atividade.getDataFim());
        updateAtividade.setDuracao(atividade.getDuracao());
        updateAtividade.setCategoria(atividade.getCategoria());
        repAtividades.save(updateAtividade);
        return new RedirectView("visualizasede.html?id="+idSede);
    }

    ///-------------------------------------------------------------------------------------------
    
    @RequestMapping("relatorioduracaototal.html")
    public ModelAndView relatorioduracaototal(@RequestParam Long id){
        ModelAndView mv = new ModelAndView();
        int duracaoTotal = 0;
        int duracaoFinanceira = 0;
        int duracaoExecutiva = 0;
        int duracaoJuridica = 0;
        int duracaoAssistencial = 0;
        Sede sede = repSedes.getOne(id);
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
        mv.setViewName("relatorioduracaototal");
        mv.addObject("duracaoTotal", duracaoTotal);
        mv.addObject("duracaoJuridica", duracaoJuridica);
        mv.addObject("duracaoFinanceira", duracaoFinanceira);
        mv.addObject("duracaoExecutiva", duracaoExecutiva);
        mv.addObject("duracaoAssistencial", duracaoAssistencial);
        mv.addObject("id", id);
        return mv;
    }
    
}