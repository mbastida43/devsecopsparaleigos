# DevSecOps para Leigos

O objetivo dessas apresentações é tornar mais acessível o conhecimento de DevSecOps, com suporte a leitores de tela (NVDA/JAWS) e um Mentor IA rodando localmente no seu computador.

---

## Arquivos

| Arquivo | Descrição |
|---|---|
| `DevSecOps para Leigos.html` | Apresentação com acessibilidade e Mentor IA |
| `iniciar.bat` | Atalho para abrir a apresentação com um duplo clique |
| `DevSecOps para leigos V1.pptx` | Versão 1 em PowerPoint |
| `DevSecOps para leigos V2.pptx` | Versão 2 em PowerPoint |
| `DevSecOps para leigos V3.pdf` | Versão 3 em PDF |
| `LICENSE` | Licença MIT |

---

## Mentor IA — Powered by Gemma 3 4B

A apresentação inclui um assistente de inteligência artificial que roda **100% localmente** no seu computador, sem necessidade de conta, chave de API ou internet. O modelo utilizado é o **Gemma 3 4B**, da Google — um modelo de linguagem open source com 4 bilhões de parâmetros, otimizado para uso local.

---

## Pré-requisitos

### 1. Instalar o Ollama

O Ollama é o programa que roda o modelo de IA localmente.

1. Acesse **[ollama.com](https://ollama.com)** e clique em **Download for Windows**
2. Execute o instalador `OllamaSetup.exe`
3. Confirme que instalou corretamente abrindo o PowerShell e executando:
   ```powershell
   ollama --version
   ```

### 2. Baixar o modelo Gemma 3 4B

No PowerShell, execute:
```powershell
ollama pull gemma3:4b
```
> O download é de aproximadamente **2.5 GB**. Execute apenas uma vez.

### 3. Configurar o CORS (apenas uma vez)

Para que a apresentação consiga se comunicar com o Ollama, execute no PowerShell:
```powershell
[System.Environment]::SetEnvironmentVariable("OLLAMA_ORIGINS", "*", "User")
```
> Este comando salva a configuração permanentemente. Não precisa repetir.

Depois, reinicie o Ollama:
1. Clique na **seta ˄** no canto inferior direito da tela (bandeja do sistema)
2. Clique com o **botão direito** no ícone do Ollama
3. Clique em **Quit**
4. Reabra o Ollama pelo menu **Iniciar**

### 4. Instalar o Python

O Python é necessário para servir a apresentação localmente. Verifique se já está instalado:
```powershell
python --version
```
Se não estiver instalado, baixe em **[python.org](https://python.org)**.

---

## Como abrir a apresentação

Após concluir todos os pré-requisitos, o uso diário é simples:

1. Certifique-se que o **Ollama está rodando** (ícone na bandeja do sistema)
2. Abra a pasta `devsecops` no Explorador de Arquivos
3. Dê **duplo clique** no arquivo `iniciar.bat`
4. O browser abre automaticamente com a apresentação

> Para **encerrar**, volte à janela preta do `iniciar.bat` e pressione qualquer tecla.

---

## Funcionalidades de Acessibilidade

- **Narração de slides** — botão "🔊 Ouvir Slide" em cada slide, usando a Web Speech API do browser
- **Textos para leitores de tela** — descrições `sr-only` em todos os slides para NVDA/JAWS
- **Mentor IA** — chat com o Gemma 3 4B para tirar dúvidas sobre DevSecOps
- **Quiz** — perguntas geradas pela IA para testar o conhecimento
- **Resumo Executivo** — resumo das 8 fases do DevSecOps gerado pela IA
- **Analogias Visuais** — descrições em áudio dos conceitos de cada slide

---

## Licença

[MIT License](LICENSE).
