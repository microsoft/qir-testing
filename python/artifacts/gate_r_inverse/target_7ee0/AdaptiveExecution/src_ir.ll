; ModuleID = 'gate_r_inverse'
source_filename = "gate_r_inverse"

%Result = type opaque
%Qubit = type opaque

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__array_end_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

define void @main() #0 {
entry:
  call void @__quantum__qis__rz__body(double 0xBFF91B754F92DD26, %Qubit* null)
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3F5A1812C53FC800, %Qubit* null)
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x4025FCEB29257D77, %Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void
}

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

attributes #0 = { "EntryPoint" "requiredQubits"="1" "requiredResults"="1" }
