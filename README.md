# GAS CITY UTILITES
### By Markus Lachinger

These are some utilities I found useful for using GasCity.

## Docker
copy docker-compose.mmlac.yaml, docker-entrypoint.sh and Dockerfile.mmlac to the gascity repo. Add them to the exclude file in the gascity repository, so it doesn't commit them 

.git/info/exclude:
``` 
Dockerfile.mmlac
docker-compose.mmlac.yaml
docker-entrypoint.sh
```

Run docker compose to build and spawn the container:
```
GIT_USER="Your Name" GIT_EMAIL="your-email@example.com" docker compose -f docker-compose.mmlac.yaml up --build -d
```

Then exec into your container as many times as you want for multiple shells:
```
docker compose -f docker-compose.mmlac.yaml exec gascity zsh
```

## Packs

### Claude Polecats -> Codex Reviewer -> Claude Refinery
I created a pack that adds a reviewer to the "default" gastown flow. You can find it at [mmlac/gascity-pack-mmlac](https://github.com/mmlac/gascity-pack-mmlac)