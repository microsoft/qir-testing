namespace Test {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation Main() : Result {
        use q = Qubit();
        H(q);
        return M(q);
    }
}
