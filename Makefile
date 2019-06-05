# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: abumbier <abumbier@student.42.fr>            +#+                      #
#                                                    +#+                       #
#    Created: 2019/01/17 09:42:33 by lskrauci       #+#    #+#                 #
#    Updated: 2019/06/02 02:34:56 by rlaros        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME			= fillit

CC				= gcc
CFLAGS			= -Wall -Wextra -Werror
SRC = ./fillit-files/
SRCS = $(SRC)fillit.c $(SRC)ft_check_board_inc.c \
$(SRC)ft_check_index_inc.c $(SRC)ft_convert.c \
$(SRC)ft_find_coordinates.c $(SRC)ft_find_place.c \
$(SRC)ft_handle_error.c $(SRC)ft_inc_board.c \
$(SRC)ft_locate_tetri_space.c $(SRC)ft_make_board.c $(SRC)ft_make_tbox.c \
$(SRC)ft_no_space.c $(SRC)ft_print_board.c $(SRC)ft_put_tetri.c \
$(SRC)ft_remove_tetri.c $(SRC)ft_reset_board.c $(SRC)ft_save_and_validate.c \
$(SRC)ft_save_hash_positions.c $(SRC)ft_setup.c $(SRC)ft_solve_fillit.c \
$(SRC)ft_validate_line.c $(SRC)ft_validate_tetriminos.c

OBJS = $(subst .c,.o,$(subst $(SRC),,$(SRCS)))



all: $(NAME)

$(NAME): lib $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS) -L libft -lft

$(OBJS):
	$(CC) $(CFLAGS) -c $(SRCS) -I./ -Ilibft/

lib:
	make -C libft

clean:
	/bin/rm -rf $(OBJS)
	make -C libft clean

fclean: clean
	/bin/rm -rf $(NAME)
	make -C libft fclean

re: fclean all

.PHONY: clean fclean all re