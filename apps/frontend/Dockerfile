FROM ivanbirkamier/nxbasimages:latest AS builder

ARG NODE_ENV
ARG BUILD_FLAG
WORKDIR /app/builder
COPY . .
RUN npx nx build frontend ${BUILD_FLAG}

FROM nginx:1.22.1

WORKDIR /usr/share/nginx/html

COPY --from=builder /app/builder/dist/frontend ./
COPY --from=builder /app/builder/frontend/nginx.conf /etc/nginx/nginx.conf
