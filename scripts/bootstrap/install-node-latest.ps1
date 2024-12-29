# Note: latest redirects to version!
$NODEJS_VERSION="v23.5.0"
$NODEJS_FILENAME="node-${NODEJS_VERSION}-x64.msi"
$NODEJS_URL="https://nodejs.org/dist/${NODEJS_VERSION}/${NODEJS_FILENAME}"
# Defaults to current working directory
$NODEJS_DOWNLOAD_LOCATION=""
# $NODEJS_DOWNLOAD_LOCATION="C:\"
powershell -NoExit -Command "(New-Object Net.WebClient).DownloadFile('${NODEJS_URL}', '${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}'); exit;"

# Unattended but shows installer.
msiexec /passive /log "${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}.log" /package ${NODEJS_DOWNLOAD_LOCATION}$NODEJS_FILENAME

# Uncomment this and comment out above line for background install:
# msiexec /qn /l* ${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}.log /i ${NODEJS_DOWNLOAD_LOCATION}${NODEJS_FILENAME}
