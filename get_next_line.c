/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eldiaz-c <eldiaz-c@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/06 21:43:20 by eldiaz-c          #+#    #+#             */
/*   Updated: 2024/11/06 21:59:48 by eldiaz-c         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

char	*get_next_line(int fd)
{
	char	*line;
	char	*buffer;

	buffer = NULL;
	if (fd < 0)
		return (NULL);
	buffer = fill_buffer();
	if (!buffer)
		return (NULL);
	if (!*buffer)
	{
		free (buffer);
		buffer = NULL;
		return (NULL);
	}
	line = extract_line_from_buffer();
	remove_line_from_buffer();
	return (line);
}
