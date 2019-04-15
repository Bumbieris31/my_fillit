/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fillit.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abumbier <abumbier@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/05 22:16:10 by rlaros            #+#    #+#             */
/*   Updated: 2019/04/15 13:25:26 by abumbier         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FILLIT_H
# define FILLIT_H

// #include "../libft/includes/libft.h"

/*
** ERROR MESSAGES
*/
# define WRONG_USAGE "usage: ./fillit source_file\n"

typedef struct	s_tbox
{
	int		end;
	int		xy[2];
	int		tcount;
	int		tindex;
	char	**board;
	int		temp;
}				t_tbox;

int		ft_setup(int argc, char **argv);
void	ft_handle_error(int error_code);
char	**ft_make_board(t_tbox *tbox);
char	**incr_board(char **board);
void	ft_print_board(char **board);
int		ft_locate_tetri_space(int tetri[][6], t_tbox *tbox);
void	ft_put_tetri(int tetri[][6], t_tbox *tbox);
int		*ft_check_for_space(int tetri[][6], t_tbox *tbox);
int		ft_check_incr(char **board, int tetri_count);
t_tbox	*ft_make_tbox(int tetri_count);
void	ft_reset_board(t_tbox *tbox);
void	ft_remove_tetri(t_tbox *tbox);
int		ft_incr_condition(t_tbox *tbox);
char	**ft_dup_board(t_tbox *tbox);						// Not used
int		ft_find_coordinates(t_tbox *tbox);
void	ft_no_space(int tetri[][6], t_tbox *tbox);
void	ft_find_place(int tetri[][6], t_tbox *tbox);
void	ft_solve_loop(int tetri[][6], t_tbox *tbox);
int		ft_fillit_solve(int tetri[][6], t_tbox *tbox);

#endif
