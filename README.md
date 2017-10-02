# Custom Floats

[IEEE 754 Floating Point](http://steve.hollasch.net/cgindex/coding/ieeefloat.html) values are bit-vectors that represent the reals via 3 distinct components. The sign bit, exponent bits, and mantissa (fraction) bits. Standard, IEEE 754 single floats are represented as 1 sign bit, 9 exponent bits, and 23 mantissa bits. Where as IEEE 754 double floats are represented with 1 sign bit, 11 exponent bits and 53 mantissa bits. This dinky little C program evaluates bitvectors that represent floating point values to however many exponent bits and mantissa bits you specify. I created this little tool for three reasons 

* To evaluate my understanding of complex floating point values for my CSCI 247 class
* Get comfortable with the C language and learn some bit shifting / bit manipulation
* I couldn't sleep so I needed to occupy myself with something something productive.

## Using this

Run the following in a shell

```
git clone https://github.com/mattfinnell/customFloats && make && ./floats
```

The main file constructs an 8 bit float vector (1 bit sign, 4 bits exponent, 3 bits mantissa) and evaluates 30 values against it. Ideally I would set these values to be user defined instead of hardcoded into the main file, but I have bigger things to take care of.
