FROM node:18
WORKDIR /app
COPY package.json .
COPY test.js .
RUN npm install --omit=dev || true
CMD ["npm", "start"]
