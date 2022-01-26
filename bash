RUN     apt update -y

RUN     sudo apt install openjdk-8-jdk -y
RUN     sudo apt install openjdk-11-jdk -y
RUN     sudo apt install openjdk-11-jdk -y

RUN     sudo apt update -y
RUN     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
RUN     nvm --version
RUN     nvm install node
RUN     sudo apt install jq -y

RUN     curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN     chmod +x kubectl
RUN     sudo mv kubectl /usr/local/bin/kubectl

RUN     sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
RUN     curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
RUN     sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN     sudo apt-get update && sudo apt-get install terraform

RUN     curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
RUN     chmod +x ./kops
RUN     sudo mv ./kops /usr/local/bin/

RUN     apt-get install awscli -y

RUN     apt-get update -y
RUN     echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN     curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN     sudo apt update -y
RUN     sudo apt-get install google-cloud-sdk -y
