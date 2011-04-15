GLEW_INCLUDE = /opt/local/include
GLEW_LIB = /opt/local/lib

hello: main.o util.o
	gcc -o hello $^ -framework GLUT -framework OpenGL -L$(GLEW_LIB) -lGLEW

.c.o:
	gcc -c -o $@ $< -I$(GLEW_INCLUDE)

clean:
	rm hello main.o

