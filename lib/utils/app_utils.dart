bool isDebugging = true;

void printDebug(value) {
  if (isDebugging) {
    print(value);
  }
}
