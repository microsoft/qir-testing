; ModuleID = 'IntegerSupport.In.bc'

%Qubit = type opaque
%Result = type opaque
%Array = type opaque

define void @Tests__Common__IntegerSupport() #0 {
entry:
  %substraction = alloca i64, align 8
  %sum = alloca i64, align 8
  store i64 0, i64* %sum, align 4
  store i64 0, i64* %substraction, align 4
  %q = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  %result = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %0 = call %Result* @__quantum__rt__result_get_one()
  %1 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %0)
  br i1 %1, label %then0__1, label %continue__2

then0__1:                                         ; preds = %entry
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  br label %continue__2

continue__2:                                      ; preds = %then0__1, %entry
  %2 = call %Result* @__quantum__rt__result_get_one()
  %3 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %2)
  call void @__quantum__rt__result_update_reference_count(%Result* %result, i32 -1)
  br i1 %3, label %then0__2, label %continue__1

then0__2:                                         ; preds = %continue__2
  store i64 1, i64* %sum, align 4
  store i64 -2, i64* %substraction, align 4
  br label %continue__1

continue__1:                                      ; preds = %then0__2, %continue__2
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  %result__2 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %4 = call %Result* @__quantum__rt__result_get_one()
  %5 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %4)
  br i1 %5, label %then0__3, label %continue__4

then0__3:                                         ; preds = %continue__1
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  br label %continue__4

continue__4:                                      ; preds = %then0__3, %continue__1
  %6 = call %Result* @__quantum__rt__result_get_one()
  %7 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %6)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__2, i32 -1)
  br i1 %7, label %then0__4, label %continue__3

then0__4:                                         ; preds = %continue__4
  %8 = load i64, i64* %sum, align 4
  %9 = add i64 %8, 1
  store i64 %9, i64* %sum, align 4
  %10 = load i64, i64* %substraction, align 4
  %11 = sub i64 %10, 2
  store i64 %11, i64* %substraction, align 4
  br label %continue__3

continue__3:                                      ; preds = %then0__4, %continue__4
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  %result__4 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %12 = call %Result* @__quantum__rt__result_get_one()
  %13 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %12)
  br i1 %13, label %then0__5, label %continue__6

then0__5:                                         ; preds = %continue__3
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  br label %continue__6

continue__6:                                      ; preds = %then0__5, %continue__3
  %14 = call %Result* @__quantum__rt__result_get_one()
  %15 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %14)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__4, i32 -1)
  br i1 %15, label %then0__6, label %continue__5

then0__6:                                         ; preds = %continue__6
  %16 = load i64, i64* %sum, align 4
  %17 = add i64 %16, 1
  store i64 %17, i64* %sum, align 4
  %18 = load i64, i64* %substraction, align 4
  %19 = sub i64 %18, 2
  store i64 %19, i64* %substraction, align 4
  br label %continue__5

continue__5:                                      ; preds = %then0__6, %continue__6
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  %result__6 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %20 = call %Result* @__quantum__rt__result_get_one()
  %21 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %20)
  br i1 %21, label %then0__7, label %continue__8

then0__7:                                         ; preds = %continue__5
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  br label %continue__8

continue__8:                                      ; preds = %then0__7, %continue__5
  %22 = call %Result* @__quantum__rt__result_get_one()
  %23 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %22)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__6, i32 -1)
  br i1 %23, label %then0__8, label %continue__7

then0__8:                                         ; preds = %continue__8
  %24 = load i64, i64* %sum, align 4
  %25 = add i64 %24, 1
  store i64 %25, i64* %sum, align 4
  %26 = load i64, i64* %substraction, align 4
  %27 = sub i64 %26, 2
  store i64 %27, i64* %substraction, align 4
  br label %continue__7

continue__7:                                      ; preds = %then0__8, %continue__8
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  %result__8 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %28 = call %Result* @__quantum__rt__result_get_one()
  %29 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %28)
  br i1 %29, label %then0__9, label %continue__10

then0__9:                                         ; preds = %continue__7
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q)
  br label %continue__10

continue__10:                                     ; preds = %then0__9, %continue__7
  %30 = call %Result* @__quantum__rt__result_get_one()
  %31 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %30)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__8, i32 -1)
  br i1 %31, label %then0__10, label %continue__9

then0__10:                                        ; preds = %continue__10
  %32 = load i64, i64* %sum, align 4
  %33 = add i64 %32, 1
  store i64 %33, i64* %sum, align 4
  %34 = load i64, i64* %substraction, align 4
  %35 = sub i64 %34, 2
  store i64 %35, i64* %substraction, align 4
  br label %continue__9

continue__9:                                      ; preds = %then0__10, %continue__10
  %36 = load i64, i64* %sum, align 4
  %positiveMultiplication = mul i64 %36, 3
  %37 = load i64, i64* %substraction, align 4
  %negativeMultiplication = mul i64 %37, 3
  %doubleNegativeMultiplication = mul i64 %37, -3
  %exactDivision = sdiv i64 %doubleNegativeMultiplication, 6
  %inexactDivision = sdiv i64 %36, 2
  %__rtrnVal0__ = icmp eq i64 %36, 5
  %__rtrnVal1__ = icmp eq i64 %37, -10
  %__rtrnVal2__ = icmp eq i64 %positiveMultiplication, 15
  %__rtrnVal3__ = icmp eq i64 %negativeMultiplication, -30
  %__rtrnVal4__ = icmp eq i64 %doubleNegativeMultiplication, 30
  %__rtrnVal5__ = icmp eq i64 %exactDivision, 5
  %__rtrnVal6__ = icmp eq i64 %inexactDivision, 2
  %38 = insertvalue { i1, i1, i1, i1, i1, i1, i1 } zeroinitializer, i1 %__rtrnVal0__, 0
  %39 = insertvalue { i1, i1, i1, i1, i1, i1, i1 } %38, i1 %__rtrnVal1__, 1
  %40 = insertvalue { i1, i1, i1, i1, i1, i1, i1 } %39, i1 %__rtrnVal2__, 2
  %41 = insertvalue { i1, i1, i1, i1, i1, i1, i1 } %40, i1 %__rtrnVal3__, 3
  %42 = insertvalue { i1, i1, i1, i1, i1, i1, i1 } %41, i1 %__rtrnVal4__, 4
  %43 = insertvalue { i1, i1, i1, i1, i1, i1, i1 } %42, i1 %__rtrnVal5__, 5
  %44 = insertvalue { i1, i1, i1, i1, i1, i1, i1 } %43, i1 %__rtrnVal6__, 6
  call void @__quantum__rt__qubit_release(%Qubit* %q)
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal0__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal1__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal2__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal3__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal4__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal5__)
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal6__)
  call void @__quantum__rt__tuple_end_record_output()
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare %Array* @__quantum__rt__qubit_allocate_array(i64)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_one()

declare i1 @__quantum__rt__result_equal(%Result*, %Result*)

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare void @__quantum__rt__tuple_start_record_output()

declare void @__quantum__rt__bool_record_output(i1)

declare void @__quantum__rt__tuple_end_record_output()

attributes #0 = { "EntryPoint" }
