# Project

This repo contains sample circuits and programs along with QIR for testing of QIR based tooling.

## Test Case Structure

### Python

Qiskit based test circuits should have unique names that are valid file/directory names.

- `python/src`
  - `adaptive_cirquits.py` contains test cases leveraging conditions based on measurement results. Test cases should return `Generator[QuantumCircuit, Any, Any]` for circuits.
  - `circuits.py` contains test circuits.
  - `gates.py` contains gate definitions which are transpiled to the target gate set along with their controlled, power, and inverse. Test cases should return `List[QuantumCircuit]` and call `generate_circuits` with the appropriate parameters for creating their variations.

## Output Folder Structure

The `python/artifacts` directory contains a folder per test case
(e.g. `duplicate_conditions`, `hidden_shift`). Within each test case's
directory is a folder for each execution target profile (e.g. `target_4bf9`,
`target_7ee0`). Finally, within each execution target, there is a folder for
each execution profile supported for that target (e.g. `AdaptiveExecution`).

Each test case/target/profile combination includes:
- Input of either
  - QIR source `src_ir.ll` and bitcode `src_qir.bc` files representing the test case
  - `generation_error.txt` when the test case cannot be generate valid QIR for the chosen provider/profile
- An OpenQASM `circuit.qasm` representing the test cases circuit. This file may not exist as OpenQASM cannot represent all test cases.
- QIR output of either
  -  QIR source `targeted_ir.ll` and bitcode `targeted_qir` files with the provider/profile targeted QIR.
  - `qir_processing_error.txt` containing the validation or transformation errors associated with the targeting of the QIR.
- Simulation output of either
  - `hist.txt` containing a sample histogram from simulating the circuit.
  - `simulation_error.txt` containing the simulation errors encountered when running the circuit. 

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
