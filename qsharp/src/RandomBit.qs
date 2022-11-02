namespace Sample {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation RandomBit() : (Result) {
        use qubit = Qubit();
        H(qubit);
        return M(qubit);
    }
}