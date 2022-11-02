
%Qubit = type opaque
%Result = type opaque
%Array = type opaque

define void @Sample__RandomBit() #0 {
entry:
  %qubit = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__h__body(%Qubit* %qubit)
  %0 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %qubit, 0
  %1 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %0, 0
  %qubits = insertvalue { [1 x %Qubit*], i64 } %1, i64 1, 1
  br label %continue__1

continue__1:                                      ; preds = %entry
  %aux = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__h__body(%Qubit* %aux)
  %2 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %aux, 0
  %3 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %2, 0
  %ctls = insertvalue { [1 x %Qubit*], i64 } %3, i64 1, 1
  call void @__quantum__qis__cz__body(%Qubit* %aux, %Qubit* %qubit)
  br label %continue__3

continue__3:                                      ; preds = %continue__1
  br label %continue__2

continue__2:                                      ; preds = %continue__3
  call void @__quantum__qis__h__body(%Qubit* %aux)
  %result = call %Result* @__quantum__qis__m__body(%Qubit* %aux)
  call void @__quantum__qis__reset__body(%Qubit* %aux)
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 -1)
  call void @__quantum__rt__qubit_release(%Qubit* %aux)
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 -1)
  call void @__quantum__rt__qubit_release(%Qubit* %qubit)
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 1)
  call void @__quantum__rt__result_record_output(%Result* %result)
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 -1)
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare %Array* @__quantum__rt__qubit_allocate_array(i64)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare void @__quantum__rt__result_record_output(%Result*)

attributes #0 = { "EntryPoint" }
