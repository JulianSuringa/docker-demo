FROM node:14.17.1 as build 


WORKDIR /react-app


COPY ./react-app/package*.json /react-app/
COPY  ./react-app/yarn.lock /react-app/


# Run yarn install
RUN yarn install

COPY ./react-app /react-app

# Build the project
RUN yarn build
# Install serve command for yarn package manager
RUN yarn global add serve

EXPOSE 3000
# Start the application

WORKDIR /react-app/build

CMD ["serve", "-s"]
