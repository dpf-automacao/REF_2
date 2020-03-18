class RelatorioPorOcorrenciaPage < SitePrism::Page
  element :lotacao_select, "select[id='frmRelatorio:id-combo-lotacao']"
  element :data_input, "input[name='frmRelatorio:id-input-periodoInicio']"
  element :pdf_input, "input[value='Gerar PDF']"
  element :excel_input, "input[value='Gerar Excel']"

  def selecionar_lotacao(lotacao)
    puts "Selecionando a lotacao"
    lotacao_select.select(lotacao)
  end

  def digitar_data(data)
    puts "Informando o mês/ano"
    data_input.click.set(data)
  end

  def gerar_arquivo_pdf
    puts "Clicando em Gerar PDF"
    pdf_input.click
  end

  def gerar_arquivo_excel
    puts "Clicando em Gerar Excel"
    excel_input.click
  end

  #Método responsável para verificar se um arquivo existe [diretório Download]
  def pesquisar_arquivo(arquivo)

    #O comando abaixo irá fazer interação com o console salvando as informações
    #da sessão em um arquivo texto
    system "query user > info.txt"
    File.open("info.txt", "r") do |ler|
      while novaLinha = ler.gets
        @protocolo = novaLinha
      end
    end
    usuario = @protocolo[1, 22].strip
    puts "Verificando se o download foi realizado"
    if File.exists?("C:/Users/#{usuario}/Downloads/#{arquivo}")
      return true
    end
  end
end
