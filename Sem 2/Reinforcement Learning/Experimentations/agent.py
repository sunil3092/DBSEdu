# conda env export > environment.yml
# conda env create -f environment.yml
# conda env update -f environment.yml
import torch
import random
import numpy as np
from collections import deque
from snake_game import SnakeGameAI, Direction, Point

MAX_MEMORY = 100_000
BATCH_SIZE = 1000
LR = 0.001
