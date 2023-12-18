NAME = libft.a
SRCS = ft_isalpha.c  ft_isdigit.c  ft_isalnum.c  ft_isascii.c  ft_isprint.c  ft_strlen.c  ft_memset.c  ft_bzero.c  ft_memcpy.c  ft_memmove.c  ft_strlcpy.c  ft_strlcat.c  ft_toupper.c  ft_tolower.c  ft_strchr.c  ft_strrchr.c  ft_strncmp.c  ft_memchr.c  ft_memcmp.c  ft_strnstr.c  ft_atoi.c  ft_calloc.c  ft_strdup.c  ft_substr.c  ft_strjoin.c  ft_strtrim.c  ft_split.c  ft_itoa.c  ft_strmapi.c  ft_striteri.c  ft_putchar_fd.c  ft_putstr_fd.c  ft_putendl_fd.c  ft_putnbr_fd.c
OBJS = ${SRCS:.c=.o}
BONUS = ft_lstnew.c  ft_lstadd_front.c  ft_lstsize.c  ft_lstlast.c  ft_lstadd_back.c  ft_lstdelone.c  ft_lstclear.c  ft_lstiter.c  ft_lstmap.c
BONUS_OBJS = ${BONUS:.c=.o}
CC = cc
#CFLAGS = -Wall -Wextra -Werror
CFLAGS = -Wall -Wextra -Werror -fsanitize=address

ifdef WITH_BONUS
	SRCS += $(BONUS)
	OBJS += $(BONUS_OBJS)
endif

.c.o:
	@printf "$(DEFAULT)-l $(SKY)Generating libft objects... %-33.33s\r$(DEFAULT)" $@
	@${CC} ${CFLAGS} -o $@ -c $<

${NAME}: ${OBJS}
	@echo "\n"
	@ar -rcs ${NAME} ${OBJS}
	@echo -l "$(GREEN)libft created!\n$(DEFAULT)"

all: ${NAME}

clean:
	@rm -f ${OBJS}
	@echo -l "$(YELLOW)libft object files deleted!\n$(DEFAULT)"

fclean: clean
	@rm -f ${NAME}
	@echo -l "$(RED)libft all deleted!\n$(DEFAULT)"

re: fclean ${NAME}

bonus:
	make WITH_BONUS=1 ${NAME}

#COLORS
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
SKY = \033[1;36m
DEFAULT = \033[0m