class LancamentoPeriodicoPage < SitePrism::Page 

    element :periodo_inicial_input, "input[id*='DataInicioInputDate']"
    element :periodo_final_input, "input[id*='DataFimInputDate']"
    element :tipo_ocorrencia_select, "select[id*='idOcorrenciaCombo']"
    element :observacao_justificativa_textarea, "textarea[onkeypress*='limitaTamanho']"
    element :inserir_lancamento_btn, "input[value='Inserir Lançamento Periódico']"
    element :confirmar_insercao_lancamento_btn, "input[type='submit'][value='Confirmar']"
    element :limpar_btn, "input[value='Limpar']"
    element :mes_ano_input, "input[id*='mesAno']"
    element :pesquisar_btn, "input[value='Pesquisar']"
    elements :lancamentos_checkboxs, "input[type='checkbox']"
    element :excluir_ocorrencia_btn, "input[value='Excluir Ocorrências selecionadas']"
    element :confirmar_exclusao_lancamento_btn, "input[type='button'][value='Confirmar']"
    element :operacao_sucesso_span, "div[id*='sucessGlobal'] span[class='rich-message-label']"

    # Definindo Meotodos para Insercao do Lancamento Periodico

    def preencher_periodo_inicial(periodo_inicial)
        periodo_inicial_input.click.set(periodo_inicial)
    end

    def preencher_periodo_final(periodo_final)
        periodo_final_input.click.set(periodo_final)
    end

    def selecionar_tipo_ocorrencia(tipo_ocorrencia)
        tipo_ocorrencia_select.select(tipo_ocorrencia)
    end

    def preencher_justificativa(justificativa)
        observacao_justificativa_textarea.click.set(justificativa)
    end

    def inserir_lancamento_periodico
        inserir_lancamento_btn.click
    end

    def confirmar_insercao_lancamento_periodico
        confirmar_insercao_lancamento_btn.click
    end

    # Definindo Meotodos para Consulta do Lancamento Periodico

    def consultar_ocorrencia(mes_ano)
        mes_ano_input.click.set(mes_ano)
    end

    def pesquisar_ocorrencia
        pesquisar_btn.click
    end

    # Definindo Meotodos para Exclusao do Lancamento Periodico

    def selecionar_lancamentos_periodicos
        wait_until_lancamentos_checkboxs_visible
        @tamanho_lancamentos = lancamentos_checkboxs.size
        @i = 0
        while(@i < @tamanho_lancamentos)
            lancamentos_checkboxs[@i].check
            sleep(0.3)
            @i += 1
        end
    end
    
    def excluir_ocorrencias_selecionadas
        excluir_ocorrencia_btn.click
    end

    def confirmar_exclusao_lancamento
        confirmar_exclusao_lancamento_btn.click
        wait_until_operacao_sucesso_span_visible
    end

end