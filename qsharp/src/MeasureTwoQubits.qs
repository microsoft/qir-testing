namespace Test.Common {

    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation MeasureTwoQubits() : (Result, Result) {
        // The following using block allocates a pair of fresh qubits, which
        // start off in the |00〉 state by convention.
        use left = Qubit();
        use right = Qubit();

        // We can use the H operation again to prepare an equal superposition
        // of |00⟩, |01⟩, |10⟩, and |11⟩.
        H(left);
        H(right);

        // Now, we measure each qubit in Z-basis and immediately reset the qubits
        // to zero, using the standard library operation MResetZ.
        return (MResetZ(left), MResetZ(right));
    }
}
