# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/21 09:45:50 by phtruong          #+#    #+#              #
#    Updated: 2019/09/21 12:27:36 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian

RUN apt-get update -y && apt-get -y upgrade \
	&& DEBIAN_FRONTEND=noninteractive apt-get -y install \
	--no-install-recommends \
	apt-utils \
	curl \
	sudo \
	openssh-server \
	ca-certificates

RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
RUN apt-get install -y gitlab-ee

# https://gitlab.com/gitlab-org/omnibus-gitlab/issues/4257
# 
# For those running in a container, and not using our own docker image.
# The package is expecting an init system to start our runit service.
# Without an initsystem. You need to start it yourself. 
# After installing and before running reconfigure, 
# run: /opt/gitlab/embedded/bin/runsvdir-start & to start the runit service in the background.
# This is how our own docker image works:
# https://gitlab.com/gitlab-org/omnibus-gitlab/blob/master/docker/assets/wrapper#L112#
# DJ Mountney
# Here's line 112
# GITLAB_OMNIBUS_CONFIG= /opt/gitlab/embedded/bin/runsvdir-start &

# run container with --privileged
# check with ip of docker machine and port 80 on browser
# gitlab shell runs via port 22 (for ssh?)
# gitlab rails run via 80 or 443
# You can check if ssh is working by generating rsa key and add it git account.

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && /bin/bash
