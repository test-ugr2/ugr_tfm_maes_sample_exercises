FROM alpine:edge

RUN apk add --no-cache \
    build-base\
    python3 \
    ruby \
    ruby-dev \
    tidyhtml \
    cppcheck \
    py3-pycodestyle \
    py3-requests \
    py3-pytest \
    py3-beautifulsoup4 \
    py3-wcwidth \
    ruby-rspec \
    ruby-json


RUN gem install --no-document rubocop mdl

COPY . .

RUN echo "Testing that we have all the requirements" && \
    python3 --version && \
    ruby --version && \
    gcc --version && \
    tidy --version

RUN pycodestyle-3 homework_01_python/*.py
RUN pytest-3 --verbose homework_01_python/*.py

# RUN rubocop homework_02_ruby
RUN rspec homework_02_ruby

RUN cppcheck --verbose --error-exitcode=2 homework_03_c/*.c
RUN make -C homework_03_c tests

RUN tidy -quiet -errors homework_04_html/*.html