\import name.variable

#include <stdlib.h>
#include "t_\(lowercase name).h"
#include "lmt_util.h"

//	stdlib.h: free()

static t_\(lowercase name)	*\(lowercase name)_alloc(void)
{
	return (lmt_alloc(sizeof(t_\(lowercase name))));
}

static void	\(lowercase name)_init(t_\(lowercase name) *p_\(lowercase name))
{
	//	Compose init code here..
}

t_\(lowercase name)	*\(lowercase name)_new(void)
{
	t_\(lowercase name)	*p_\(lowercase name);

	p_\(lowercase name) = \(lowercase name)_alloc();
	\(lowercase name)_init(p_\(lowercase name));
	return (p_\(lowercase name));
}

void	\(lowercase name)_free(t_\(lowercase name) *p_\(lowercase name))
{
	//	Compose free code here..
	free(p_\(lowercase name));
}
