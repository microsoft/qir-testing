namespace Test {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Main() : (Result, Result) {
        use left = Qubit();
        use right = Qubit();

        H(left);
        CNOT(left, right);

        return (MResetZ(left), MResetZ(right));
    }
}
