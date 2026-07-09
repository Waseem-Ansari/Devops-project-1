# WordPress + MySQL + nginx on AWS EC2
 
## Architecture
Browser → nginx (8080) → WordPress → MySQL (internal only)
 
## Prerequisites
- Docker + Docker Compose installed
- AWS EC2 instance (t2.micro minimum, 2GB RAM recommended)
- Security Group: port 8080 open inbound
 
## Setup
1. Clone repo
2. cp .env.example .env
3. Fill real values in .env
4. docker-compose up -d
5. Wait 30 seconds
6. Open: http://YOUR_EC2_IP:8080/wp-admin/install.php
 
## Important
After WordPress setup wizard completes, run this to fix URL redirects:
 
    docker-compose exec mysql-db mysql -u wpuser -pwpsecret wordpress
    UPDATE wp_options SET option_value='http://YOUR_EC2_IP:8080' WHERE option_name='siteurl';
    UPDATE wp_options SET option_value='http://YOUR_EC2_IP:8080' WHERE option_name='home';
    exit
 
## Lessons Learned (Real Incidents)
- WordPress stores its own URL in DB — must match external IP:port
- depends_on alone doesn't wait for MySQL to be ready — use healthcheck
- Security Group must allow port 8080 inbound
- Never hardcode secrets — use .env file + .gitignore
