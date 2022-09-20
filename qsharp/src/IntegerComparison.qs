namespace Tests.Common.L3 {
    open Microsoft.Quantum.Intrinsic;

    // Demonstrates use of integer comparisons.
    // Expected output: (true, false, true)
    @EntryPoint()
    operation IntegerComparison() : (Bool, Bool, Bool) {
        mutable count = 0;
        use q = Qubit();
        for _ in 1..50 {
            X(q);
            if M(q) == One {
                X(q);
                set count += 1;
            }
        }
        return (count > 25, count < 25, count == 50);
    }

}
