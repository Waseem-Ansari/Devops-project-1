mkdir devops-project-1
cd devops-project-1/
touch index.html\
ls
vim index.html 
cat index.html 
rm index.html 
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
  <title>DevOps Journey</title>
  <style>
    body {
      font-family: monospace;
      background: #0D1117;
      color: #E6EDF3;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .card {
      text-align: center;
      border: 1px solid #238636;
      padding: 40px;
      border-radius: 10px;
    }
    h1 { color: #3FB950; }
    p  { color: #8B949E; }
  </style>
</head>
<body>
  <div class="card">
    <h1>🚀 DevOps Engineer in Progress</h1>
    <p>Served from inside a Docker container</p>
    <p>Built by: [Your Name]</p>
  </div>
</body>
</html>
EOF

cat index.html 
vim Dockerfile
docke
docker
sudo apt install docker.io
sudo usermod -G ubuntu docker
sudo usermod -G docker ubuntu
exit
sudo apt update
man pwd
tldr pwd
sudo apt install tldr
snap install tldr
sudo snap install tldr
tldr pwd
