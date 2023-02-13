; ModuleID = 'IntegerComparison/target_7ee0/IntegerComparison.In.bc'

%Qubit = type opaque
%Result = type opaque
%Array = type opaque

define void @Tests__Common__L3__IntegerComparison() #0 {
entry:
  %count = alloca i64, align 8
  store i64 0, i64* %count, align 4
  %q = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %0 = call %Result* @__quantum__rt__result_get_one()
  %1 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %0)
  br i1 %1, label %then0__1, label %continue__2

then0__1:                                         ; preds = %entry
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__2

continue__2:                                      ; preds = %then0__1, %entry
  %2 = call %Result* @__quantum__rt__result_get_one()
  %3 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %2)
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 -1)
  br i1 %3, label %then0__2, label %continue__1

then0__2:                                         ; preds = %continue__2
  call void @__quantum__qis__x__body(%Qubit* %q)
  store i64 10, i64* %count, align 4
  br label %continue__1

continue__1:                                      ; preds = %then0__2, %continue__2
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__2 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %4 = call %Result* @__quantum__rt__result_get_one()
  %5 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %4)
  br i1 %5, label %then0__3, label %continue__4

then0__3:                                         ; preds = %continue__1
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__4

continue__4:                                      ; preds = %then0__3, %continue__1
  %6 = call %Result* @__quantum__rt__result_get_one()
  %7 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %6)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__2, i32 -1)
  br i1 %7, label %then0__4, label %continue__3

then0__4:                                         ; preds = %continue__4
  call void @__quantum__qis__x__body(%Qubit* %q)
  %8 = load i64, i64* %count, align 4
  %9 = add i64 %8, 10
  store i64 %9, i64* %count, align 4
  br label %continue__3

continue__3:                                      ; preds = %then0__4, %continue__4
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__4 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %10 = call %Result* @__quantum__rt__result_get_one()
  %11 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %10)
  br i1 %11, label %then0__5, label %continue__6

then0__5:                                         ; preds = %continue__3
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__6

continue__6:                                      ; preds = %then0__5, %continue__3
  %12 = call %Result* @__quantum__rt__result_get_one()
  %13 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %12)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__4, i32 -1)
  br i1 %13, label %then0__6, label %continue__5

then0__6:                                         ; preds = %continue__6
  call void @__quantum__qis__x__body(%Qubit* %q)
  %14 = load i64, i64* %count, align 4
  %15 = add i64 %14, 10
  store i64 %15, i64* %count, align 4
  br label %continue__5

continue__5:                                      ; preds = %then0__6, %continue__6
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__6 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %16 = call %Result* @__quantum__rt__result_get_one()
  %17 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %16)
  br i1 %17, label %then0__7, label %continue__8

then0__7:                                         ; preds = %continue__5
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__8

continue__8:                                      ; preds = %then0__7, %continue__5
  %18 = call %Result* @__quantum__rt__result_get_one()
  %19 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %18)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__6, i32 -1)
  br i1 %19, label %then0__8, label %continue__7

then0__8:                                         ; preds = %continue__8
  call void @__quantum__qis__x__body(%Qubit* %q)
  %20 = load i64, i64* %count, align 4
  %21 = add i64 %20, 10
  store i64 %21, i64* %count, align 4
  br label %continue__7

continue__7:                                      ; preds = %then0__8, %continue__8
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__8 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %22 = call %Result* @__quantum__rt__result_get_one()
  %23 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %22)
  br i1 %23, label %then0__9, label %continue__10

then0__9:                                         ; preds = %continue__7
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__10

continue__10:                                     ; preds = %then0__9, %continue__7
  %24 = call %Result* @__quantum__rt__result_get_one()
  %25 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %24)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__8, i32 -1)
  br i1 %25, label %then0__10, label %continue__9

then0__10:                                        ; preds = %continue__10
  call void @__quantum__qis__x__body(%Qubit* %q)
  %26 = load i64, i64* %count, align 4
  %27 = add i64 %26, 10
  store i64 %27, i64* %count, align 4
  br label %continue__9

continue__9:                                      ; preds = %then0__10, %continue__10
  %28 = load i64, i64* %count, align 4
  %__rtrnVal0__ = icmp sgt i64 %28, 25
  %__rtrnVal1__ = icmp slt i64 %28, 25
  %__rtrnVal2__ = icmp eq i64 %28, 50
  %29 = insertvalue { i1, i1, i1 } zeroinitializer, i1 %__rtrnVal0__, 0
  %30 = insertvalue { i1, i1, i1 } %29, i1 %__rtrnVal1__, 1
  %31 = insertvalue { i1, i1, i1 } %30, i1 %__rtrnVal2__, 2
  call void @__quantum__rt__qubit_release(%Qubit* %q)
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal0__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal1__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal2__)
  call void @__quantum__rt__tuple_end_record_output()
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare %Array* @__quantum__rt__qubit_allocate_array(i64)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__qis__x__body(%Qubit*)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_one()

declare i1 @__quantum__rt__result_equal(%Result*, %Result*)

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare void @__quantum__rt__tuple_start_record_output()

declare void @__quantum__rt__bool_record_output(i1)

declare void @__quantum__rt__tuple_end_record_output()

attributes #0 = { "EntryPoint" }
