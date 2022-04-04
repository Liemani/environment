\import name.variable

#include "\(class name).hpp"

\(class name)& \(class name)::initUnique(/* argument list */) {
	// copy \(instance name)'s unique member variable here..

	return *this;
}

\(class name)::\(class name)(void) {
	this->initUnique(/* argument list */);
}

\(class name)::\(class name)(const \(class name)& \(instance name)) {
	this->initUnique(/* argument list */);
}

\(class name)& \(class name)::operator=(const \(class name)& rhs) {
	if (this == &rhs)
		return *this;

	this->initUnique(/* argument list */);

	return *this;
}

\(class name)::~\(class name)(void) {
	// destruct \(instance name) here..
}
