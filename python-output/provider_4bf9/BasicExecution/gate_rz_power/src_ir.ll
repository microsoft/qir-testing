; ModuleID = 'gate_rz_power'
source_filename = "gate_rz_power"

%Result = type opaque
%Qubit = type opaque

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__array_end_record_output()

define void @main() #0 {
entry:
  call void @__quantum__qis__rz__body(double 3.140000e+00, %Qubit* null)
  call void @__quantum__qis__rz__body(double 3.140000e+00, %Qubit* null)
  call void @__quantum__qis__rz__body(double 3.140000e+00, %Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void
}

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

attributes #0 = { "EntryPoint" "requiredQubits"="1" "requiredResults"="1" }
