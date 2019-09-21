# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/17 19:44:13 by phtruong          #+#    #+#              #
#    Updated: 2019/09/17 20:53:36 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian


# Open the gates, kinda useless since I have to open ports manually with docker run

EXPOSE 9987/udp 10011 30033

# Upgade debian
RUN apt-get update && apt-get upgrade && apt-get install wget bzip2 w3m -y

# Get latest version of team speak

RUN TS_SERVER_VERSION="$(w3m -dump https://www.teamspeak.com/downloads | grep -m 1 'Server 64-bit ' | awk '{print $NF}')" && \
wget https://files.teamspeak-services.com/releases/server/${TS_SERVER_VERSION}/teamspeak3-server_linux_amd64-${TS_SERVER_VERSION}.tar.bz2 -O /opt/teamspeak.tar.bz2

# Extract the goods

RUN tar jxf /opt/teamspeak.tar.bz2 -C /opt

# Organize
RUN mv /opt/teamspeak3-server_* /opt/teamspeak && rm /opt/teamspeak.tar.bz2

WORKDIR /opt/teamspeak

# Accept the license

RUN touch .ts3server_license_accepted

ENTRYPOINT sh ts3server_minimal_runscript.sh
