# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

from qiskit import ClassicalRegister, QuantumCircuit
from qiskit.circuit import Clbit

from typing import Any, Generator

# result_stream, condition value, expected gates
single_bit_varitions = [
    [[False], False],
    [[False], 0],

    [[False], True],
    [[False], 1],

    [[True], False],
    [[True], 0],

    [[True], True],
    [[True], 1],
]


def get_single_clbit_variations() -> Generator[QuantumCircuit, Any, Any]:
    for matrix in single_bit_varitions:
        circuit = QuantumCircuit(
            2, 0, name=f"test_single_clbit_variations-{matrix[0]}-{matrix[1]}")
        cr = ClassicalRegister(2, "cr")
        circuit.add_register(cr)
        if matrix[0]:
            circuit.x(0)
        circuit.measure(0, 0)
        bit: Clbit = cr[0]
        circuit.x(1).c_if(bit, matrix[1])
        circuit.measure(1, 1)
        yield circuit


def get_single_register_index_variations() -> Generator[QuantumCircuit, Any, Any]:
    for matrix in single_bit_varitions:
        circuit = QuantumCircuit(
            2, 0, name=f"test_single_register_index_variations-{matrix[0]}-{matrix[1]}")
        cr = ClassicalRegister(2, "cr")
        circuit.add_register(cr)
        if matrix[0]:
            circuit.x(0)
        circuit.measure(0, 0)
        circuit.x(1).c_if(0, matrix[1])
        circuit.measure(1, 1)
        yield circuit


def get_single_register_variations() -> Generator[QuantumCircuit, Any, Any]:
    for matrix in single_bit_varitions:
        circuit = QuantumCircuit(
            2, 0, name=f"test_single_register_variations-{matrix[0]}-{matrix[1]}")
        cr = ClassicalRegister(2, "cr")
        circuit.add_register(cr)
        if matrix[0]:
            circuit.x(0)
        circuit.measure(0, 0)
        circuit.x(1).c_if(cr, matrix[1])
        circuit.measure(1, 1)
        yield circuit


# result_stream, condition value, expected gates
two_bit_variations = [
    [[False, False], False],  # 00 => 00 (0)
    [[False, False], 0],  # 00 => 00 (0)

    [[False, False], True],
    [[False, False], 1],
    [[False, False], 2],
    [[False, False], 3],

    [[False, True], False],
    [[False, True], 0],

    [[False, True], True],
    [[False, True], 1],
    [[False, True], 2],  # 01 => 10 (2)
    [[False, True], 3],

    [[True, False], False],
    [[True, False], 0],

    [[True, False], True],  # 10 => 01 (1)
    [[True, False], 1],  # 10 => 01 (1)
    [[True, False], 2],
    [[True, False], 3],

    [[True, True], False],
    [[True, True], 0],

    [[True, True], True],
    [[True, True], 1],
    [[True, True], 2],
    [[True, True], 3],  # 11 => 11 (3)
]


def get_two_bit_register_variations() -> Generator[QuantumCircuit, Any, Any]:
    for matrix in two_bit_variations:
        circuit = QuantumCircuit(
            3, 0, name=f"test_two_bit_register_variations-{matrix[0][0]}-{matrix[0][1]}-{matrix[1]}")

        cr = ClassicalRegister(2, "cr")
        circuit.add_register(cr)
        if matrix[0][0]:
            circuit.x(0)
        if matrix[0][1]:
            circuit.x(1)

        cond = ClassicalRegister(1, "cond")
        circuit.add_register(cond)

        circuit.measure(0, 0)
        circuit.measure(1, 1)
        circuit.x(2).c_if(cr, matrix[1])
        circuit.measure(2, 2)
        yield circuit
