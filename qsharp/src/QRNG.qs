namespace Sample {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation QRNG() : (Result[]) {
        use qubits = Qubit[3];
        for q in qubits {
            H(q);
        }

        return MeasureEachZ(qubits);
    }
}