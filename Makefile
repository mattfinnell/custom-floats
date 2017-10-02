CC=cc
DEPS= custom_floats.c main.c 

floats: $(DEPS)
	@ $(CC) -g $? -o $@
