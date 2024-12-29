## Installs [uv](https://docs.astral.sh/uv/) and aider into ~/.local/bin

Windows ```powershell -ExecutionPolicy ByPass -c "irm https://aider.chat/install.ps1 | iex"```

Linux ```curl -LsSf https://aider.chat/install.sh | sh```


## Install [deno] 

Windows ```powershell -ExecutionPolicy ByPass -c "irm https://deno.land/install.ps1 | iex"```

Linux ```curl -fsSL https://deno.land/install.sh | sh```

## Install [node]

Windows ```powershell -ExecutionPolicy ByPass -c "irm https://raw.githubusercontent.com/lemanschik/AwesomeOS-LLM/refs/heads/main/scripts/bootstrap/install-node-latest.ps1 | iex"```

Linux install.sh
```sh
(MIRROR=https://nodejs.org/dist/latest; VERSION=; DIR=~/.local; SYSTEM=linux-x64; curl -s -L ${MIRROR}${VERSION}/$(curl -s -L ${MIRROR}${VERSION} | grep 'tar.gz' | grep ${SYSTEM} | cut -d\" -f2) | tar -xvz --strip-components 1 -C ${DIR})
```

## Install [Ollama]

Linux ```curl -fsSL https://ollama.com/install.sh | sh```

Windows 
```ps1 
powershell -NoExit -Command "(New-Object Net.WebClient).DownloadFile('https://ollama.com/download/OllamaSetup.exe', 'OllamaSetup.exe'); exit;"
msiexec /qn /l* OllamaSetup.log /i OllamaSetup.exe
```


