\import name.variable

#include "\(class name).hpp"

\(class name)& \(class name)::initUnique(/* argument list */) {
	// copy \(instance name)'s unique member variable here..

	return *this;
}

\(class name)::\(class name)(void)
: \(base class name)(/* argument list */) {
	this->initUnique(/* argument list */);
}

\(class name)::\(class name)(const \(class name)& \(instance name))
: \(base class name)(\(instance name)) {
	this->initUnique(/* argument list */);
}

\(class name)& \(class name)::operator=(const \(class name)& rhs) {
	if (this == &rhs)
		return *this;

	this->\(base class name)::operator=(rhs);
	this->initUnique(/* argument list */);

	return *this;
}

\(class name)::~\(class name)(void) {
	// destruct \(instance name) here..
}
