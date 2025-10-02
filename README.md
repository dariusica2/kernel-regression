# Kernel Regression (Kernel Methods for Machine Learning)

A MATLAB implementation of kernel-based machine learning methods for regression and classification tasks.

## Project Structure

The project contains the following core functions:

### Kernel Functions
- *linear_kernel.m* - Linear kernel implementation
- *polynomial_kernel.m* - Polynomial kernel function
- *gaussian_kernel.m* - Gaussian (RBF) kernel function

### Core Algorithms
- *build_kernel.m* - Constructs the kernel matrix from input data
- *get_prediction_params.m* - Computes prediction parameters using non-iterative methods (Cholesky decomposition)
- *get_prediction_params_iterative.m* - Computes prediction parameters using iterative methods (Conjugate Gradient)
- *eval_value.m* - Predicts values for new input vectors using trained model

### Numerical Methods
- *cholesky.m* - Cholesky decomposition for positive definite matrices
- *conjugate_gradient.m* - Conjugate gradient method for solving linear systems
- *get_lower_inverse.m* - Matrix inversion for lower triangular matrices

### Utilities
- *split_dataset.m* - Splits dataset into training and testing sets

## Usage

1. **Prepare your data** in matrix *X* (features) and vector *y* (target values)
2. **Split the dataset** using `split_dataset(X, y, percentage)`
3. **Choose a kernel function** (linear, polynomial, or Gaussian)
4. **Build the kernel matrix** with `build_kernel(X_train, kernel_function, parameters)`
5. **Compute prediction parameters** using either:
   - Non-iterative: `get_prediction_params(K, y_train, lambda)`
   - Iterative: `get_prediction_params_iterative(K, y_train, lambda)`
6. **Make predictions** with `eval_value(x_new, X_train, kernel_function, parameters, a)`