from snake_game import SnakeGame
import pygame
import time
import random

rand = random.Random()

class SnakeGameGUI(SnakeGame):
    
    def __init__(self, headless_mode = False):
        super().__init__()
        self.BLUE = (0, 0, 255)
        self.BLUE2 = (0, 100, 255)
        self.BLACK = (0, 0, 0)
        self.RED = (200, 0, 0)
        self.SQUARESIZE = 20
        self.WIDTH = 640
        self.HEIGHT = 480
        self.SIZE = (self.WIDTH, self.HEIGHT)

        if headless_mode == False:
            self.SCREEN = pygame.display.set_mode(self.SIZE)
            pygame.init()

    def draw_board(self):
        myfont = pygame.font.SysFont("/Users/kenny/Desktop/Base-Model/arial.ttf", 50)
        self.SCREEN.fill(self.BLACK)
        for i in range(self.height):
            for j in range(self.width):
                # check for head, body, food
                if self.board[i, j] == 1:
                    loc_size = (j*self.SQUARESIZE, i*self.SQUARESIZE, self.SQUARESIZE, self.SQUARESIZE)
                    loc_size2 = (j*self.SQUARESIZE+4, i*self.SQUARESIZE+4, self.SQUARESIZE-7, self.SQUARESIZE-7)
                    
                    pygame.draw.rect(self.SCREEN, self.BLUE, loc_size)
                    pygame.draw.rect(self.SCREEN, self.BLUE2, loc_size2)

                elif self.board[i, j] == 2:
                    loc_size = (j*self.SQUARESIZE, i*self.SQUARESIZE, self.SQUARESIZE, self.SQUARESIZE)
                    loc_size2 = (j*self.SQUARESIZE+4, i*self.SQUARESIZE+4, self.SQUARESIZE-7, self.SQUARESIZE-7)

                    pygame.draw.rect(self.SCREEN, self.BLUE, loc_size)
                    pygame.draw.rect(self.SCREEN, self.BLUE2, loc_size2)
                elif self.board[i, j] == -1:
                    loc = (j*self.SQUARESIZE, i*self.SQUARESIZE, self.SQUARESIZE, self.SQUARESIZE)
                    
                    pygame.draw.rect(self.SCREEN, self.RED, loc)
        
        label = myfont.render(f"Score: {self.score}", 1, self.BLUE2)
        self.SCREEN.blit(label, (self.WIDTH + 10,10))
        loc_size = (self.WIDTH, 0, 3, self.HEIGHT)
        pygame.draw.rect(self.SCREEN, (255, 255, 255), loc_size)
        pygame.display.update()

    def run_game(self, player_ai = None):
        update_rate = 3 
        fps = 60
        counter = 0
        vel = self.vel
        myfont = pygame.font.SysFont("/Users/kenny/Desktop/Base-Model/arial.ttf", 65)
        self.draw_board()
        pygame.display.update()

        exit_flag = False
        while exit_flag == False and self.game_state == True:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    exit_flag = True

                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_UP:
                        vel = [-1, 0]
                    elif event.key == pygame.K_DOWN:
                        vel = [1, 0]
                    elif event.key == pygame.K_LEFT:
                        vel = [0, -1]
                    elif event.key == pygame.K_RIGHT:
                        vel = [0, 1]
                    else:
                        vel = self.vel
            
            time.sleep(1.0/fps)
            counter += 1
            if counter >= update_rate:
                self.update_vel(vel)
                self.update_state()
                counter = 0
            self.draw_board()
            pygame.display.update()

        label = myfont.render(f"Game Over!", 1, self.RED)
        self.SCREEN.blit(label, (self.WIDTH + 10, 50))
        pygame.display.update()


        while exit_flag == False:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    exit_flag = True
        pygame.quit()


def main():
    my_game = SnakeGameGUI()
    my_game.run_game()

if __name__ == "__main__":
    main()