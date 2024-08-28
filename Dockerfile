# Dockerfile

# Estende l'immagine jupyter/datascience-notebook
FROM jupyter/datascience-notebook:latest

# Passa all'utente root per installare i pacchetti
USER root

RUN apt-get update && apt-get install -y wkhtmltopdf

# Ripristina l'utente non root per l'esecuzione del container
USER $NB_UID

# Ingresso per assicurarsi che il notebook si avvii all'inizio
CMD ["start-notebook.sh"]
