
%Result = type opaque
%Qubit = type opaque
%Array = type opaque

define void @Sample__QRNG() #0 {
entry:
  %results = alloca { [3 x %Result*], i64 }, align 8
  %q = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__1 = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__2 = call %Qubit* @__quantum__rt__qubit_allocate()
  %0 = insertvalue [3 x %Qubit*] zeroinitializer, %Qubit* %q, 0
  %1 = insertvalue { [3 x %Qubit*], i64 } zeroinitializer, [3 x %Qubit*] %0, 0
  %2 = insertvalue { [3 x %Qubit*], i64 } %1, i64 3, 1
  %3 = extractvalue { [3 x %Qubit*], i64 } %2, 0
  %4 = extractvalue { [3 x %Qubit*], i64 } %2, 1
  %5 = insertvalue [3 x %Qubit*] %3, %Qubit* %q__1, 1
  %6 = insertvalue { [3 x %Qubit*], i64 } zeroinitializer, [3 x %Qubit*] %5, 0
  %7 = insertvalue { [3 x %Qubit*], i64 } %6, i64 3, 1
  %8 = extractvalue { [3 x %Qubit*], i64 } %7, 0
  %9 = extractvalue { [3 x %Qubit*], i64 } %7, 1
  %10 = insertvalue [3 x %Qubit*] %8, %Qubit* %q__2, 2
  %11 = insertvalue { [3 x %Qubit*], i64 } zeroinitializer, [3 x %Qubit*] %10, 0
  %qubits = insertvalue { [3 x %Qubit*], i64 } %11, i64 3, 1
  call void @__quantum__qis__h__body(%Qubit* %q)
  call void @__quantum__qis__h__body(%Qubit* %q__1)
  call void @__quantum__qis__h__body(%Qubit* %q__2)
  %12 = call %Result* @__quantum__rt__result_get_zero()
  %13 = insertvalue [3 x %Result*] zeroinitializer, %Result* %12, 0
  %14 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %13, 0
  %15 = insertvalue { [3 x %Result*], i64 } %14, i64 3, 1
  %16 = extractvalue { [3 x %Result*], i64 } %15, 0
  %17 = extractvalue { [3 x %Result*], i64 } %15, 1
  %18 = insertvalue [3 x %Result*] %16, %Result* %12, 1
  %19 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %18, 0
  %20 = insertvalue { [3 x %Result*], i64 } %19, i64 3, 1
  %21 = extractvalue { [3 x %Result*], i64 } %20, 0
  %22 = extractvalue { [3 x %Result*], i64 } %20, 1
  %23 = insertvalue [3 x %Result*] %21, %Result* %12, 2
  %24 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %23, 0
  %25 = insertvalue { [3 x %Result*], i64 } %24, i64 3, 1
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 1)
  store { [3 x %Result*], i64 } %25, { [3 x %Result*], i64 }* %results, align 8
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 1)
  %26 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %q, 0
  %27 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %26, 0
  %qubits__1 = insertvalue { [1 x %Qubit*], i64 } %27, i64 1, 1
  br label %continue__1

continue__1:                                      ; preds = %entry
  %aux = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__h__body(%Qubit* %aux)
  %28 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %aux, 0
  %29 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %28, 0
  %ctls = insertvalue { [1 x %Qubit*], i64 } %29, i64 1, 1
  call void @__quantum__qis__cz__body(%Qubit* %aux, %Qubit* %q)
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
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 -1)
  %30 = extractvalue { [3 x %Result*], i64 } %25, 0
  %31 = extractvalue { [3 x %Result*], i64 } %25, 1
  %32 = insertvalue [3 x %Result*] %30, %Result* %result, 0
  %33 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %32, 0
  %34 = insertvalue { [3 x %Result*], i64 } %33, i64 3, 1
  store { [3 x %Result*], i64 } %34, { [3 x %Result*], i64 }* %results, align 8
  %35 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %q__1, 0
  %36 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %35, 0
  %qubits__2 = insertvalue { [1 x %Qubit*], i64 } %36, i64 1, 1
  br label %continue__4

continue__4:                                      ; preds = %continue__2
  %aux__2 = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__h__body(%Qubit* %aux__2)
  %37 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %aux__2, 0
  %38 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %37, 0
  %ctls__1 = insertvalue { [1 x %Qubit*], i64 } %38, i64 1, 1
  call void @__quantum__qis__cz__body(%Qubit* %aux__2, %Qubit* %q__1)
  br label %continue__6

continue__6:                                      ; preds = %continue__4
  br label %continue__5

continue__5:                                      ; preds = %continue__6
  call void @__quantum__qis__h__body(%Qubit* %aux__2)
  %result__1 = call %Result* @__quantum__qis__m__body(%Qubit* %aux__2)
  call void @__quantum__qis__reset__body(%Qubit* %aux__2)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__1, i32 -1)
  call void @__quantum__rt__qubit_release(%Qubit* %aux__2)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__1, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 -1)
  %39 = extractvalue { [3 x %Result*], i64 } %34, 0
  %40 = extractvalue { [3 x %Result*], i64 } %34, 1
  %41 = insertvalue [3 x %Result*] %39, %Result* %result__1, 1
  %42 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %41, 0
  %43 = insertvalue { [3 x %Result*], i64 } %42, i64 3, 1
  store { [3 x %Result*], i64 } %43, { [3 x %Result*], i64 }* %results, align 8
  %44 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %q__2, 0
  %45 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %44, 0
  %qubits__3 = insertvalue { [1 x %Qubit*], i64 } %45, i64 1, 1
  br label %continue__7

continue__7:                                      ; preds = %continue__5
  %aux__4 = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__h__body(%Qubit* %aux__4)
  %46 = insertvalue [1 x %Qubit*] zeroinitializer, %Qubit* %aux__4, 0
  %47 = insertvalue { [1 x %Qubit*], i64 } zeroinitializer, [1 x %Qubit*] %46, 0
  %ctls__2 = insertvalue { [1 x %Qubit*], i64 } %47, i64 1, 1
  call void @__quantum__qis__cz__body(%Qubit* %aux__4, %Qubit* %q__2)
  br label %continue__9

continue__9:                                      ; preds = %continue__7
  br label %continue__8

continue__8:                                      ; preds = %continue__9
  call void @__quantum__qis__h__body(%Qubit* %aux__4)
  %result__2 = call %Result* @__quantum__qis__m__body(%Qubit* %aux__4)
  call void @__quantum__qis__reset__body(%Qubit* %aux__4)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__2, i32 -1)
  call void @__quantum__rt__qubit_release(%Qubit* %aux__4)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__2, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 -1)
  %48 = extractvalue { [3 x %Result*], i64 } %43, 0
  %49 = extractvalue { [3 x %Result*], i64 } %43, 1
  %50 = insertvalue [3 x %Result*] %48, %Result* %result__2, 2
  %51 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %50, 0
  %__rtrnVal0__ = insertvalue { [3 x %Result*], i64 } %51, i64 3, 1
  store { [3 x %Result*], i64 } %__rtrnVal0__, { [3 x %Result*], i64 }* %results, align 8
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 -1)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__1, i32 -1)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__2, i32 -1)
  call void @__quantum__rt__qubit_release(%Qubit* %q)
  call void @__quantum__rt__qubit_release(%Qubit* %q__1)
  call void @__quantum__rt__qubit_release(%Qubit* %q__2)
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* %result)
  call void @__quantum__rt__result_record_output(%Result* %result__1)
  call void @__quantum__rt__result_record_output(%Result* %result__2)
  call void @__quantum__rt__array_end_record_output()
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare %Array* @__quantum__rt__qubit_allocate_array(i64)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__qis__h__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_zero()

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_end_record_output()

attributes #0 = { "EntryPoint" }
