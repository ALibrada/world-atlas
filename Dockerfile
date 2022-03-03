FROM node:14-alpine

RUN apk --no-cache add curl
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install --global topojson-server shapefile d3-geo-projection topojson-client ndjson-cli topojson-simplify

CMD ["sh","/app/prepublish"]