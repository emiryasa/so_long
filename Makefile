NAME = so_long
CC = gcc
LIBFTDIR = libft
LIBFT = $(LIBFTDIR)/libft.a
# MLXDIR = minilibx
# MLX = $(MLXDIR)/libmlx.a
SRCS = map.c so_long.c
OBJS := $(SRCS:.c=.o)
FLAGS = -Wall -Wextra -Werror
# FRAMEWORKS = -framework OpenGL -framework AppKit

all: $(NAME)

$(NAME): $(OBJS) $(LIBFTDIR) 
	make -C $(LIBFTDIR) 
	$(CC) -g $(FLAGS) $(OBJS) $(LIBFT)  -o $(NAME)

clean: 
	rm -rf $(OBJS)
	make clean -C $(LIBFTDIR)

fclean: clean
	rm -rf $(NAME)
	make fclean -C $(LIBFTDIR)

re: fclean all

.PHONY: all clean fclean re
