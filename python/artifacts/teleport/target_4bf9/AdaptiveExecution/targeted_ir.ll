source_filename = "qat-link"

%Qubit = type opaque
%Result = type opaque

define void @main() #0 {
entry:
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__h__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 1 to %Result*))
  %equal = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %equal, label %continue, label %else

else:                                             ; preds = %entry
  %equal1 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %equal1, label %then2, label %continue

continue:                                         ; preds = %then2, %else, %entry
  %equal5 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %equal5, label %then6, label %continue8

then2:                                            ; preds = %else
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  br label %continue

then6:                                            ; preds = %continue
  %equal9 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %equal9, label %continue8, label %else11

continue8:                                        ; preds = %else11, %then6, %continue
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void

else11:                                           ; preds = %then6
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  br label %continue8
}

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare i1 @__quantum__qis__read_result__body(%Result*)

declare void @__quantum__qis__x__body(%Qubit*)

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_end_record_output()

declare void @__quantum__qis__z__body(%Qubit*)

attributes #0 = { "EntryPoint" "maxQubitIndex"="2" "maxResultIndex"="1" "requiredQubits"="3" "requiredResults"="2" }
