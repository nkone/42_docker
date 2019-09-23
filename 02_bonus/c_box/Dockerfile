# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/22 19:39:25 by phtruong          #+#    #+#              #
#    Updated: 2019/09/22 21:10:39 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive
EXPOSE 22
RUN apt-get update && apt-get install -y \
	build-essential \	
	vim \
	sudo \
	git \
	openssh-server \
	--no-install-recommends

WORKDIR /.ssh
COPY github_key .
WORKDIR /

# run
# eval $(ssh-agent -s)
# ssh-add /.ssh/github_key
# testing:
# ssh -T git@github.com
ENTRYPOINT /bin/bash
