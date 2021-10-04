docker run -d-p 1965:1965 -e HOSTNAME=myhost -d -v ~/srv/gemini/local:/home/user/geminiroot --restart=always --name=local_dezhemini dezhemini:latest
