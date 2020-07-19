# drone and gitea

> 需在公网上部署

# 使用 

## 管理 Gitea 
### 启动 Gitea  
```
./run.sh gitea start // or cd gitea && docker-compose up -d
```
### 停止 Gitea
```bash
./run.sh gitea stop // or cd gitea && docker-compose down
```

### 创建 OAuth 应用
> 参考链接， 参考 `Step 1：Preparation`部分 
[Visit](https://docs.drone.io/server/provider/gitea/)
### Create a Shared Secret
```
openssl rand -hex 16
```

## edit `.env` file 


## Run Drone Server
```
```
## Run Drone Runner
```
 docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e DRONE_RPC_PROTO=http \
  -e DRONE_RPC_HOST=drone.cnbattle.com \
  -e DRONE_RPC_SECRET=${your DRONE_RPC_SECRET} \
  -e DRONE_RUNNER_CAPACITY=2 \
  -e DRONE_RUNNER_NAME=${HOSTNAME} \
  -p 3000:3000 \
  --restart always \
  --name runner \
  drone/drone-runner-docker:1
```
