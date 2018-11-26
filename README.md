# FERAtt: Facial Expression Recognition with Attention Net
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)


<div>
<div align="center" >
<img src="rec/emo320x240.gif" width="420">
</div>
</div>


Intorduction
------------

Pytorch implementation for FERAtt neural net. Facial Expression Recognition with Attention Net (FERAtt), is based on the dual-branch architecture and consists of four major modules: (i) an attention module $G_{att}$ to extract the attention feature map, (ii) a feature extraction module $G_{ft}$ to obtain essential features from the input image $I$, (iii) a reconstruction module $G_{rec}$ to estimate a good attention image $I_{att}$, and (iv) a representation module $G_{rep}$ that is responsible for the representation and classification of the facial expression image.

<div align="center">
<img src="rec/feratt_arq.png" width="1024">
</div>


Installation
------------

    $git clone https://github.com/pedrodiamel/pytorchvision.git
    $cd pytorchvision
    $python setup.py install
    $pip install -r installation.txt

### Visualize result with Visdom

We now support Visdom for real-time loss visualization during training!

To use Visdom in the browser:

    # First install Python server and client 
    pip install visdom
    # Start the server (probably in a screen or tmux)
    python -m visdom.server -env_path runs/visdom/
    # http://localhost:8097/


How use
------------

### Step 1: Train

    ./train.sh
    
### Step 2: Eval

    ./eval.sh


