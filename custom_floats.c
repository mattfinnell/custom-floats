/*				Custom Floating point Calculator
 * 
 * Written By	Matt Finnell
 *              Western Washington University : Computer Science
 *              Sunday February 4th - 2014 [seahawks won the superbowl today]
 *
 * A simple calculator that allows a user to dictate the size of a particular 
 * floating point value by also specifying the mantissa / exponent feild 
 * lengths. It breaks down each seciton of a floating point value. The mantissa,
 * exponent, and sign.
 *
 * ---------------------------------------------------------------------------
 * ---------------------------------------------------------------------------
 *
 * function mantissa: extracts mantissa value from binary representation
 *
 * funciton exponent: extracts exponent value from binary representation
 *      -also handles, NAN, INF, and ZERO values.
 *
 * function sign : extracts sign vlaue from binary representation. 
 * 
 * function is_normalized : returns true if a value is deemed as "normalized"
 *
 * function customFloat : combines the values from the above said functions
 *      and compensates for normalized / denormalized values
 */

#include <stdio.h>
#include <math.h>
#include <string.h>

/* (double) mantissa
 *	    extracts the decimal floating value from the binary representation
 *	    of the mantissa
 */
double mantissa(unsigned val, int mantissa_length){
    unsigned    mantissa_mask = ~(~0x0 << mantissa_length);
    unsigned    mantissa_bits = val & mantissa_mask; 
    float       mantissa_val  = 0;

    for(int i = 1; i <= mantissa_length; i++){
        if(mantissa_bits & 0x1){
            mantissa_val += (1/pow(2,mantissa_length - i + 1)); 
        }
        mantissa_bits >>= 1;
    }
    return mantissa_val;
}

/* (int) is_normalized
 *      checks the exponent value that is encoded in binary and returns
 *      if the exponent represents a normalized value or not.
 */
int is_normalized(unsigned val, int n, int mantissa_length){
    int         exp_length  = (n - mantissa_length - 1);
    unsigned    exp_mask    = ~(~0x0 << exp_length);
    unsigned    exp         = exp_mask & (val >> mantissa_length);

    if(exp == 0x0){
        return 0;
    } else {
        return 1;
    }
} 

/* (double) exponent
 *      extracts the decimal floating value of the exponent from the binary
 *      representation.
 */
double exponent(unsigned val, int n, int mantissa_length){
    int         exp_length  = (n - mantissa_length - 1);
    int         bias        = pow(2, exp_length -1) - 1;
    unsigned    inf_mask    = ~(~0x0 << exp_length);
    unsigned    _exponent   = inf_mask & (val >> mantissa_length);

    // Check for infiity or NAN values
    if(_exponent == inf_mask){
        if(mantissa(val,mantissa_length) != 0){
            // Return NaN
            return sqrt(-1);
        }
        // Return infinity
        return 1.0/0.0;
    }

    // Consider normalized and denormalized values
    int exp;
    if(is_normalized(val, n, mantissa_length)){
        exp = _exponent-bias;	
    } else {
        exp = 1 - bias;
    }

    /* Calculate Exponent against base 2
     *      -Ran into some problems when calculating pow(2, [negative])
     *      and would always return infinity (which isn't correct). I 
     *      instead had to do 1/pow(2, -[negative]) in order to correct
     *      for this bug.
     */
    if(_exponent == 0.0 && mantissa(val,mantissa_length) == 0.0){
        return 0;               //all zero	
    } else if (exp < 0 || _exponent == 0){
        return 1/pow(2, -exp);  //negative exponent
    } else {
        return pow(2,exp);      //positive exponent
    }
}

/* (double) sign
 *      extrats the decimal sign value that is encoded in the binary 
 *      representation
 */
double sign(unsigned val,int n){
    unsigned sign  = (val >> (n - 1)) & 0x1;

    if(sign == 0x1){
        return -1.0;
    } else {
        return 1.0;
    }
}

/* (double) customFloat
 *      combines all of the decimal values calculated from the sign, 
 *      mantissa and exponent and returns the representable value of
 *      the given binary with particular dimensions.
 */
double customFloat(unsigned binary, int length, int mantissa_length){
    double exponent_val = exponent(binary, length, mantissa_length);
    double mantissa_val = mantissa(binary, mantissa_length);
    double sign_val	    = sign(binary, length);
    double _inf	        = 1.0/0.0;
    double _nan	        = sqrt(-1);

    if(exponent_val != 0.0 || exponent_val != _inf || exponent_val != _nan){
        if (is_normalized(binary, length, mantissa_length))
            mantissa_val += 1.0;

        if(mantissa_val == 0.0)
            mantissa_val = 1.0;

        return sign_val * exponent_val * mantissa_val;	
    }
    return exponent_val;
}
