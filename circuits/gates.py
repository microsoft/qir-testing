
from typing import Any, Generator, List

from qiskit import QuantumCircuit

def gate_barrier() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(3, 0, name="gate_barrier")
    circuit.barrier()
    return list(generate_circuits(circuit, controlled=False))


def gate_ccx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(3, 0, name="gate_ccx")
    circuit.ccx(0, 1, 2)
    return list(generate_circuits(circuit))


def gate_ch() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_ch")
    circuit.ch(0, 1)
    return list(generate_circuits(circuit))


def gate_cnot() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_cnot")
    circuit.cnot(0, 1)
    return list(generate_circuits(circuit))


def gate_cp() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_cp")
    circuit.cp(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_fredkin() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(3, 0, name="gate_fredkin")
    circuit.fredkin(0, 1, 2)
    return list(generate_circuits(circuit))


def gate_crx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_crx")
    circuit.crx(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_cry() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_cry")
    circuit.cry(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_crz() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_crz")
    circuit.crz(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_cswap() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(3, 0, name="gate_cswap")
    circuit.cswap(0, 1, 2)
    return list(generate_circuits(circuit))


def gate_csx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_csx")
    circuit.csx(0, 1)
    return list(generate_circuits(circuit))


def gate_cu() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_cu")
    circuit.cu(3.14, 3.14, 3.14, 3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_cx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_cx")
    circuit.cx(0, 1)
    return list(generate_circuits(circuit))


def gate_cy() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_cy")
    circuit.cy(0, 1)
    return list(generate_circuits(circuit))


def gate_cz() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_cz")
    circuit.cz(0, 1)
    return list(generate_circuits(circuit))


def gate_dcx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_dcx")
    circuit.dcx(0, 1)
    return list(generate_circuits(circuit))


def gate_delay() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(3, 0, name="gate_delay")
    circuit.delay(2, [0, 1, 2], "s")
    return generate_circuits(circuit, controlled=False, inverse=False)


def gate_h() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_h")
    circuit.h(0)
    return list(generate_circuits(circuit))


def gate_mcx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(5, 0, name="gate_mcx")
    circuit.mcx([0, 1, 2, 3], 4)
    return list(generate_circuits(circuit))


def gate_i() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_i")
    circuit.i(0)
    return generate_circuits(circuit, controlled=False)


def gate_id() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_id")
    circuit.id(0)
    return generate_circuits(circuit, controlled=False)


def gate_iswap() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_iswap")
    circuit.iswap(0, 1)
    return list(generate_circuits(circuit))


def gate_mcp() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(5, 0, name="gate_mcp")
    circuit.mcp(3.14, [0, 1, 2, 3], 4)
    return list(generate_circuits(circuit))


def gate_measure() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 1, name="gate_measure")
    circuit.measure(0, 0)
    return generate_circuits(circuit, controlled=False, inverse=False, power=False, measure=False)


def gate_measure_active_no_active() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_measure_active_no_active")
    circuit.measure_active()
    return generate_circuits(circuit, controlled=False, inverse=False, power=False, measure=False)


def gate_measure_active_one_active() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_measure_active_one_active")
    circuit.x(0)
    circuit.measure_active()
    return generate_circuits(circuit, controlled=False, inverse=False, power=False, measure=False)


def gate_measure_all() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_measure_all")
    circuit.measure_all()
    return generate_circuits(circuit, controlled=False, inverse=False, power=False, measure=False)


def gate_p() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_p")
    circuit.p(3.14, 0)
    return list(generate_circuits(circuit))


def gate_r() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_r")
    circuit.r(3.14, 3.14, 0)
    return list(generate_circuits(circuit))


def gate_rcccx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(4, 0, name="gate_rcccx")
    circuit.rcccx(0, 1, 2, 3)
    return list(generate_circuits(circuit))


def gate_rccx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(3, 0, name="gate_rccx")
    circuit.rccx(0, 1, 2)
    return list(generate_circuits(circuit))


def gate_reset() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_reset")
    circuit.reset(0)
    return generate_circuits(circuit, controlled=False, inverse=False)


def gate_rv() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_rv")
    circuit.rv(3.14, 3.14, 3.14, 0)
    return list(generate_circuits(circuit))


def gate_rx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_rx")
    circuit.rx(3.14, 0)
    return list(generate_circuits(circuit))


def gate_rxx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_rxx")
    circuit.rxx(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_ry() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_ry")
    circuit.ry(3.14, 0)
    return list(generate_circuits(circuit))


def gate_ryy() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_ryy")
    circuit.ryy(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_rz() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_rz")
    circuit.rz(3.14, 0)
    return list(generate_circuits(circuit))


def gate_rzx() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_rzx")
    circuit.rzx(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_rzz() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(2, 0, name="gate_rzz")
    circuit.rzz(3.14, 0, 1)
    return list(generate_circuits(circuit))


def gate_s() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_s")
    circuit.s(0)
    return list(generate_circuits(circuit))


def gate_sdg() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_sdg")
    circuit.sdg(0)
    return list(generate_circuits(circuit))


def gate_t() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_t")
    circuit.t(0)
    return list(generate_circuits(circuit))


def gate_tdg() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_tdg")
    circuit.tdg(0)
    return list(generate_circuits(circuit))


def gate_toffoli() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(3, 0, name="gate_toffoli")
    circuit.toffoli(0, 1, 2)
    return list(generate_circuits(circuit))


def gate_u() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_u")
    circuit.u(3.14, 3.14, 3.14, 0)
    return list(generate_circuits(circuit))


def gate_x() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_x")
    circuit.x(0)
    return list(generate_circuits(circuit))


def gate_y() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_y")
    circuit.y(0)
    return list(generate_circuits(circuit))


def gate_z() -> List[QuantumCircuit]:
    circuit = QuantumCircuit(1, 0, name="gate_z")
    circuit.z(0)
    return list(generate_circuits(circuit))


def generate_circuits(circuit: QuantumCircuit, controlled=True, power=True, inverse=True, measure=True) -> Generator[QuantumCircuit, Any, Any]:
    if measure:
        yield circuit.measure_all(inplace=False)
    else:
        yield circuit

    if controlled:
        c = circuit.control(2, None, None)
        c.name = f"{circuit.name}_controlled"
        if measure:
            yield c.measure_all(inplace=False)
        else:
            yield c

    if power:
        p = circuit.power(3)
        p.name = f"{circuit.name}_power"
        if measure:
            yield p.measure_all(inplace=False)
        else:
            yield p

    if inverse:
        i = circuit.inverse()
        i.name = f"{circuit.name}_inverse"
        if measure:
            yield i.measure_all(inplace=False)
        else:
            yield i


gate_list: List[QuantumCircuit] = [] + \
    [gate for gate in gate_barrier()] + \
    [gate for gate in gate_ccx()] + \
    [gate for gate in gate_ch()] + \
    [gate for gate in gate_cnot()] + \
    [gate for gate in gate_cp()] + \
    [gate for gate in gate_fredkin()] + \
    [gate for gate in gate_crx()] + \
    [gate for gate in gate_cry()] + \
    [gate for gate in gate_crz()] + \
    [gate for gate in gate_cswap()] + \
    [gate for gate in gate_csx()] + \
    [gate for gate in gate_cu()] + \
    [gate for gate in gate_cx()] + \
    [gate for gate in gate_cy()] + \
    [gate for gate in gate_cz()] + \
    [gate for gate in gate_dcx()] + \
    [gate for gate in gate_delay()] + \
    [gate for gate in gate_h()] + \
    [gate for gate in gate_mcx()] + \
    [gate for gate in gate_i()] + \
    [gate for gate in gate_id()] + \
    [gate for gate in gate_iswap()] + \
    [gate for gate in gate_mcp()] + \
    [gate for gate in gate_measure()] + \
    [gate for gate in gate_measure_active_no_active()] + \
    [gate for gate in gate_measure_active_one_active()] + \
    [gate for gate in gate_measure_all()] + \
    [gate for gate in gate_p()] + \
    [gate for gate in gate_r()] + \
    [gate for gate in gate_rcccx()] + \
    [gate for gate in gate_rccx()] + \
    [gate for gate in gate_reset()] + \
    [gate for gate in gate_rv()] + \
    [gate for gate in gate_rx()] + \
    [gate for gate in gate_rxx()] + \
    [gate for gate in gate_ry()] + \
    [gate for gate in gate_ryy()] + \
    [gate for gate in gate_rz()] + \
    [gate for gate in gate_rzx()] + \
    [gate for gate in gate_rzz()] + \
    [gate for gate in gate_s()] + \
    [gate for gate in gate_sdg()] + \
    [gate for gate in gate_t()] + \
    [gate for gate in gate_tdg()] + \
    [gate for gate in gate_toffoli()] + \
    [gate for gate in gate_u()] + \
    [gate for gate in gate_x()] + \
    [gate for gate in gate_y()] + \
    [gate for gate in gate_z()]


def chain(*iterables):

    for it in iterables:
        if isinstance(it, QuantumCircuit):
            yield it
        else:
            for each in it:
                yield each


flat_gate_list: List[QuantumCircuit] = [
    circuit for circuit in chain(*gate_list)]
