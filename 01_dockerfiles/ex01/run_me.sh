# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_me.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/17 20:54:07 by phtruong          #+#    #+#              #
#    Updated: 2019/09/18 15:28:28 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh
docker build --no-cache -t teamspeak3 .
docker run -itd --name teamspeak -p 9987:9987/udp -p 10011:10011 -p 30033:30033 --rm teamspeak3
docker logs -f teamspeak
