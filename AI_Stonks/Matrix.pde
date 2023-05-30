static class Matrix {
     int M;             // number of rows
     int N;             // number of columns
     float[][] data;   // M-by-N array

    // create M-by-N matrix of 0's
    
   
    public Matrix(int M, int N) {
        this.M = M;
        this.N = N;
        data = new float[M][N];
    }
    public Matrix(int M){
        this.M = M;
        this.N = 1;
        data = new float[M][1];
    }
    // create matrix based on 2d array
    public Matrix(float[][] data) {
        M = data.length;
        N = data[0].length;
        this.data = new float[M][N];
        for (int i = 0; i < M; i++)
            for (int j = 0; j < N; j++)
                    this.data[i][j] = data[i][j];
    }
    // number of rows in a matrix
  public int getR(){
    return this.M;
  }
   // number of columns in a matrix
  public int getC(){
    return this.N;
  }
  
   // changes a singular value inside a matrix given a coordinate
   public void matrixSet(float t, int x, int y){
    if (x < 0 || y < 0 || x >= M || y >= N)
       throw new RuntimeException("Bad coordinates.");
     this.data[x][y] = t;
     return;
  }

  
  // returns a value at a given index of the matrix
  public float matrixGet(int x, int y){
    if (x < 0 || y < 0 || x >= M || y >= N)
       throw new RuntimeException("Bad coordinates.");
     return this.data[x][y];
  }
    // copy constructor
    private Matrix(Matrix A) { this(A.data); }

    // create and return a random M-by-N matrix with values between 0 and 1
    public static Matrix random1(int M, int N) {
        Matrix A = new Matrix(M, N);
        for (int i = 0; i < M; i++)
                A.data[i][i] = (float)Math.random();
        return A;
      }

    // create and return the N-by-N identity matrix
    public static Matrix identity(int N) {
        Matrix I = new Matrix(N, N);
        for (int i = 0; i < N; i++)
            I.data[i][i] = 1;
        return I;
    }
    
    // creates an all ones M by N matrix
    public static Matrix ones(int M, int N) {
        Matrix I = new Matrix(M, N);
        for (int i = 0; i < M; i++){
          for(int j = 0; j < N; j++){
            I.data[i][j] = 1;
            }
            }
        return I;
    }
    
    // swap rows i and j
    public void swap(int i, int j) {
        float[] temp = data[i];
        data[i] = data[j];
        data[j] = temp;
    }

    // create and return the transpose of the invoking matrix
    public Matrix transpose() {
        Matrix A = new Matrix(N, M);
        for (int i = 0; i < M; i++)
            for (int j = 0; j < N; j++)
                A.data[j][i] = this.data[i][j];
        return A;
    }

    // return C = A + B
    public Matrix plus(Matrix B) {
        Matrix A = this;
        if (B.M != A.M || B.N != A.N) throw new RuntimeException("Illegal matrix dimensions.");
        Matrix C = new Matrix(M, N);
        for (int i = 0; i < M; i++)
            for (int j = 0; j < N; j++)
                C.data[i][j] = A.data[i][j] + B.data[i][j];
        return C;
    }


    // return C = A - B
    public Matrix minus(Matrix B) {
        Matrix A = this;
        if (B.M != A.M || B.N != A.N) throw new RuntimeException("Illegal matrix dimensions.");
        Matrix C = new Matrix(M, N);
        for (int i = 0; i < M; i++)
            for (int j = 0; j < N; j++)
                C.data[i][j] = A.data[i][j] - B.data[i][j];
        return C;
    }

    // does A = B exactly?
    public boolean eq(Matrix B) {
        Matrix A = this;
        if (B.M != A.M || B.N != A.N) throw new RuntimeException("Illegal matrix dimensions.");
        for (int i = 0; i < M; i++)
            for (int j = 0; j < N; j++)
                if (A.data[i][j] != B.data[i][j]) return false;
        return true;
    }

    // return C = A * B
    public Matrix times(Matrix B) {
        Matrix A = this;
        if (A.N != B.M) throw new RuntimeException("Illegal matrix dimensions.");
        Matrix C = new Matrix(A.M, B.N);
        for (int i = 0; i < C.M; i++)
            for (int j = 0; j < C.N; j++)
                for (int k = 0; k < A.N; k++)
                    C.data[i][j] += (A.data[i][k] * B.data[k][j]);
        return C;
    }


    // return x = A^-1 b, assuming A is square and has full rank
    public Matrix solve(Matrix rhs) {
        //if (M != N || rhs.M != N || rhs.N != 1)
        if (M != N || rhs.M != N)
            throw new RuntimeException("Illegal matrix dimensions.");

        // create copies of the data
        Matrix A = new Matrix(this);
        Matrix b = new Matrix(rhs);

        // Gaussian elimination with partial pivoting
        for (int i = 0; i < N; i++) {

            // find pivot row and swap
            int max = i;
            for (int j = i + 1; j < N; j++)
                if (Math.abs(A.data[j][i]) > Math.abs(A.data[max][i]))
                    max = j;
            A.swap(i, max);
            b.swap(i, max);

            // singular
            if (A.data[i][i] == 0.0) throw new RuntimeException("Matrix is singular.");

            // pivot within b
            for (int j = i + 1; j < N; j++)
                b.data[j][0] -= b.data[i][0] * A.data[j][i] / A.data[i][i];

            // pivot within A
            for (int j = i + 1; j < N; j++) {
                float m = A.data[j][i] / A.data[i][i];
                for (int k = i+1; k < N; k++) {
                    A.data[j][k] -= A.data[i][k] * m;
                }
                A.data[j][i] = 0.0;
            }
        }

        // back substitution
        Matrix x = new Matrix(N, 1);
        for (int j = N - 1; j >= 0; j--) {
            float t = 0.0;
            for (int k = j + 1; k < N; k++)
                t += A.data[j][k] * x.data[k][0];
            x.data[j][0] = (b.data[j][0] - t) / A.data[j][j];
        }
        return x;

    }

    // raises matrix A to any integer exponent (can be negative if A is invertible)
   public Matrix exponent(Matrix A, int power){
     if (power == 0){
       return (identity(A.getR()));
     }
     if (power < 0){
       return exponent(solve(A), -1*power);
     }
     if (power == 1){
       return A;
     }
     return exponent(A.times(A), power - 1);
   }
    // returns a diagonal matrix with the diagonal entries as the eigenvalues
   public Matrix eigenvalues(Matrix A){
     if (M != N)
         throw new RuntimeException("Illegal matrix dimensions.");
     return A;
   }
   public Matrix times(float x){
      Matrix A = new Matrix(M, N);
      for (int i = 0; i<M; i++){
        for(int j = 0; j<N; j++){
           float t = this.data[i][j];
           A.matrixSet(x*t, i, j);
        }
      }
      return A;
   }
   public static Matrix cov(Matrix A){
     return (A.transpose().times(A)).times(1/A.getR());
   }
   // prints a matrix
   public void matrixPrint(){
      for (float[] row : data) {
        for (float element : row) {
            System.out.print("["+element + "]");
        }
        System.out.println();
    }
   }
   // your decision vector
  public static Matrix decision(Matrix A){
     A.matrixPrint();
     Matrix C = cov(A);
     C.matrixPrint();
     Matrix D = C.solve(identity(C.getR())).times(ones(C.getR(), 1));
     Matrix E = D.transpose().times(ones(C.getR(), 1));
     float F = 1/E.matrixGet(0,0);
     return D.times(F);
  }
}
