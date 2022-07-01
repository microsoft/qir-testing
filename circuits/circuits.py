from qiskit import ClassicalRegister, QuantumCircuit, QuantumRegister


def barriers_only() -> QuantumCircuit:
    circuit = QuantumCircuit(2, 1, name="barriers_only")
    circuit.barrier()
    circuit.barrier()
    return circuit


def duplicate_conditions() -> QuantumCircuit:
    circuit = QuantumCircuit(name="duplicate_conditions")
    qr = QuantumRegister(2, "q")
    cr = ClassicalRegister(1, "c")
    cr2 = ClassicalRegister(1, "c2")
    circuit.add_register(qr)
    circuit.add_register(cr)
    circuit.add_register(cr2)
    circuit.x(0)
    circuit.measure(0, cr[0])
    circuit.x(1).c_if(cr, 1)
    circuit.h(1).c_if(cr, 1)
    circuit.measure(1, cr2[0])
    return circuit


def empty_program() -> QuantumCircuit:
    circuit = QuantumCircuit(2, 0, name="empty_program")
    return circuit


def explicit_registers_measure_all_at_once() -> QuantumCircuit:
    circuit = QuantumCircuit(name="explicit_registers_measure_all_at_once")
    qr = QuantumRegister(2, "q")
    cr = ClassicalRegister(2, "c")
    circuit.add_register(qr)
    circuit.add_register(cr)
    circuit.h(qr[0])
    circuit.cnot(qr[0], qr[1])
    circuit.measure(qr, cr)
    return circuit


def explicit_registers() -> QuantumCircuit:
    circuit = QuantumCircuit()
    circuit.name = "explicit_registers"
    qr = QuantumRegister(2, "q")
    cr = ClassicalRegister(2, "c")
    circuit.add_register(qr)
    circuit.add_register(cr)
    circuit.h(qr[0])
    circuit.cnot(qr[0], qr[1])
    circuit.measure(qr[1], cr[1])
    circuit.measure(qr[0], cr[0])
    return circuit


def explicit_reset() -> QuantumCircuit:
    circuit = QuantumCircuit(1, 0, name="explicit_reset")
    circuit.x(0)
    circuit.reset(0)
    circuit.measure_all()
    return circuit


def ghz() -> QuantumCircuit:
    circuit = QuantumCircuit(3, 3, name="ghz")
    circuit.h(0)
    circuit.cx(0, 1)
    circuit.cx(1, 2)
    circuit.barrier()
    circuit.measure([0, 1, 2], [0, 1, 2])
    return circuit


def no_measurements() -> QuantumCircuit:
    circuit = QuantumCircuit(1, 0, name="no_measurements")
    circuit.x(0)
    return circuit


def qubit_in_control_and_target() -> QuantumCircuit:
    circuit = QuantumCircuit(2, 0, name="qubit_in_control_and_target")
    circuit.cx(0, 0)
    circuit.measure_all()
    return circuit


def qubit_reindexing() -> QuantumCircuit:
    # Use Qubit Reindexing
    circuit = QuantumCircuit(4, 1, name="qubit_reindexing")
    circuit.x(3)
    circuit.measure(3, 0)
    return circuit


def qubit_reuse_after_measure() -> QuantumCircuit:
    circuit = QuantumCircuit(name="qubit_reuse_after_measure")
    qr = QuantumRegister(1, "q")
    cr = ClassicalRegister(2, "c")
    circuit.add_register(qr)
    circuit.add_register(cr)
    circuit.x(0)
    circuit.measure(0, 0)
    circuit.x(0)
    circuit.measure(0, 1)
    return circuit


def reuse_measurement_result() -> QuantumCircuit:
    circuit = QuantumCircuit(name="reuse_measurement_result")
    qr = QuantumRegister(2, "q")
    cr = ClassicalRegister(1, "c")
    circuit.add_register(qr)
    circuit.add_register(cr)
    circuit.x(0)
    circuit.measure(0, 0)
    circuit.x(1)
    circuit.measure(1, 0)
    return circuit


def subset_measurements() -> QuantumCircuit:
    circuit = QuantumCircuit(1, 4, name="subset_measurements")
    circuit.x(0)
    circuit.measure(0, 0)
    return circuit


def teleport():
    q = QuantumRegister(3, name="q")
    cr = ClassicalRegister(2, name="cr")
    circuit = QuantumCircuit(q, cr, name="teleport")
    circuit.h(1)
    circuit.cx(1, 2)
    circuit.cx(0, 1)
    circuit.h(0)
    circuit.measure(0, 0)
    circuit.measure(1, 1)
    circuit.x(2).c_if(cr, int("10", 2))
    circuit.z(2).c_if(cr, int("01", 2))

    return circuit


def hidden_shift() -> QuantumCircuit:
    num_qubits = 4
    shift = 5

    # Create phase oracle circuit for $f^\star$
    oracle_fstar = hidden_shift_helpers.inner_product(num_qubits)

    # Create phase oracle circuit for $g$
    oracle_g = hidden_shift_helpers.shifted_phase_oracle(shift, oracle_fstar)

    # Create hidden shift circuit
    circuit = hidden_shift_helpers.hidden_shift(oracle_g, oracle_fstar)
    return circuit


class hidden_shift_helpers:
    def hidden_shift(oracle_g, oracle_fstar):
        """Creates a hidden shift circuit based on phase oracle circuits for `oracle_g` and `oracle_fstar`."""

        # Obtain the number of qubits from oracle_g
        num_qubits = oracle_g.num_qubits

        # Check that number of qubits are the same for both oracles
        assert num_qubits == oracle_fstar.num_qubits, "Number of qubits for both oracles must be equal"

        # A quantum register for all qubits we are using in this circuit.
        qs = QuantumRegister(num_qubits, name="q")

        # This constructs the quantum circuit
        circ = QuantumCircuit(qs, name="hidden_shift")

        # A layer of H gates
        circ.h(qs)

        # Apply $U_g$ (rename it for visualization)
        oracle_g.name = "Ug"
        circ.append(oracle_g, qs)

        # Another layer of H gates
        circ.h(qs)

        # Apply $U_{f^\star}$
        oracle_fstar.name = "Uf*"
        circ.append(oracle_fstar, qs)

        # And a final layer of H gates
        circ.h(qs)
        circ.measure_all()

        return circ

    def inner_product(num_qubits):
        """Creates the inner product of two qubit registers, which are the alternating qubits over `num_qubits` bits"""

        # Number of qubits must be even
        assert num_qubits % 2 == 0, "Number of qubits must be even"

        # Create a quantum circuit
        circ = QuantumCircuit(num_qubits, name='inner_product')
        # Apply CZ gates to pairs of even and odd qubit indices
        for c, t in zip(circ.qubits[::2], circ.qubits[1::2]):
            circ.cz(c, t)
        return circ

    def xor(shift, num_bits):
        """Bitwise XOR of `num_bits`-bit value `shift`"""

        # Shift must be smaller than 2^num_bits
        assert shift >= 0 and shift < 2**num_bits, f"Shift must be between 0 and {2**num_bits - 1}"

        # Create a quantum circuit with `num_bits` qubits
        circ = QuantumCircuit(num_bits, name=f'xor({shift})')
        # Returns all indexes which correspond to a `1` in the binary expansion of `shift`
        ones = [idx for idx in range(num_bits) if (shift >> idx) & 1 == 1]
        # Apply an X operation to all indexes in `ones` (this only works if `ones` is not empty)
        if ones:
            circ.x(ones)

        return circ

    def shifted_phase_oracle(shift, phase_oracle):
        """Creates U_g from U_f (phase_oracle), where g(x) = f(x ⊕ s)"""
        # Retrieve qubits from input phase oracle
        qs = phase_oracle.qubits
        # Create a quantum circuit using the qubits from the phase oracle
        circ = QuantumCircuit(qs)
        # Compute shift into the computational state using the XOR operation
        circ.append(hidden_shift_helpers.xor(
            shift, phase_oracle.num_qubits), qs)
        # Apply the phase oracle onto the shifted state
        circ.append(phase_oracle, qs)
        # Uncompute the shift by applying the XOR operation another time
        circ.append(hidden_shift_helpers.xor(
            shift, phase_oracle.num_qubits), qs)

        return circ


test_circuits = [
    barriers_only(),
    duplicate_conditions(),
    empty_program(),
    explicit_registers_measure_all_at_once(),
    explicit_registers(),
    explicit_reset(),
    ghz(),
    no_measurements(),
    qubit_reindexing(),
    qubit_reuse_after_measure(),
    reuse_measurement_result(),
    subset_measurements(),
    teleport(),
    hidden_shift(),
]
