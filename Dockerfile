FROM ruby:3.0.1

ENV APP_ROOT="/app" \
		LANG=C.UTF-8	\
		TZ=Asia/Tokyo

WORKDIR $APP_ROOT

COPY Gemfile* $APP_ROOT/

RUN bundle install

COPY . $APP_ROOT/
