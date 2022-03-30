\import name.variable

#include "\(class name).hpp"

\(class name)::\(class name)(void) {
}

\(class name)::\(class name)(const \(class name)& \(instance name)) {
	*this = \(instance name);
}

\(class name)& \(class name)::operator=(const \(class name)& rhs) {
	if (this == &rhs)
		return *this;

	return *this;
}

\(class name)::~\(class name)(void) {
}
