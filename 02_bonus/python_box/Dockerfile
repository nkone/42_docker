# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/23 16:20:33 by phtruong          #+#    #+#              #
#    Updated: 2019/09/23 16:25:58 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install -y \
	sudo \
	python3 \
	git \
	vim

WORKDIR /home/phtruong

ENTRYPOINT /bin/bash
