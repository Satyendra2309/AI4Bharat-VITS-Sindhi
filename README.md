# Sindhi Speech Synthesis using VITS

This project implements a text-to-speech synthesis model for the Sindhi language using the VITS (Conditional Variational Autoencoder with Adversarial Learning) architecture. The model is trained on the AI4Bharat Sindhi dataset and includes WebSocket support for streaming WAV to FLAC audio conversion.

## Features
- Sindhi language text-to-speech synthesis
- WebSocket-based audio streaming
- WAV to FLAC conversion support
- Trained on clean, non-news dataset
- Real-time audio generation capabilities

## Setup Instructions

### Prerequisites
- Python 3.8+
- CUDA compatible GPU (for training)
- Git

### Installation
1. Clone the repository:
```bash
git clone https://github.com/yourusername/sindhi-vits.git
cd sindhi-vits
```

2. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

### Data Preparation
1. Download the Sindhi dataset files:
   - v1a_Sindhi_test.tgz
   - v1a_Sindhi_valid.tgz

2. Extract the files:
```bash
tar -xzf v1a_Sindhi_test.tgz
tar -xzf v1a_Sindhi_valid.tgz
```

3. Run the data preparation notebook:
   - Open `notebooks/01_data_preparation.ipynb` in Google Colab
   - Follow the instructions in the notebook

### Training
1. Configure the model:
   - Review and modify `configs/sindhi_config.json` as needed
   - Adjust hyperparameters based on your requirements

2. Start training:
   - Open `notebooks/02_model_training.ipynb` in Google Colab
   - Follow the training instructions

### Inference and Testing
1. Run the inference notebook:
   - Open `notebooks/03_inference_testing.ipynb` in Google Colab
   - Test the model with sample text inputs

### WebSocket Server
1. Start the WebSocket server:
```bash
python src/websocket/server.py
```

2. Connect to the WebSocket endpoint:
```
ws://localhost:8765
```

## Usage Examples

### Python Client
```python
import websockets
import asyncio

async def send_audio():
    uri = "ws://localhost:8765"
    async with websockets.connect(uri) as websocket:
        with open("input.wav", "rb") as f:
            audio_data = f.read()
            await websocket.send(audio_data)
            flac_data = await websocket.recv()
            with open("output.flac", "wb") as f:
                f.write(flac_data)

asyncio.get_event_loop().run_until_complete(send_audio())
```

## Model Architecture
The VITS model architecture includes:
- Conditional Variational Autoencoder
- Flow-based decoder
- Multi-period discriminator
- HiFi-GAN vocoder

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
- AI4Bharat for providing the Sindhi dataset
- VITS paper authors and implementation