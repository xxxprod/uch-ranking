# Define the path for the new virtual environment
$envPath = ".\venv"

# Define the path to the requirements.txt file
$requirementsPath = ".\requirements.txt"

# Check if the virtual environment already exists
if (Test-Path -Path $envPath) {
    Write-Output "Virtual environment already exists."
} else {
    # Create the virtual environment
    python -m venv $envPath
    Write-Output "Virtual environment created at $envPath"
}

# Activate the virtual environment
# Note: The path to the activation script varies between platforms and Python versions.
# For Windows, it's usually '.\venv\Scripts\Activate.ps1'. Adjust if necessary.
$activateScript = Join-Path -Path $envPath -ChildPath "Scripts\Activate.ps1"
. $activateScript

# Install packages from requirements.txt
if (Test-Path -Path $requirementsPath) {
    pip install -r $requirementsPath
    Write-Output "Packages installed from $requirementsPath"
} else {
    Write-Output "requirements.txt not found."
}

# Deactivate the virtual environment
deactivate