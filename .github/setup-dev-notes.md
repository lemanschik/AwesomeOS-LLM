Installs [uv](https://docs.astral.sh/uv/) and aider into ~/.local/bin

Windows ```powershell -ExecutionPolicy ByPass -c "irm https://aider.chat/install.ps1 | iex"```
Linux ```curl -LsSf https://aider.chat/install.sh | sh```


Install [deno] 

Windows ```powershell -ExecutionPolicy ByPass -c "irm https://deno.land/install.ps1 | iex"```
Linux ```curl -fsSL https://deno.land/install.sh | sh```

Install [node]
Windows install.ps1
```ps1
$NODEJS_FILENAME="node-v6.10.0-x86.msi"
$NODEJS_URL="https://nodejs.org/dist/v6.10.0/${NODEJS_FILENAME}"
$NODEJS_DOWNLOAD_LOCATION=""
# $NODEJS_DOWNLOAD_LOCATION="C:\"
powershell -NoExit -Command "(New-Object Net.WebClient).DownloadFile('${NODEJS_URL}', '${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}'); exit;"

# Unattended but shows installer.
msiexec /passive /log "${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}.log" /package ${NODEJS_DOWNLOAD_LOCATION}$NODEJS_FILENAME

# Uncomment this and comment out above line for background install:
# msiexec /qn /l* ${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}.log /i ${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}
```


Linux install.sh
```sh
(MIRROR=https://nodejs.org/dist/latest; VERSION=; DIR=~/.local; SYSTEM=linux-x64; curl -s -L ${MIRROR}${VERSION}/$(curl -s -L ${MIRROR}${VERSION} | grep 'tar.gz' | grep ${SYSTEM} | cut -d\" -f2) | tar -xvz --strip-components 1 -C ${DIR})
```
