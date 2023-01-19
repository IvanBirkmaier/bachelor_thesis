FROM ivanbirkamier/nxbasimages:latest AS builder

ARG NODE_ENV
ARG BUILD_FLAG
WORKDIR /app/builder
COPY . .
RUN npx nx build frontend ${BUILD_FLAG}

FROM nginx:1.22.1

COPY --from=builder /app/builder/apps/frontend/nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /app/builder/dist/apps/frontend /usr/share/nginx/html

