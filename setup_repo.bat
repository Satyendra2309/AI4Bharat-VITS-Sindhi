@echo off
echo Creating directory structure...

:: Create main directories
mkdir notebooks
mkdir src\data
mkdir src\model
mkdir src\websocket
mkdir configs
mkdir scripts
mkdir tests
mkdir .github\workflows

:: Create empty files
echo. > notebooks\01_data_preparation.ipynb
echo. > notebooks\02_model_training.ipynb
echo. > notebooks\03_inference_testing.ipynb
echo. > src\data\preprocessing.py
echo. > src\data\dataset.py
echo. > src\model\vits_model.py
echo. > src\model\config.py
echo. > src\websocket\server.py
echo. > src\websocket\client.py
echo. > configs\sindhi_config.json
echo. > scripts\download_data.sh
echo. > scripts\prepare_environment.sh
echo. > scripts\train.sh
echo. > requirements.txt
echo. > Dockerfile

:: Create .gitignore
echo # Python > .gitignore
echo __pycache__/ >> .gitignore
echo *.py[cod] >> .gitignore
echo *$py.class >> .gitignore
echo *.so >> .gitignore
echo .Python >> .gitignore
echo build/ >> .gitignore
echo develop-eggs/ >> .gitignore
echo dist/ >> .gitignore
echo downloads/ >> .gitignore
echo eggs/ >> .gitignore
echo .eggs/ >> .gitignore
echo lib/ >> .gitignore
echo lib64/ >> .gitignore
echo parts/ >> .gitignore
echo sdist/ >> .gitignore
echo var/ >> .gitignore
echo wheels/ >> .gitignore
echo *.egg-info/ >> .gitignore
echo .installed.cfg >> .gitignore
echo *.egg >> .gitignore
echo # Virtual Environment >> .gitignore
echo venv/ >> .gitignore
echo ENV/ >> .gitignore
echo # IDE >> .gitignore
echo .idea/ >> .gitignore
echo .vscode/ >> .gitignore
echo *.swp >> .gitignore
echo *.swo >> .gitignore
echo # Notebooks >> .gitignore
echo .ipynb_checkpoints >> .gitignore
echo *.ipynb_checkpoints/ >> .gitignore
echo # Data >> .gitignore
echo data/ >> .gitignore
echo *.wav >> .gitignore
echo *.mp3 >> .gitignore
echo *.flac >> .gitignore
echo *.tgz >> .gitignore
echo *.tar.gz >> .gitignore
echo # Models >> .gitignore
echo models/ >> .gitignore
echo *.pth >> .gitignore
echo *.pt >> .gitignore
echo *.ckpt >> .gitignore
echo # Logs >> .gitignore
echo logs/ >> .gitignore
echo *.log >> .gitignore
echo # OS >> .gitignore
echo .DS_Store >> .gitignore
echo Thumbs.db >> .gitignore

:: Create requirements.txt
echo torch>=1.9.0 > requirements.txt
echo torchaudio>=0.9.0 >> requirements.txt
echo numpy>=1.19.0 >> requirements.txt
echo pandas>=1.3.0 >> requirements.txt
echo librosa>=0.8.1 >> requirements.txt
echo soundfile>=0.10.3.post1 >> requirements.txt
echo websockets>=10.0 >> requirements.txt
echo transformers>=4.11.3 >> requirements.txt
echo phonemizer>=2.2.1 >> requirements.txt
echo tensorboard>=2.7.0 >> requirements.txt
echo matplotlib>=3.4.3 >> requirements.txt
echo scipy>=1.7.1 >> requirements.txt
echo PyYAML>=5.4.1 >> requirements.txt
echo tqdm>=4.62.3 >> requirements.txt
echo scikit-learn>=0.24.2 >> requirements.txt
echo jupyter>=1.0.0 >> requirements.txt

:: Create GitHub Actions workflow
mkdir .github\workflows
echo name: Python application > .github\workflows\python-app.yml
echo. >> .github\workflows\python-app.yml
echo on: >> .github\workflows\python-app.yml
echo   push: >> .github\workflows\python-app.yml
echo     branches: [ main ] >> .github\workflows\python-app.yml
echo   pull_request: >> .github\workflows\python-app.yml
echo     branches: [ main ] >> .github\workflows\python-app.yml
echo. >> .github\workflows\python-app.yml
echo jobs: >> .github\workflows\python-app.yml
echo   build: >> .github\workflows\python-app.yml
echo     runs-on: ubuntu-latest >> .github\workflows\python-app.yml
echo     steps: >> .github\workflows\python-app.yml
echo     - uses: actions/checkout@v2 >> .github\workflows\python-app.yml
echo     - name: Set up Python >> .github\workflows\python-app.yml
echo       uses: actions/setup-python@v2 >> .github\workflows\python-app.yml
echo       with: >> .github\workflows\python-app.yml
echo         python-version: '3.8' >> .github\workflows\python-app.yml

echo Repository structure created successfully!
echo Now running git commands...

:: Initialize git and create first commit
git init
git add .
git commit -m "Initial repository structure"

echo Done! Next steps:
echo 1. Update README.md with project details
echo 2. Push to GitHub using: git push origin main
echo 3. Add collaborators on GitHub
pause