; ModuleID = 'teleport'
source_filename = "teleport"

%Result = type opaque
%Qubit = type opaque

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_end_record_output()

define void @main() #0 {
entry:
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  %equal = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %equal, label %then, label %else

then:                                             ; preds = %entry
  br label %continue

else:                                             ; preds = %entry
  %equal1 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %equal1, label %then2, label %else3

continue:                                         ; preds = %continue4, %then
  %equal5 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %equal5, label %then6, label %else7

then2:                                            ; preds = %else
  call void @__quantum__qis__x__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  br label %continue4

else3:                                            ; preds = %else
  br label %continue4

continue4:                                        ; preds = %else3, %then2
  br label %continue

then6:                                            ; preds = %continue
  %equal9 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %equal9, label %then10, label %else11

else7:                                            ; preds = %continue
  br label %continue8

continue8:                                        ; preds = %else7, %continue12
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void

then10:                                           ; preds = %then6
  br label %continue12

else11:                                           ; preds = %then6
  call void @__quantum__qis__z__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  br label %continue12

continue12:                                       ; preds = %else11, %then10
  br label %continue8
}

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare i1 @__quantum__qis__read_result__body(%Result*)

declare void @__quantum__qis__x__body(%Qubit*)

declare void @__quantum__qis__z__body(%Qubit*)

attributes #0 = { "EntryPoint" "requiredQubits"="3" "requiredResults"="2" }
