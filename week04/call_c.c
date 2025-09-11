int bar_c(int a) {
    int rv;
    rv = a + 1;
    return rv;
}

int foo_c(int a) {
    int rv;
    rv = bar_c(a) + 1;
    return rv;
}
