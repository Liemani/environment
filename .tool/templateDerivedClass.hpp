\import name.variable

#ifndef \(uppercase name)_HPP
#define \(uppercase name)_HPP

#include "\(base class name).hpp"

class \(class name): public \(base class name) {
private:
protected:
	\(class name)& initUnique(/* argument list */);
public:
	\(class name)(void);
	\(class name)(const \(class name)& \(instance name));
	\(class name)& operator=(const \(class name)& rhs);
	~\(class name)(void);
};

#endif
