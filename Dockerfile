FROM dannydainton/htmlextra

# Copy Postman files to container
COPY . /etc/newman

# Copy environment file to /etc/newman
COPY mobi_env.json /etc/newman

# Run Newman with htmlextra reporter and output to /etc/newman
CMD [ "newman run mobi_smoke.json", "-e",  "etc/newman/mobi_env.json", "-r", "htmlextra", "--reporter-htmlextra-export", "/etc/newman/report.html"]