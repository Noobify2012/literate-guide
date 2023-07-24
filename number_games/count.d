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

    writeln("10 Fib count");

    auto arr = getArray();
    foreach (e; 0..10) {
        writeln("fib value: " ~ to!string(arr[e]));
    }

    writeln("whats the size of the array? " ~ to!string(arr.length));

    writeln("How about a few slices.");

    int e = 0;
    while (e < 10) {
        writeln("\nIndex of E: " ~ to!string(e));
        foreach (f; e..10) {
            writeln("current index: " ~ to!string(f) ~ " current value: " ~ to!string(arr[f]));
        }
        e++;
    }



// writeln("hello world, we are going to read from file");
// string fibPath = relativePath("../fib.txt");
// auto fib = read(fibPath);
// writeln(fib);
}


