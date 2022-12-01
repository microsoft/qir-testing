namespace Sample {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation QRNG() : (Result[]) {
        use qubits = Qubit[3];
        for q in qubits {
            H(q);
        }

        // N.B. This currently fails on QIR generation because of the measuerement operation being used.
        return MeasureEachZ(qubits);
    }
}