
#define A(i,j) (array[(i)*nx + (j)])

void gauss_iterate(int nx, int ny, double *array, int iterations) {
    for(int k=0; k<iterations; k++) {
        for(int i=1; i<nx-1; i++) {
            for(int j=1; j<ny-1; j++) {
                A(i,j) = (A(i-1,j) + A(i+1,j) + A(i,j-1) + A(i,j+1)) / 4;
            }
        }
    }
}
