FROM node:14-alpine

WORKDIR /app

# Since 0.14.0 release of html-template chromium is needed for pdf generation
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

# Since 0.30.0 release Git is supported and required as a dependency
# Since 0.14.0 release of html-template chromium is needed for pdf generation.
# More custom packages for specific template should not be added to this dockerfile. Instead, we should come up with some extensibility solution.
RUN apk --update add git chromium && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

# Install latest released npm package for generator
RUN npm install -g @asyncapi/generator

# Install latest released npm package for template(s)
RUN npm install -g @asyncapi/java-spring-cloud-stream-template

ENTRYPOINT [ "ag" ]
