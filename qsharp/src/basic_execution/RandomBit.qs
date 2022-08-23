namespace Tests.BasicExecution {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation RandomBit() : Result {
        use q = Qubit();
        H(q);
        return M(q);
    }
}
