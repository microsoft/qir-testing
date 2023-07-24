namespace Tests.Common {

    open Microsoft.Quantum.Intrinsic;

    // Demonstrates use of integers.
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

        let positiveMultiplication = sum * 3;
        let negativeMultiplication = substraction * 3;
        let doubleNegativeMultiplication = substraction * -3;
        let exactDivision = doubleNegativeMultiplication / 6;
        let inexactDivision = sum / 2;
        return (
            sum == 5,
            substraction == -10,
            positiveMultiplication == 15,
            negativeMultiplication == -30,
            doubleNegativeMultiplication == 30,
            exactDivision == 5,
            inexactDivision == 2);
    }
}