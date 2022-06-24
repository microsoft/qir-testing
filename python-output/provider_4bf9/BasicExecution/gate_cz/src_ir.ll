; ModuleID = 'gate_cz'
source_filename = "gate_cz"

%Result = type opaque
%Qubit = type opaque

declare void @__quantum__rt__array_end_record_output()

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

define void @main() #0 {
entry:
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void
}

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

attributes #0 = { "EntryPoint" "requiredQubits"="2" "requiredResults"="2" }
