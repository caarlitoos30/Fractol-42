# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: calguaci <calguaci@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/08 18:37:00 by calguaci          #+#    #+#              #
#    Updated: 2025/01/08 20:01:48 by calguaci         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	fractol

CC = cc
CFLAGS	=	-Wall -Wextra -Werror
STRUCT	= 	-Lminilibx-linux -lmlx_Linux -lX11 -lXext -o fractol
SRCS	=	render.c \
			math_utils.c \
			init.c \
			events.c \
			main.c \
			string_utils.c \

OBJS	=	${SRCS:.c=.o}

all: $(NAME)

$(NAME): $(UTILS) $(OBJS)
	$(CC) $(CFLAGS) $(OBJS)  -o $(NAME) $(STRUCT) -I ./fractol.h

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re