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