if ( -Not (Test-Path "venv") ){ 
    # Create virtual environment
    python -m venv venv
    python.exe -m pip install --upgrade pip
}


./venv/Scripts/activate.ps1

# Install dependencies

pip install -r requirements.txt
