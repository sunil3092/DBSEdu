import torch
import random
import numpy as np
from collections import deque
from game import SnakeGameAI, Direction, Point


MAX_MEMORY = 100_000
BATCH_SIZE = 1000
LEARNING_RATE = 0.001


class Agent:

    def __init__(self):
        self.n_games = 0
        self.epsilon = 0  # Param to control randomness
        self.gamma = 0  # Discount Rate
        self.memory = deque(maxlen=MAX_MEMORY)  # popleft()
        # TODO: model, trainer

    def get_state(self, game):
        pass

    def remember(self, state, action, reward, next_state, done):
        pass

    def train_long_memory(self):
        pass

    def train_short_memory(self, state, action, reward, next_state, done):
        pass

    def get_action(self, state):
        pass


def train():
    plot_scores = []
    plot_mean_scores = []
    total_scores = 0
    record = 0
    agent = Agent()
    game = SnakeGameAI()
    while True:
        # Old State
        state_old = agent.get_state(game)

        # get move
        final_move = agent.get_action(state_old)

        # Perform move and get new state
        done, score, reward = game.play_step(final_move)
        state_new = agent.get_state(game)

        # train the short memory
        agent.train_short_memory(
            state=state_old, action=final_move, reward=reward, next_state=state_new, done=done)

        # rember
        agent.remember(state=state_old, action=final_move,
                       reward=reward, next_state=state_new, done=done)

        if done:
            # train the long memory, plot the results
            game.reset()
            agent.n_games += 1
            agent.train_long_memory()

            if score > record:
                record = score
                # agent.model.save()

            print('Game:', agent.n_games, 'Score:', score, "Record:", record)

            # TODO: plotting


if __name__ == '__main__':
    train()
