\import name.variable

#ifndef \(uppercase name)_H
# define \(uppercase name)_H

typedef struct s_\(lowercase name)
{
	//	Compose member here..
}	t_\(lowercase name);

t_\(lowercase name)	*\(lowercase name)_new(void);
void	\(lowercase name)_free(t_\(lowercase name) *\(lowercase name));

#endif
