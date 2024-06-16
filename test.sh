#!/bin/bash
# Remove Python installed via the official installer
sudo rm -rf /Library/Frameworks/Python.framework/Versions/3.8
# Remove symbolic links
sudo rm -rf /usr/local/bin/python3.8 sudo rm -rf /usr/local/bin/pip3.8
# Remove Python caches and preferences
rm -rf ~/Library/Python/3.8
# Remove Python-related configuration files
rm -rf ~/.pydistutils.cfg rm -rf ~/.pip
# Remove Python virtual environments
find ~ -type d -name "venv" -exec rm -rf {} +
# Remove Python packages installed via pip for Python 3.8
pip3.8 list --format=freeze | cut -d'=' -f1 | xargs pip3.8 uninstall -y
# Remove the pip cache
rm -rf ~/.cache/pip
