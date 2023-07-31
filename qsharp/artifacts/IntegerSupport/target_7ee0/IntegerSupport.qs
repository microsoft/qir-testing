namespace Tests.Common {

    open Microsoft.Quantum.Intrinsic;

    // Demonstrates use of integers.
    // Expected result: (true, true, true, true, true, true, true)
    @EntryPoint()
    operation IntegerSupport() : (Bool, Bool, Bool, Bool, Bool, Bool, Bool) {
        mutable sum = 0;
        mutable substraction = 0;
        use q = Qubit();
        for _ in 1..5 {
            X(q);
            if M(q) == One {
                set sum += 1;
                set substraction -= 2;
            }
        }
        Reset(q);

        let positiveMultiplication = sum * 3;
        let negativeMultiplication = substraction * 3;
        let doubleNegativeMultiplication = substraction * -3;
        let exactDivision = doubleNegativeMultiplication / 6;
        let inexactDivision = doubleNegativeMultiplication / 5;
        return (
            sum == 3,
            substraction == -6,
            positiveMultiplication == 9,
            negativeMultiplication == -18,
            doubleNegativeMultiplication == 18,
            exactDivision == 3,
            inexactDivision == 3);
    }
}