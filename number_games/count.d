//start of d file
import std.file;
import std.stdio;
import std.path;
import std.conv;

int[10] fib;
int[] getArray() {

    int a = 0;
    for (int i=0; i < 10; i++) {
        if (i > 0){
            fib[i] = fib[i-1] + a;
            a = fib[i-1];
        } else {
            fib[i] = a + 1;
            a = fib[i];
        }
        // a = fib[i]; 
        
        }
    return fib;
}


void main() {

    auto arr = getArray();
    foreach (e; 0..10) {
        writeln("fib value: " ~ to!string(arr[e]));
    }



// writeln("hello world, we are going to read from file");
// string fibPath = relativePath("../fib.txt");
// auto fib = read(fibPath);
// writeln(fib);
}


