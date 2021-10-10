# git
Minimalist image for running Git.

# Usage
You can run your Git commands like this:
```
docker run -it --rm ghcr.io/runcher/git:main <command>
```

If you want to use SSH keys, mount them as volume:
```
docker run -it --rm -v <key-path>:/root/.ssh ghcr.io/runcher/git:main <command>
```
