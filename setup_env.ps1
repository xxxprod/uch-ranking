if ( -Not (Test-Path "venv") ){ 
    # Create virtual environment
    python -m venv venv
    python.exe -m pip install --upgrade pip
}
