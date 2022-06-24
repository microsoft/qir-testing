; ModuleID = 'test_two_bit_register_variations-False-False-1'
source_filename = "test_two_bit_register_variations-False-False-1"

%Result = type opaque
%Qubit = type opaque

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__array_end_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

define void @main() #0 {
entry:
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  %equal = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %equal, label %then, label %else

then:                                             ; preds = %entry
  %equal1 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %equal1, label %then2, label %else3

else:                                             ; preds = %entry
  br label %continue

continue:                                         ; preds = %else, %continue4
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__rt__array_end_record_output()
  ret void

then2:                                            ; preds = %then
  br label %continue4

else3:                                            ; preds = %then
  call void @__quantum__qis__x__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  br label %continue4

continue4:                                        ; preds = %else3, %then2
  br label %continue
}

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare i1 @__quantum__qis__read_result__body(%Result*)

declare void @__quantum__qis__x__body(%Qubit*)

attributes #0 = { "EntryPoint" "requiredQubits"="3" "requiredResults"="3" }
