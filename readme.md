# Explore Bikeshare Data

## UDACITY - Programming for Data Science with Python - Nanodegree Program

### Setting Up the Environment

To set up the environment, run the following command in your terminal:
```sh
docker-compose up -d
```

### Setting Up Jupyter

Use the following parameters to get the token from container logs:

```sh
docker logs jupyter 2>&1 | grep -oP 'lab\?token=\K\S+' | head -n 1
```

or 

```ps1
docker logs jupyter 2>&1 | Select-String -Pattern 'lab\?token=' | Select-Object -First 1 | ForEach-Object { $_.Line -match 'lab\?token=(\S+)' ; $matches[1] }
```