#!/bin/bash

# Script to set up Autonomous Vehicle Mobility Research GitHub Repository
# Author: GitHub Copilot
# Date: September 20, 2025

set -e  # Exit on any error

# Configuration variables
REPO_NAME="AVMI-GVSC-SoundSystem"
REPO_DESCRIPTION="AVMI–GVSC10-2024 Project: Sound System Modeling, Simulation, and Integration in the AVMI Autonomous Systems Laboratory (ASL) Digital Engineering Ecosystem Simulator"
GITHUB_USERNAME="${GITHUB_USERNAME:-CHI-CityTech}"  # Default to CHI-CityTech, can be overridden
LOCAL_DIR="${LOCAL_DIR:-$HOME/Dropbox\ \(Personal\)/GitHub/$REPO_NAME}"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check prerequisites
check_prerequisites() {
    print_status "Checking prerequisites..."
    
    if ! command_exists git; then
        print_error "Git is not installed. Please install Git first."
        exit 1
    fi
    
    if ! command_exists gh; then
        print_error "GitHub CLI (gh) is not installed. Please install it first:"
        echo "  brew install gh"
        echo "  Then run: gh auth login"
        exit 1
    fi
    
    # Check if user is authenticated with GitHub CLI
    if ! gh auth status >/dev/null 2>&1; then
        print_error "You are not authenticated with GitHub CLI. Please run: gh auth login"
        exit 1
    fi
    
    print_success "All prerequisites met!"
}

# Create local directory structure
create_directory_structure() {
    print_status "Creating local directory structure..."
    
    # Create main directory
    mkdir -p "$LOCAL_DIR"
    cd "$LOCAL_DIR"
    
    # Create project structure
    mkdir -p "docs/research" "docs/technical" "docs/evaluation"
    mkdir -p "data/audio_samples" "data/simulation_data" "data/evaluation_results"
    mkdir -p "src/dsp_algorithms" "src/sound_synthesis" "src/spatialization" "src/integration"
    mkdir -p "notebooks/analysis" "notebooks/modeling" "notebooks/evaluation"
    mkdir -p "tests/unit" "tests/integration" "tests/performance"
    mkdir -p "config/simulation" "config/audio_engine"
    mkdir -p "results/sound_objects" "results/models" "results/reports" "results/measurements"
    mkdir -p "scripts/preprocessing" "scripts/simulation" "scripts/evaluation"
    mkdir -p "references/papers" "references/standards" "references/specifications"
    mkdir -p "requirements"
    mkdir -p "assets/samples" "assets/templates" "assets/presets"
    mkdir -p "validation/subjective" "validation/objective" "validation/hardware_in_loop"
    
    print_success "Directory structure created at $LOCAL_DIR"
}

# Create initial files
create_initial_files() {
    print_status "Creating initial project files..."
    
    # Create README.md
    cat > README.md << 'EOF'
# AVMI–GVSC Sound System Project

## Overview
This repository supports the **AVMI–GVSC10-2024 Project: Sound System Modeling, Simulation, and Integration in the AVMI Autonomous Systems Laboratory (ASL) Digital Engineering Ecosystem Simulator**.

The project seeks to transform sound design in simulators for **human–machine integrated formations** by addressing the critical need for **high-fidelity, dynamic, and immersive real-time audio environments**. Realistic soundscapes are essential for effective training, as they directly impact immersion, situational awareness, and preparedness in complex operational environments.

## Research Scope
Our research combines **theoretical analysis**, **technical development**, and **applied testing** across the following areas:

- **Sampling vs. Acoustical Modeling**
  - Comparative analysis of existing sound design methodologies.
  - Development of hybrid synthesis approaches that integrate sampling precision with acoustical modeling flexibility.
  - Creation of a modular, controllable **sound object library**.

- **Real-Time Audio Processing and Spatialization**
  - Design and optimization of DSP algorithms for **real-time performance**.
  - Dynamic placement and movement of sound sources in **multi-channel immersive environments** (cockpit, external, and environmental perspectives).
  - Integration of sound with **vibration and haptic systems** to align physical and auditory cues.

- **Validation and Evaluation**
  - Iterative testing through **subjective perceptual assessments** and **objective technical measurements**.
  - Integration with the VI-Grade **SimSound** and NVH platforms.
  - Hardware-in-the-loop and simulation-based trials to measure fidelity, latency, and trainee performance outcomes.

## Repository Structure

```
├── docs/                          # Documentation and research papers
│   ├── research/                  # Research documentation and findings
│   ├── technical/                 # Technical specifications and designs
│   └── evaluation/                # Evaluation methodologies and results
├── data/                          # Data storage
│   ├── audio_samples/             # Raw and processed audio samples
│   ├── simulation_data/           # Simulation parameters and outputs
│   └── evaluation_results/        # Test results and measurements
├── src/                           # Source code
│   ├── dsp_algorithms/            # Digital signal processing algorithms
│   ├── sound_synthesis/           # Hybrid synthesis models
│   ├── spatialization/            # Multi-channel audio spatialization
│   └── integration/               # System integration modules
├── notebooks/                     # Jupyter notebooks
│   ├── analysis/                  # Data analysis notebooks
│   ├── modeling/                  # Sound modeling experiments
│   └── evaluation/                # Performance evaluation notebooks
├── tests/                         # Test files
│   ├── unit/                      # Unit tests
│   ├── integration/               # Integration tests
│   └── performance/               # Performance benchmarks
├── config/                        # Configuration files
│   ├── simulation/                # Simulation configurations
│   └── audio_engine/              # Audio engine settings
├── results/                       # Generated results
│   ├── sound_objects/             # Generated sound object library
│   ├── models/                    # Trained/calibrated models
│   ├── reports/                   # Generated reports
│   └── measurements/              # Objective measurements
├── scripts/                       # Utility scripts
│   ├── preprocessing/             # Audio preprocessing scripts
│   ├── simulation/                # Simulation execution scripts
│   └── evaluation/                # Evaluation and testing scripts
├── assets/                        # Project assets
│   ├── samples/                   # Sample audio files
│   ├── templates/                 # Template configurations
│   └── presets/                   # Predefined settings
├── validation/                    # Validation frameworks
│   ├── subjective/                # Subjective evaluation tools
│   ├── objective/                 # Objective measurement tools
│   └── hardware_in_loop/          # Hardware-in-the-loop testing
└── requirements/                  # Dependency specifications
```

## Deliverables
- Hybrid synthesis models (sample + modeled).
- Real-time, multi-channel audio engine.
- Modular sound object library matched to simulation parameters.
- Evaluation reports and integration documentation.
- Contributions to the AVMI **Digital Engineering Ecosystem** via the DE Simulator.

## Broader Impacts
While designed for **military vehicle simulation**, the project's outcomes will influence:
- **Blended reality environments** (concert halls, museums, training facilities).
- **Entertainment & gaming industries** through high-fidelity immersive audio.
- **Automotive and acoustic design** for next-generation vehicle systems.
- **STEM education and training**, involving graduate and undergraduate researchers in cutting-edge DSP and acoustics work.

## Project Leadership
- **PI**: Dr. Frederick W. Bianchi (WPI)  
- **Co-PI**: Dr. David B. Smith (CUNY)  
- **Co-PI**: Dr. Lee Moradi (WPI)  
- **Project Participant**: Dr. Vladimir Vantsevich (WPI)  

## Getting Started

### Prerequisites

- Python 3.8+
- Git
- Audio processing libraries (NumPy, SciPy, librosa)
- Real-time audio frameworks (PyAudio, JUCE, etc.)
- Simulation platforms (VI-Grade SimSound integration)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/CHI-CityTech/AVMI-GVSC-SoundSystem.git
   cd AVMI-GVSC-SoundSystem
   ```

2. Create a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements/requirements.txt
   ```

## Usage

### Sound Synthesis
[Add usage instructions for sound synthesis modules]

### Real-Time Processing
[Add usage instructions for real-time audio processing]

### Evaluation Framework
[Add usage instructions for validation and evaluation tools]

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/sound-enhancement`)
3. Commit your changes (`git commit -m 'Add sound spatialization feature'`)
4. Push to the branch (`git push origin feature/sound-enhancement`)
5. Open a Pull Request

## Research Team

[Add current team member information here]

## License

[Add license information here]

## Citation

If you use this work in your research, please cite:

```
AVMI–GVSC10-2024 Project: Sound System Modeling, Simulation, and Integration 
in the AVMI Autonomous Systems Laboratory (ASL) Digital Engineering Ecosystem Simulator.
Principal Investigators: F.W. Bianchi, D.B. Smith, L. Moradi, V. Vantsevich.
```

## Contact

- Dr. David B. Smith (CUNY) - [contact information]
- Dr. Frederick W. Bianchi (WPI) - [contact information]

## Repository Usage
This repository serves as:
- A **documentation hub** for research findings, code, and simulation assets.
- A **version-controlled environment** for collaborative development.
- A record of **sound object libraries, DSP algorithms, and evaluation reports** generated during the project.
EOF

    # Create .gitignore
    cat > .gitignore << 'EOF'
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*$py.class

# C extensions
*.so

# Distribution / packaging
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
pip-wheel-metadata/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
PIPFILE.lock

# PyInstaller
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
.cache
nosetests.xml
coverage.xml
*.cover
*.py,cover
.hypothesis/
.pytest_cache/

# Jupyter Notebook
.ipynb_checkpoints

# IPython
profile_default/
ipython_config.py

# pyenv
.python-version

# Environments
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/

# IDEs
.vscode/
.idea/
*.swp
*.swo
*~

# OS
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Data files (add specific patterns as needed)
# Small data files are OK, but exclude large audio assets
*.csv
*.xlsx
*.xls
*.h5
*.hdf5
*.pickle
*.pkl

# Large audio files - these should be stored externally
*.wav
*.aiff
*.flac
*.mp3
*.m4a
assets/samples/*.wav
assets/samples/*.aiff
assets/samples/*.flac

# Large files
*.zip
*.tar.gz
*.rar

# Model files
*.model
*.weights
*.h5
*.pb

# Logs
*.log
logs/

# Temporary files
tmp/
temp/
.tmp/

# Research-specific
data/raw/*
!data/raw/.gitkeep
data/processed/*
!data/processed/.gitkeep
results/models/*
!results/models/.gitkeep

# Configuration files with sensitive information
config/secrets.yml
config/credentials.json
*.key
*.pem
EOF

    # Create requirements.txt
    cat > requirements/requirements.txt << 'EOF'
# Core scientific computing
numpy>=1.21.0
pandas>=1.3.0
scipy>=1.7.0

# Audio processing and DSP
librosa>=0.9.0
soundfile>=0.10.0
pyaudio>=0.2.11
pydub>=0.25.0

# Real-time audio processing
rtmidi>=1.4.0
python-rtmidi>=1.4.0

# Visualization
matplotlib>=3.4.0
seaborn>=0.11.0
plotly>=5.0.0

# Machine Learning (for sound modeling)
scikit-learn>=1.0.0
tensorflow>=2.8.0

# Simulation and modeling
simpy>=4.0.0

# Jupyter
jupyter>=1.0.0
jupyterlab>=3.0.0

# Development tools
pytest>=6.0.0
black>=21.0.0
flake8>=3.9.0

# Audio analysis and feature extraction
essentia>=2.1b6.dev374
aubio>=0.4.9

# Configuration management
pyyaml>=6.0
configparser>=5.0.0

# Performance optimization
numba>=0.56.0
cython>=0.29.0
EOF

    # Create development requirements
    cat > requirements/requirements-dev.txt << 'EOF'
-r requirements.txt

# Development tools
pytest-cov>=2.12.0
pre-commit>=2.15.0
sphinx>=4.0.0
sphinx-rtd-theme>=0.5.0

# Code quality
isort>=5.9.0
mypy>=0.910

# Testing
pytest-mock>=3.6.0
factory-boy>=3.2.0
EOF

    # Create placeholder files
    touch data/audio_samples/.gitkeep
    touch data/simulation_data/.gitkeep
    touch data/evaluation_results/.gitkeep
    touch results/sound_objects/.gitkeep
    touch results/models/.gitkeep
    touch results/reports/.gitkeep
    touch results/measurements/.gitkeep
    # Create asset catalog
    cat > assets/asset_catalog.json << 'EOF'
{
  "version": "1.0",
  "description": "AVMI-GVSC Sound System Asset Catalog",
  "storage_locations": {
    "local_small": "assets/samples/",
    "external_drive": "/Volumes/AVMI_Research/audio_assets/",
    "cloud_storage": "https://storage.wpi.edu/avmi-gvsc/",
    "institutional_nas": "//nas.wpi.edu/research/avmi-gvsc/"
  },
  "asset_categories": {
    "engine_sounds": {
      "location": "external_drive",
      "format": "48kHz/24bit WAV",
      "size_estimate": "2.5GB",
      "description": "Vehicle engine recordings at various RPMs"
    },
    "environmental": {
      "location": "external_drive", 
      "format": "48kHz/24bit WAV",
      "size_estimate": "1.8GB",
      "description": "Road noise, wind, ambient sounds"
    },
    "warning_signals": {
      "location": "local_small",
      "format": "48kHz/24bit WAV",
      "size_estimate": "50MB",
      "description": "Alert tones and warning sounds"
    },
    "synthesis_presets": {
      "location": "local_small",
      "format": "JSON/YAML",
      "size_estimate": "5MB",
      "description": "Synthesis parameter presets"
    }
  },
  "setup_instructions": {
    "external_drive": "Mount external drive to /Volumes/AVMI_Research/",
    "cloud_access": "Authenticate with institutional cloud storage",
    "nas_access": "Connect to institutional NAS via VPN"
  }
}
EOF

    # Create asset management README
    cat > assets/README.md << 'EOF'
# AVMI-GVSC Audio Assets Management

## Overview
This directory contains references and small assets for the sound system project. Large audio files are stored externally due to size constraints.

## Storage Strategy

### Local Repository (GitHub)
- ✅ Small reference files (< 10MB)
- ✅ Synthesis presets and configurations  
- ✅ Asset catalogs and indexes
- ✅ Documentation and metadata

### External Storage
- 🔊 Large audio samples and recordings
- 📊 Raw measurement data
- 🎛️ Large synthesis models
- 📹 Video documentation

## Asset Locations

### 1. Local Small Assets (`assets/samples/`)
```
warning_signals/     # Alert tones, beeps (small files OK)
presets/            # Synthesis parameter files
templates/          # Audio processing templates
```

### 2. External Drive (`/Volumes/AVMI_Research/`)
```
engine_samples/     # Vehicle engine recordings
environmental/      # Road noise, wind, ambient
measurements/       # Raw measurement data
reference_audio/    # High-quality reference materials
```

### 3. Institutional Storage
- WPI Network Attached Storage (NAS)
- Cloud storage with institutional access
- Backup and archival storage

## Setup Instructions

1. **Mount External Drive**: 
   ```bash
   # Ensure external drive is mounted to /Volumes/AVMI_Research/
   ```

2. **Update Asset Paths**:
   ```python
   # In your code, use asset catalog to resolve paths
   from src.utils.asset_manager import AssetManager
   assets = AssetManager('assets/asset_catalog.json')
   engine_path = assets.get_path('engine_sounds', 'v8_idle.wav')
   ```

3. **Cloud Storage Access**:
   - Authenticate with institutional credentials
   - Update `asset_catalog.json` with actual URLs

## Best Practices

- ✅ Always use asset catalog for path resolution
- ✅ Keep local repository under 100MB total
- ✅ Document all external dependencies
- ✅ Use relative paths in code
- ✅ Version control the catalog, not the assets

## Asset Naming Convention

```
category/subcategory/description_samplerate_bitdepth.format
examples:
- engine_sounds/v8/idle_2000rpm_48k_24bit.wav
- environmental/road/highway_60mph_48k_24bit.wav
- warning/interface/button_click_48k_24bit.wav
```
EOF
    
    # Create initial Python files
    cat > src/__init__.py << 'EOF'
"""
AVMI–GVSC Sound System Project Package
Sound System Modeling, Simulation, and Integration for Autonomous Systems Laboratory
"""

__version__ = "0.1.0"
__author__ = "AVMI Research Team"
__project__ = "AVMI–GVSC10-2024"
EOF

    cat > src/dsp_algorithms/__init__.py << 'EOF'
"""
Digital Signal Processing algorithms for real-time audio processing
"""
EOF

    cat > src/sound_synthesis/__init__.py << 'EOF'
"""
Hybrid sound synthesis modules combining sampling and acoustical modeling
"""
EOF

    cat > src/spatialization/__init__.py << 'EOF'
"""
Multi-channel audio spatialization for immersive environments
"""
EOF

    cat > src/integration/__init__.py << 'EOF'
"""
System integration modules for VI-Grade SimSound and AVMI ecosystem
"""
EOF

    # Create asset management utility
    cat > src/utils/__init__.py << 'EOF'
"""
Utility functions for AVMI-GVSC sound system research
"""
EOF

    cat > src/utils/asset_manager.py << 'EOF'
"""
Asset Manager for handling large audio files stored externally
"""

import json
import os
from pathlib import Path
from typing import Dict, Optional, Union


class AssetManager:
    """Manages paths to audio assets stored in various locations."""
    
    def __init__(self, catalog_path: str = "assets/asset_catalog.json"):
        """Initialize asset manager with catalog file."""
        self.catalog_path = Path(catalog_path)
        self.catalog = self._load_catalog()
        
    def _load_catalog(self) -> Dict:
        """Load asset catalog from JSON file."""
        try:
            with open(self.catalog_path, 'r') as f:
                return json.load(f)
        except FileNotFoundError:
            raise FileNotFoundError(f"Asset catalog not found: {self.catalog_path}")
    
    def get_storage_path(self, location_key: str) -> Path:
        """Get base path for a storage location."""
        locations = self.catalog.get("storage_locations", {})
        if location_key not in locations:
            raise ValueError(f"Unknown storage location: {location_key}")
        return Path(locations[location_key])
    
    def get_asset_path(self, category: str, filename: str) -> Path:
        """Get full path to an asset file."""
        categories = self.catalog.get("asset_categories", {})
        if category not in categories:
            raise ValueError(f"Unknown asset category: {category}")
            
        cat_info = categories[category]
        location = cat_info["location"]
        base_path = self.get_storage_path(location)
        
        return base_path / category / filename
    
    def asset_exists(self, category: str, filename: str) -> bool:
        """Check if an asset file exists."""
        try:
            asset_path = self.get_asset_path(category, filename)
            return asset_path.exists()
        except (ValueError, FileNotFoundError):
            return False
    
    def list_category_assets(self, category: str) -> list:
        """List all assets in a category."""
        try:
            categories = self.catalog.get("asset_categories", {})
            if category not in categories:
                return []
                
            cat_info = categories[category]
            location = cat_info["location"]
            base_path = self.get_storage_path(location)
            category_path = base_path / category
            
            if not category_path.exists():
                return []
                
            # Return list of files (not full paths for security)
            return [f.name for f in category_path.iterdir() if f.is_file()]
        except Exception:
            return []
    
    def get_category_info(self, category: str) -> Dict:
        """Get information about an asset category."""
        categories = self.catalog.get("asset_categories", {})
        return categories.get(category, {})
    
    def check_storage_availability(self) -> Dict[str, bool]:
        """Check which storage locations are currently available."""
        locations = self.catalog.get("storage_locations", {})
        availability = {}
        
        for name, path in locations.items():
            try:
                availability[name] = Path(path).exists()
            except Exception:
                availability[name] = False
                
        return availability


# Example usage
if __name__ == "__main__":
    # Initialize asset manager
    assets = AssetManager()
    
    # Check storage availability
    print("Storage availability:")
    for location, available in assets.check_storage_availability().items():
        status = "✅" if available else "❌"
        print(f"  {status} {location}")
    
    # Get asset path
    try:
        engine_path = assets.get_asset_path("engine_sounds", "v8_idle.wav")
        print(f"Engine sound path: {engine_path}")
        print(f"Exists: {assets.asset_exists('engine_sounds', 'v8_idle.wav')}")
    except ValueError as e:
        print(f"Error: {e}")
EOF

    # Create initial configuration
    cat > config/config.yaml << 'EOF'
# Configuration file for AVMI–GVSC Sound System Project

# Project settings
project:
  name: "AVMI–GVSC Sound System Project"
  version: "0.1.0"
  project_id: "AVMI–GVSC10-2024"

# Audio processing settings
audio:
  sample_rate: 48000
  buffer_size: 512
  bit_depth: 24
  channels: 8  # Multi-channel setup
  
# Real-time processing
realtime:
  max_latency_ms: 20
  processing_threads: 4
  priority: "high"

# Spatialization settings
spatialization:
  algorithm: "hrtf"  # Head-Related Transfer Function
  room_modeling: true
  distance_modeling: true
  doppler_effect: true

# Simulation integration
simulation:
  vi_grade_integration: true
  simSound_api: true
  update_rate_hz: 60
  sync_tolerance_ms: 5

# Sound object library
sound_objects:
  base_path: "assets/samples"  # Local path for small samples
  external_storage: "/Volumes/AVMI_Research/audio_assets"  # External drive
  cloud_storage: "https://storage.example.edu/avmi-gvsc"  # Cloud storage
  categories: ["engine", "environmental", "interface", "warning"]
  synthesis_modes: ["sample", "modeled", "hybrid"]
  
# Asset management
assets:
  # Local repository only contains small reference files
  local_samples_max_size: "10MB"
  # Large assets stored externally
  external_storage_path: "/Volumes/AVMI_Research/audio_assets"
  cloud_backup: true
  asset_catalog: "assets/asset_catalog.json"

# Evaluation settings
evaluation:
  subjective_testing: true
  objective_measurements: true
  hardware_in_loop: true
  metrics: ["latency", "fidelity", "immersion", "cpu_usage"]

# Output settings
output:
  audio_samples_dir: "data/audio_samples"
  simulation_data_dir: "data/simulation_data"
  evaluation_results_dir: "data/evaluation_results"
  sound_objects_dir: "results/sound_objects"
  models_dir: "results/models"
  reports_dir: "results/reports"
  measurements_dir: "results/measurements"
EOF

    # Create a simple example notebook
    cat > notebooks/analysis/01_audio_analysis.ipynb << 'EOF'
{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Audio Analysis for AVMI–GVSC Sound System Project\n",
    "\n",
    "This notebook provides a template for analyzing audio data in the context of sound system modeling and simulation."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "import numpy as np\n",
    "import pandas as pd\n",
    "import matplotlib.pyplot as plt\n",
    "import seaborn as sns\n",
    "import librosa\n",
    "import librosa.display\n",
    "import soundfile as sf\n",
    "\n",
    "# Set style\n",
    "plt.style.use('seaborn-v0_8')\n",
    "sns.set_palette(\"husl\")\n",
    "\n",
    "# Audio processing parameters\n",
    "SAMPLE_RATE = 48000\n",
    "HOP_LENGTH = 512\n",
    "N_FFT = 2048"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Load and Analyze Audio Data\n",
    "\n",
    "This section demonstrates basic audio loading and analysis techniques for the sound system project."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Example: Load audio file\n",
    "# audio_file = '../data/audio_samples/example_vehicle_sound.wav'\n",
    "# y, sr = librosa.load(audio_file, sr=SAMPLE_RATE)\n",
    "# \n",
    "# # Display basic information\n",
    "# print(f\"Sample rate: {sr} Hz\")\n",
    "# print(f\"Duration: {len(y)/sr:.2f} seconds\")\n",
    "# print(f\"Shape: {y.shape}\")"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Spectral Analysis\n",
    "\n",
    "Analyze the frequency content of audio signals for sound synthesis modeling."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Example: Spectral analysis\n",
    "# D = librosa.amplitude_to_db(np.abs(librosa.stft(y, hop_length=HOP_LENGTH, n_fft=N_FFT)), ref=np.max)\n",
    "# \n",
    "# plt.figure(figsize=(12, 8))\n",
    "# librosa.display.specshow(D, y_axis='hz', x_axis='time', sr=sr, hop_length=HOP_LENGTH)\n",
    "# plt.colorbar(format='%+2.0f dB')\n",
    "# plt.title('Spectrogram')\n",
    "# plt.tight_layout()\n",
    "# plt.show()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Real-Time Processing Simulation\n",
    "\n",
    "Test algorithms for real-time audio processing requirements."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Example: Real-time processing simulation\n",
    "# This would include latency measurements, buffer processing, etc.\n",
    "pass"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
EOF

    print_success "Initial project files created"
}

# Initialize git repository
initialize_git() {
    print_status "Initializing Git repository..."
    
    git init
    git add .
    git commit -m "Initial commit: Set up Autonomous Vehicle Mobility Research repository structure"
    
    print_success "Git repository initialized"
}

# Create GitHub repository
create_github_repo() {
    print_status "Creating GitHub repository..."
    
    # Create the repository on GitHub
    gh repo create "$GITHUB_USERNAME/$REPO_NAME" \
        --description "$REPO_DESCRIPTION" \
        --public \
        --clone=false \
        --add-readme=false
    
    # Add remote and push
    git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
    git branch -M main
    git push -u origin main
    
    print_success "GitHub repository created and code pushed!"
    echo ""
    echo "Repository URL: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
}

# Main execution
main() {
    echo ""
    echo "=========================================="
    echo "AVMI–GVSC Sound System Project Repo Setup"
    echo "=========================================="
    echo ""
    
    # Display configuration
    echo "Configuration:"
    echo "  Repository Name: $REPO_NAME"
    echo "  GitHub Username: $GITHUB_USERNAME"
    echo "  Local Directory: $LOCAL_DIR"
    echo "  Description: $REPO_DESCRIPTION"
    echo ""
    
    read -p "Do you want to proceed with this configuration? (y/N): " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_warning "Setup cancelled by user"
        exit 0
    fi
    
    check_prerequisites
    create_directory_structure
    create_initial_files
    initialize_git
    create_github_repo
    
    echo ""
    print_success "Repository setup complete!"
    echo ""
    echo "Next steps:"
    echo "1. Navigate to your repository: cd '$LOCAL_DIR'"
    echo "2. Create a virtual environment: python -m venv venv"
    echo "3. Activate the environment: source venv/bin/activate"
    echo "4. Install dependencies: pip install -r requirements/requirements.txt"
    echo "5. Start working on your sound system modeling and simulation research!"
    echo "6. Refer to docs/technical/ for detailed technical specifications"
    echo "7. Use config/config.yaml to adjust audio processing parameters"
    echo ""
}

# Run the script
main "$@"