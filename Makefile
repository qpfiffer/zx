HFLAGS=-O3 -Wall
INCLUDES=-i./src/
NAME=zx

all: $(NAME)

clean:
	rm -f *.o
	rm -f $(NAME)


.PHONY: $(NAME)
$(NAME):
	ghc $(HFLAGS) --make $(INCLUDES) ./src/Main.hs -o $(NAME)
