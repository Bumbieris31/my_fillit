NAME = fillit
SRCS = ft_fillit_magic_withstruct.c ft_place_tetri.c ft_remove_tetri.c ft_make_board.c ft_solve_funct.c

all: $(NAME)

$(NAME):
	gcc $(SRCS) -I . -L . -lft -g

clean:
	rm -f ./*.o