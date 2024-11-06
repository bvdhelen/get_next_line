# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eldiaz-c <eldiaz-c@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/06 21:43:46 by eldiaz-c          #+#    #+#              #
#    Updated: 2024/11/06 21:55:39 by eldiaz-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Nombre del archivo de la biblioteca
NAME = get_next_line.a

# Compilador y banderas de compilacion
CC = cc
CFLAGS = -Wall -Werror -Wextra

# Archivos fuente y archivos objeto
SOURCES = get_next_line.c get_next_line_utils.c

OBJECTS = $(SOURCES:.c=.o)

# Archivo de encabezado
INCLUDE = get_next_line.h

# Regla por defecto que lo compila todo
all: $(NAME)

# Regla para crear la biblioteca
$(NAME): $(OBJECTS) $(INCLUDE)
		@ar rcs $(NAME) $(OBJECTS)

# Regla para crear los archivos .o
$(OBJECTS):
		$(CC) -c $(CFLAGS) $(SOURCES)

# Eliminar todos los archivos .o y .a
clean:
		@rm -f $(OBJECTS)

fclean: clean
		@rm -f $(NAME)

re: fclean $(NAME)

# Indica que las siguientes reglas no son archivos reales
.PHONY: all clean fclean re
