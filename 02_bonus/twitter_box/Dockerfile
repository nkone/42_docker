# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/23 12:10:49 by phtruong          #+#    #+#              #
#    Updated: 2019/09/23 14:19:39 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
	sudo \
	python-dev libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev \
	python3-pip

RUN	pip3 install rainbowstream

COPY .rainbow_oauth /root/

ENTRYPOINT rainbowstream
