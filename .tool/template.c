\import name.variable

#include <stdlib.h>	// free()
#include "\(lowercase name).h"
#include "lmt_c_library.h"	// lmt_alloc()

static t_\(lowercase name)	*\(lowercase name)_alloc(void)
{
	return (lmt_alloc(sizeof(t_\(lowercase name))));
}

static void	\(lowercase name)_init(t_\(lowercase name) *\(lowercase name))
{
	//	Compose init code here..
}

t_\(lowercase name)	*\(lowercase name)_new(void)
{
	t_\(lowercase name)	*\(lowercase name);

	\(lowercase name) = \(lowercase name)_alloc();
	\(lowercase name)_init(\(lowercase name));
	return (\(lowercase name));
}

void	\(lowercase name)_free(t_\(lowercase name) *\(lowercase name))
{
	//	Compose free code here..
	free(\(lowercase name));
}
