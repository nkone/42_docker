# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/16 19:03:50 by phtruong          #+#    #+#              #
#    Updated: 2019/09/22 18:51:45 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# From an alpine image you’ll add to your container your favorite text editor, vim or
# emacs, that will launch along with your container.

FROM alpine

RUN apk update	&& \
	apk upgrade	&& \
	apk add vim

CMD vim
