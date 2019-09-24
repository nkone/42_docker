# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/23 20:49:41 by phtruong          #+#    #+#              #
#    Updated: 2019/09/23 21:01:44 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	vim \
	sudo \
	mutt

RUN mkdir -p /root/.mutt/cache/headers
RUN mkdir /root/.mutt/cache/bodies
RUN touch /root/.mutt/certificates

WORKDIR /root/
COPY .muttrc .

ENTRYPOINT mutt
