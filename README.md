# Improper Exception Handling in Asynchronous Dart

This repository demonstrates a common error in Dart: inadequate exception handling within asynchronous functions. The original code only prints the exception to the console, which is not ideal for production environments.

The `bug.dart` file showcases the flawed code.  The `bugSolution.dart` file provides a corrected version with more robust error handling, including logging and user-friendly error messages.

## How to run

1. Clone the repository.
2. Run the `bug.dart` file to see the basic exception handling.
3. Compare its behavior to the improved error handling in `bugSolution.dart`

## Learning Points

* Always handle exceptions gracefully in asynchronous operations.
* Avoid simply printing stack traces to the console in production code.
* Provide informative error messages to the user, suitable for their understanding (not the developer's).
* Consider using logging libraries for better error tracking.