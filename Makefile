NVCC = nvcc

all: MatrixMultiplication

%.o : %.cu
	$(NVCC) -c $< -o $@

MatrixMultiplication : MatrixMultiplication.o
	$(NVCC) $^ -o $@

clean:
	rm -rf *.o *.a MatrixMultiplication
