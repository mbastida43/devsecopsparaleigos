# DevSecOps para Leigos

Apresentação interativa sobre DevSecOps com **acessibilidade completa** e um **Mentor de IA rodando 100% no seu computador** — sem internet, sem conta, sem custo.

---

## Arquivos do projeto

| Arquivo | O que é |
|---|---|
| `DevSecOps para Leigos.html` | A apresentação principal — abra no browser |
| `Iniciar.ps1` | Script PowerShell para abrir a apresentação com um clique |
| `DevSecOps para leigos V1.pptx` | Versão 1 em PowerPoint |
| `DevSecOps para leigos V2.pptx` | Versão 2 em PowerPoint |
| `DevSecOps para leigos V3.pdf` | Versão 3 em PDF |
| `LICENSE` | Licença MIT |

---

## O que é o Mentor IA?

O arquivo HTML contém um assistente de inteligência artificial embutido. Ele usa o modelo **Gemma 3 4B** da Google — um modelo open source com 4 bilhões de parâmetros que roda diretamente no seu computador, sem precisar enviar nada para a internet.

O Mentor consegue:
- Responder perguntas sobre DevSecOps em Português do Brasil
- Gerar quizzes e ajustar a dificuldade automaticamente conforme você acerta ou erra
- Narrar o conteúdo de cada slide com voz e explicação inteligente
- Criar analogias criativas para cada conceito
- Explicar automaticamente o slide que você está vendo ao rolar a página

---

## Pré-requisitos — instale uma vez, use sempre

### Passo 1 — Instalar o Ollama

O Ollama é o programa que roda o modelo de IA no seu computador. Pense nele como um "player de vídeo", mas para modelos de IA.

1. Acesse **[ollama.com](https://ollama.com)** no seu browser
2. Clique no botão **Download for Windows**
3. Execute o arquivo `OllamaSetup.exe` que foi baixado
4. Siga o instalador normalmente (Next, Next, Install)
5. Após instalar, o Ollama aparecerá como um ícone na barra de tarefas (canto inferior direito da tela)

Para confirmar que deu certo, abra o **PowerShell** e execute:

```powershell
ollama --version
```

Deve aparecer algo como `ollama version is 0.30.11`. Se aparecer, está instalado.

---

### Passo 2 — Baixar o modelo Gemma 3 4B

Com o Ollama instalado, agora você precisa baixar o "cérebro" da IA. No **PowerShell**, execute:

```powershell
ollama pull gemma3:4b
```

> O download tem aproximadamente **2,5 GB**. Vai levar alguns minutos dependendo da sua internet. Execute esse comando apenas uma vez — o modelo fica salvo no seu computador.

Quando terminar, aparecerá a mensagem `success`.

---

### Passo 3 — Configurar permissão de comunicação (CORS)

A apresentação HTML precisa de permissão para conversar com o Ollama. Isso é uma configuração de segurança padrão dos browsers. Execute **uma única vez** no PowerShell:

```powershell
[System.Environment]::SetEnvironmentVariable("OLLAMA_ORIGINS", "*", "User")
```

> Esse comando salva a configuração permanentemente no seu Windows. Não precisa repetir.

Depois, **reinicie o Ollama** para que ele leia a nova configuração:

1. Olhe no canto inferior direito da tela (onde fica o relógio)
2. Clique na seta `˄` para mostrar os ícones ocultos
3. Clique com o **botão direito** no ícone do Ollama (parece uma bolinha)
4. Clique em **Quit**
5. Reabra o Ollama pelo menu **Iniciar** do Windows

---

### Passo 4 — Instalar o Python

O Python é necessário para servir a apresentação localmente. Sem ele, o browser bloqueia a comunicação com o Ollama por segurança.

Verifique se já está instalado:

```powershell
python --version
```

Se aparecer `Python 3.x.x`, já está pronto. Se não aparecer, baixe em **[python.org/downloads](https://python.org/downloads)** e instale normalmente.

> Durante a instalação do Python, marque a opção **"Add Python to PATH"** — isso é importante!

---

## Como abrir a apresentação (uso diário)

Após concluir os 4 passos acima, o uso diário é simples:

### Opção A — Usando o script PowerShell (recomendado)

1. Certifique-se que o **Ollama está rodando** (ícone na barra de tarefas)
2. Abra o **PowerShell** na pasta do projeto
3. Execute:

```powershell
.\Iniciar.ps1
```

> Se aparecer um erro de política de execução, execute este comando uma vez e tente novamente:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
> ```

4. O browser abre automaticamente com a apresentação
5. Quando terminar, volte ao PowerShell e pressione **ENTER** para encerrar o servidor

### Opção B — Abrindo manualmente (alternativa)

Se preferir não usar o script, você mesmo pode iniciar o servidor. No PowerShell, dentro da pasta do projeto:

```powershell
python -m http.server 3000
```

Depois abra o browser e acesse:

```
http://localhost:3000/DevSecOps%20para%20Leigos.html
```

Quando terminar, volte ao PowerShell e pressione `Ctrl + C` para encerrar.

---

## Por que não posso abrir o HTML direto com duplo clique?

Boa pergunta! Quando você abre um arquivo HTML dando duplo clique, o browser o executa com o protocolo `file://`. Nesse modo, por segurança, o browser bloqueia qualquer comunicação de rede — inclusive com o Ollama rodando localmente.

Ao usar o servidor Python (`http.server`), o arquivo é servido via `http://localhost`, e o browser permite a comunicação normalmente.

**Resumo:** duplo clique = protocolo `file://` = IA bloqueada. Servidor Python = protocolo `http://` = IA funcionando.

---

## Funcionalidades da apresentação

### Acessibilidade
- **Narração de slides** — botão "🔊 Ouvir Slide" em cada slide lê o conteúdo em voz alta
- **Textos para leitores de tela** — descrições ocultas compatíveis com NVDA e JAWS
- **ARIA completo** — todos os elementos interativos têm rótulos acessíveis

### Inteligência Artificial (requer Ollama + Gemma rodando)
- **🤖 Narrar com IA** — Gemma explica o slide em linguagem simples e lê em voz alta
- **🎨 Analogia** — Gemma cria uma analogia do dia a dia para o conceito do slide
- **🤖 Auto IA** — ativa explicação automática ao rolar os slides (toggle no chat)
- **📝 Quiz adaptativo** — perguntas geradas pela IA com dificuldade que sobe conforme você acerta
- **📋 Resumo** — resumo executivo das 8 fases do DevSecOps gerado pela IA
- **Chat** — tire dúvidas em texto com o Gemma a qualquer momento

---

## Modelo de IA utilizado

| Propriedade | Valor |
|---|---|
| Modelo | Gemma 3 4B |
| Desenvolvedor | Google |
| Parâmetros | 4 bilhões |
| Licença | Open source (Gemma Terms of Use) |
| Execução | 100% local via Ollama |
| Comando para baixar | `ollama pull gemma3:4b` |
| Tamanho do download | ~2,5 GB |

O Gemma 3 4B é uma excelente opção para uso local: equilibra qualidade de resposta com uso de memória RAM, funcionando bem em computadores com 8 GB de RAM ou mais.

---

## Solução de problemas

**O Mentor IA não responde / aparece mensagem de erro**
- Verifique se o Ollama está rodando (ícone na barra de tarefas)
- Verifique se você abriu a apresentação pelo servidor (`http://localhost:3000`) e não por duplo clique direto
- Confirme que a variável OLLAMA_ORIGINS foi configurada (Passo 3) e que o Ollama foi reiniciado depois

**A voz não fala / narração não funciona**
- A narração usa a Web Speech API do browser — funciona melhor no Microsoft Edge e Google Chrome
- Certifique-se de que o volume do sistema não está no mudo

**Erro "python não é reconhecido"**
- O Python não está instalado ou não foi adicionado ao PATH
- Reinstale o Python marcando a opção "Add Python to PATH"

---

## Licença

[MIT License](LICENSE).
