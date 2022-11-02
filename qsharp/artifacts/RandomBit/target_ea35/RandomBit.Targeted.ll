; ModuleID = '/mnt/c/Microsoft/ReposA/azure-quantum/src/QirTools/Controller.Tests/bin/Debug/net6.0/TestArtifacts/RandomBit.In/ionq.qir.v1/RandomBit.In.Out.bc'
source_filename = "qat-link"

%Qubit = type opaque
%Result = type opaque

define void @Sample__RandomBit() #0 {
entry:
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__h__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__h__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Result* null)
  call void @__quantum__rt__result_record_output(%Result* null)
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

attributes #0 = { "EntryPoint" "maxQubitIndex"="1" "maxResultIndex"="0" "requiredQubits"="2" "requiredResults"="1" }
