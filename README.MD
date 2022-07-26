# Laravel Docker Boilerplate - LAMP-Stack

## Enthaltene Services

- Apache2 Webserver
- PHP
- Datenbank (Mysql)
- Laravel Queue (Supervisor)
- Laravel Schedule (Cron)


## Repository Struktur

```yaml
- src/                  # Project Files: muss erst erstellt werden!
- docker/               # Docker Konfiguration
- .dockerignore         # was Docker ignorieren soll
- .gitignore            # was Git ignorieren soll
- docker-compose.yml    # Docker Container Services Konfiguration
- README.MD             # Projekt Beschreibung: kann geändert werden
```

### 1. clone repository
```bash
git clone git@github.com:KarstenKuehn/Laravel-Docker-Lamp-Stack.git
```

### 2. change remote url
ersetze die git origin remote url mit deiner Repository Url:
```bash
git remote set-url origin <new-git-repository-url>
```

### 3. modify .gitignore
lösche den `src/` Eintrag in der [.gitignore](.gitignore):
```text
src/
```

### 4. adaption
passe alles so an, wie und was du auch immer brauchst!



## show Environment Variables from Container
```bash
docker compose exec <container> env
```

## from Container to outside
```bash
docker cp <container>:<sources> <destination>
```
## from outside to container
```bash
docker cp <sources> <container>:<destination>
```
