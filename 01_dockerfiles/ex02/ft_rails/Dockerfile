# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/18 20:28:12 by phtruong          #+#    #+#              #
#    Updated: 2019/09/18 20:47:37 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
FROM ruby:2.3.7

ONBUILD COPY ./app/ /opt/app/
ONBUILD WORKDIR /opt/app

RUN apt-get update \
	&& apt-get install -y rails
RUN gem install bundler -v 2.0.1

ONBUILD RUN bundler install
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed
