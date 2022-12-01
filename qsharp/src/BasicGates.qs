namespace Tests.Common.L1 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    
    internal operation TestGates(q : Qubit) : Unit is Adj + Ctl {
        H(q);
        S(q);
        T(q);
        Rx(PI() / 7.0, q);
        Ry(PI() / 7.0, q);
        Rz(PI() / 7.0, q);
        X(q);
        Y(q);
        Z(q);
    }

    // Verifies use of decompositions, gates with functors, qubit reuse, inlining and unrolling.
    // Expected simulation output: [1, 0, 0]
    @EntryPoint()
    operation BasicGates() : Result[] {
        use target = Qubit();

        TestGates(target);
        Adjoint TestGates(target);

        // Note: the number of controls is kept at two to exercise some interesting decomposition
        // paths while still ensuring the overall size stays small enough to fit on partner simulators.
        use controls = Qubit[2]; 
        within {
            for q in controls {
                X(q);
            }
        }
        apply {
            //Controlled TestGates(controls, target);
            //Controlled Adjoint TestGates(controls, target);
        }
        X(target);
        SWAP(target, controls[0]);
        //Controlled SWAP([controls[1]], (controls[0], target));
        return [MResetZ(controls[0]), MResetZ(controls[1]), MResetZ(target)];
    }
}
