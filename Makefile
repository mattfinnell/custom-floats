CC= cc
DEPS= custom_floats.c main.c custom_floats.h
floats: $(DEPS)
	$(CC) $? -o $@
