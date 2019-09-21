#**************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phtruong <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/18 15:14:24 by phtruong          #+#    #+#              #
#    Updated: 2019/09/20 23:38:40 by phtruong         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ruby AS ftrails

RUN apt-get update && apt-get install -y \
   	build-essential \
	sudo \
	libsqlite3-dev \
	ruby-dev \
	nodejs \
	zlib1g-dev \
	curl \
	gnupg \
	gnupg1 \
	gnupg2 \
	--no-install-recommends

# Stupid yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn

# Ruby gems
RUN echo 'gem: --no-document' >> ~/.gemrc
RUN gem install bundler 
RUN gem install rails
RUN gem install rake

# To deploy app, run bundle install and mb update yarn while at it (need more testing on yarn)
WORKDIR /opt/app/
COPY miku .

FROM ftrails

EXPOSE 3000
WORKDIR /opt/app
COPY --from=ftrails /opt/app/ .
RUN bundle install
RUN yarn install --check-files
RUN rake db:migrate
RUN rake db:seed
CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
