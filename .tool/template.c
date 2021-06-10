\import name.variable

#include "t_\(lowercase name).h"
#include "util.h"

t_\(lowercase name)	*alloc_\(lowercase name)(void)
{
	t_\(lowercase name)	*p_\(lowercase name);

	p_\(lowercase name) = lmt_alloc(sizeof(t_\(lowercase name)));
	return (p_\(lowercase name));
}

void	init_\(lowercase name)(t_\(lowercase name) *p_\(lowercase name))
{
	// Compose init code here..
}

t_\(lowercase name)	*new_\(lowercase name)
{
	t_\(lowercase name)	*p_\(lowercase name);

	p_\(lowercase name) = alloc_\(lowercase name)();
	init_\(lowercase name)(p_\(lowercase name));
	return (p_\(lowercase name));
}

void	free_\(lowercase name)(t_\(lowercase name) *p_\(lowercase name))
{
	// Compose free code here..
	free(p_\(lowercase name));
}
