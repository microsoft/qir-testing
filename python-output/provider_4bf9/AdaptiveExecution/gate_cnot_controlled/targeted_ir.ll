source_filename = "qat-link"

%Qubit = type opaque
%Result = type opaque

define void @main() #0 {
entry:
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD921FB54442D18, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD921FB54442D18, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD921FB54442D18, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD921FB54442D18, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Result* nonnull inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*), %Result* nonnull inttoptr (i64 3 to %Result*))
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 3 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 2 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void
}

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_end_record_output()

attributes #0 = { "EntryPoint" "maxQubitIndex"="3" "maxResultIndex"="3" "requiredQubits"="4" "requiredResults"="4" }
