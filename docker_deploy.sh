#!/bin/bash
set -e

echo "🚀 进入容器并部署 Hexo 博客..."
docker run -it \
  -v $(pwd):/app \
  -v ~/.ssh:/root/.ssh \
  -w /app \
  node:18 \
  bash -c "npm install && npx hexo clean && npx hexo generate && npx hexo deploy"

echo "✅ 博客已部署！访问：https://SiriusEst.github.io/hexo-blog"
