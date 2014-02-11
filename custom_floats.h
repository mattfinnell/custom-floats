#ifndef _CUSTOM_FLOAT_H_
#define _CUSTOM_FLOAT_H_

double 	mantissa		(unsigned val, int mantissa_length);
double 	exponent		(unsigned val, int n, int mantissa_length);
double 	sign			(unsigned val, int n);
int 	is_normalized	(unsigned val, int n, int mantissa_length);
double	customFloat		(unsigned binary, int length, int mantissa_length);

#endif
