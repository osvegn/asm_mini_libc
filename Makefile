
NAME	=	libmini_libc.so

TEST_NAME	=	test

SRC		=	sources/strlen.s \
			sources/strchr.s \
			sources/memset.s \
			sources/memcpy.s \
			sources/strcmp.s \

RM		=	rm -fr

AS		=	nasm
ASFLAGS	=	-f elf64

OBJ		=	$(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ld -shared -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(TEST_NAME)

re: fclean all

run_tests: re
	gcc -o $(TEST_NAME) tests/main.c -L. -lmini_libc -I ./include
	export LD_LIBRARY_PATH=. && ./$(TEST_NAME)
