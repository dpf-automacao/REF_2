class MenuPage < SitePrism::Page 

    # Mapeamento Menu Home
    element :home_link, "a[id='j_id19']"

    # Mapeamento Menu Configuracao
    element :configuracao_span, "span[id='j_id20']"
    element :manter_plantonistas_span, "span[id='j_id21:j_id28:anchor']"

    # Mapeamento Menu Lancamento
    element :lancamento_periodico_link,  "a[id='j_id35']" 
    
    # Mapeamento Menu Extrato
    element :extrato_div, "div[id='j_id38:j_id39']" 
    element :gerenciar_extrato_span, "span[id='j_id38:j_id41:anchor']"
    element :meu_extrato_span, "span [id='j_id38:j_id43:anchor']"

    # Mapeamento Menu Homologacao
    element :homologacao_div, "div[id='j_id46:j_id47']"
    element :folhas_pendentes_span, "span[id='j_id46:j_id49:anchor']"
    element :folhas_homologadas_finalizadas_div, "div[id='j_id46:j_id51']"

    # Mapeamento Menu Relatorio
    element :relatorios_div, "div['j_id61:j_id62']"
    element :relatorios_de_frequencia_por_ocorrencia_span, "span[id='j_id61:j_id64:anchor']"
    element :relatorios_de_adicional_de_fronteira_span, "span[id='j_id61:j_id65:anchor']"
    element :relatorio_de_folhas_pendentes_ou_nao_homologadas_span, "span[id='j_id61:j_id66:anchor']"
    element :relatorio_diario_de_frequencia_coletivo_span, "span[id='j_id61:j_id67:anchor']"
    element :relatorios_de_servidores_com_lancamento_manual_pratica_esportiva_span, "span[id='j_id61:j_id68:anchor']"

    # Definindo metodo para o Menu Home

    def acessar_menu_home
        home_link.click
    end

    # Definindo Metodos para o Menu Configuracoes

    def acessar_menu_configuracoes
        configuracao_span.hover
    end
    
    def acessar_sub_menu_configuracoes
        manter_plantonistas_span.hover
        manter_plantonistas_span.click
    end

    # Definindo Metodos para o Menu Lancamento Periodico

    def acessar_lancamento_periodico
        lancamento_periodico_link.click
    end

    


end