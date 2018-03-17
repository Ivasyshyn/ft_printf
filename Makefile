#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sivasysh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/26 16:14:29 by sivasysh          #+#    #+#              #
#    Updated: 2017/11/12 22:47:42 by sivasysh         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

SWITCH =		\033[
STYLE_NORMAL =	$(SWITCH)0m
STYLE_BOLD =	$(SWITCH)1m
COLOR_YELLOW =	$(SWITCH)93m
COLOR_GREEN = 	$(SWITCH)32m
COLOR_RED =		$(SWITCH)31m

NAME =			libftprintf.a
FLAGS =			-Wall -Wextra -Werror

SRC_PRINTF =	printf/ft_printf.c\
                printf/digit_format_apply.c\
                printf/context_manager.c\
                printf/get_context_due_to_size_specification.c\
                printf/decimal_to_octal_and_hex.c\
                printf/get_flags_field_precision.c\
                printf/unicode_handler.c\
                printf/string_format_apply.c\
                printf/double_format_apply.c\
                libft/ft_memset.c \
                libft/ft_bzero.c \
                libft/ft_memcpy.c \
                libft/ft_memccpy.c \
                libft/ft_memmove.c \
                libft/ft_memchr.c \
                libft/ft_memcmp.c \
                libft/ft_strlen.c \
                libft/ft_strdup.c \
                libft/ft_strcpy.c \
                libft/ft_strncpy.c \
                libft/ft_strcat.c \
                libft/ft_strncat.c \
                libft/ft_strlcat.c \
                libft/ft_strchr.c \
                libft/ft_strrchr.c \
                libft/ft_strstr.c \
                libft/ft_strnstr.c \
                libft/ft_strcmp.c \
                libft/ft_strncmp.c \
                libft/ft_atoi.c \
                libft/ft_atoi_skip.c \
                libft/ft_atoi_long.c \
                libft/ft_isalpha.c \
                libft/ft_isdigit.c \
                libft/ft_isalnum.c \
                libft/ft_isascii.c \
                libft/ft_isprint.c \
                libft/ft_toupper.c \
                libft/ft_tolower.c \
                libft/ft_memalloc.c \
                libft/ft_memdel.c \
                libft/ft_strnew.c \
                libft/ft_strdel.c \
                libft/ft_strclr.c \
                libft/ft_striter.c \
                libft/ft_striteri.c \
                libft/ft_strmap.c \
                libft/ft_strmapi.c \
                libft/ft_strequ.c \
                libft/ft_strnequ.c \
                libft/ft_strsub.c \
                libft/ft_strjoin.c \
                libft/ft_strjoin_modified.c \
                libft/ft_strtrim.c \
                libft/ft_strsplit.c \
                libft/ft_itoa.c \
                libft/ft_itoa_long.c \
                libft/ft_putchar.c \
                libft/ft_putstr.c \
                libft/ft_putstr_mod.c \
                libft/ft_putendl.c \
                libft/ft_putnbr.c \
                libft/ft_putchar_fd.c \
                libft/ft_putstr_fd.c \
                libft/ft_putendl_fd.c \
                libft/ft_putnbr_fd.c \
                libft/ft_lstnew.c \
                libft/ft_lstdelone.c \
                libft/ft_lstdel.c \
                libft/ft_lstadd.c \
                libft/ft_lstiter.c \
                libft/ft_lstmap.c \
                libft/ft_ch_in_nb.c \
                libft/ft_ch_in_nb_long.c \
                libft/ft_eval_expr.c \
                libft/ft_str_no_spaces.c \
                libft/ft_find_spaces.c \
                libft/ft_lst_add_last.c \
                libft/ft_itoa_unsigned.c \
                libft/ft_itoa_double.c \
                libft/ft_memdel_args.c \
                libft/ft_zero_initializer.c

OBJ_FILES =		$(SRC_PRINTF:.c=.o)

all: $(NAME)

$(NAME): $(OBJ_FILES)
	@echo "$(STYLE_BOLD)$(COLOR_GREEN)$(NAME) has been made.$(STYLE_NORMAL)"
	@ar rc $(NAME) $(OBJ_FILES)
	@ranlib $(NAME)
	
%.o : %.c
	@echo "$(STYLE_BOLD)$(COLOR_YELLOW)$< has been compiled.$(STYLE_NORMAL)"
	@gcc $(FLAGS) -c $< -o $@

clean:
	@echo "$(STYLE_BOLD)$(COLOR_RED)All the object files have been deleted.$(STYLE_NORMAL)"
	@rm -f $(OBJ_FILES)

fclean: clean
	@echo "$(STYLE_BOLD)$(COLOR_RED)$(NAME) has been deleted.$(STYLE_NORMAL)"
	@rm -f $(NAME)
	@rm -f libft.a
	
re: fclean all

.PHONY: all clean fclean re