# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/18 15:36:13 by phtruong          #+#    #+#              #
#    Updated: 2019/09/21 11:46:23 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Debian image
FROM debian:bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive

# Open gate 3000
EXPOSE 3000

# Run all installation craps
RUN apt-get update && apt-get install -y \
	build-essential \
	wget \
	bzip2 \
	sudo \
	libsqlite3-dev \
	git \
	ruby \
	ruby-dev \
	nodejs \
	zlib1g-dev \
	curl \
	gnupg \
	gnupg1 \
	gnupg2 \
	--no-install-recommends

# No documents
RUN echo 'gem: --no-document' >> ~/.gemrc
RUN gem install rails

# Shits that rails can't run without
RUN gem install rake
RUN gem install childprocess -v '2.0.0' --source 'https://rubygems.org/'
RUN gem install sqlite3 -v '1.4.1' --source 'https://rubygems.org/'

# Install stupid yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn
