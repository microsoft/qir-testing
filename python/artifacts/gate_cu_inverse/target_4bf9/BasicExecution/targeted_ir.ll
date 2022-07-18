source_filename = "qat-link"

%Qubit = type opaque
%Result = type opaque

define void @main() #0 {
entry:
  call void @__quantum__qis__rz__body(double -3.140000e+00, %Qubit* null)
  call void @__quantum__qis__rz__body(double -3.140000e+00, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0.000000e+00, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 3.140000e+00, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4012D8ABBE9CF7D4, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4022D97C7F3321D2, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0.000000e+00, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FF9253E569CD511, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4019239CD5708114, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void
}

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_end_record_output()

attributes #0 = { "EntryPoint" "maxQubitIndex"="1" "maxResultIndex"="1" "requiredQubits"="2" "requiredResults"="2" }
