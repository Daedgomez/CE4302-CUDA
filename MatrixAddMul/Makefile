NVCC = nvcc

all: MatrixAddMul

%.o : %.cu
	$(NVCC) -c $< -o $@

MatrixAddMul : MatrixAddMul.o
	$(NVCC) $^ -o $@

clean:
	rm -rf *.o *.a MatrixAddMul
