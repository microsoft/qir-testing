; ModuleID = 'ArithmeticOps.In.bc'

%Result = type opaque
%Qubit = type opaque
%Array = type opaque

define void @Tests__Common__L3__ArithmeticOps() #0 {
entry:
  %results = alloca { [5 x %Result*], i64 }, align 8
  %countMul = alloca i64, align 8
  %countNeg = alloca i64, align 8
  %countPos = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 0, i64* %count, align 4
  store i64 0, i64* %countPos, align 4
  store i64 10, i64* %countNeg, align 4
  store i64 1, i64* %countMul, align 4
  %q = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__1 = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__2 = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__3 = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__4 = call %Qubit* @__quantum__rt__qubit_allocate()
  %0 = insertvalue [5 x %Qubit*] zeroinitializer, %Qubit* %q, 0
  %1 = insertvalue { [5 x %Qubit*], i64 } zeroinitializer, [5 x %Qubit*] %0, 0
  %2 = insertvalue { [5 x %Qubit*], i64 } %1, i64 5, 1
  %3 = extractvalue { [5 x %Qubit*], i64 } %2, 0
  %4 = extractvalue { [5 x %Qubit*], i64 } %2, 1
  %5 = insertvalue [5 x %Qubit*] %3, %Qubit* %q__1, 1
  %6 = insertvalue { [5 x %Qubit*], i64 } zeroinitializer, [5 x %Qubit*] %5, 0
  %7 = insertvalue { [5 x %Qubit*], i64 } %6, i64 5, 1
  %8 = extractvalue { [5 x %Qubit*], i64 } %7, 0
  %9 = extractvalue { [5 x %Qubit*], i64 } %7, 1
  %10 = insertvalue [5 x %Qubit*] %8, %Qubit* %q__2, 2
  %11 = insertvalue { [5 x %Qubit*], i64 } zeroinitializer, [5 x %Qubit*] %10, 0
  %12 = insertvalue { [5 x %Qubit*], i64 } %11, i64 5, 1
  %13 = extractvalue { [5 x %Qubit*], i64 } %12, 0
  %14 = extractvalue { [5 x %Qubit*], i64 } %12, 1
  %15 = insertvalue [5 x %Qubit*] %13, %Qubit* %q__3, 3
  %16 = insertvalue { [5 x %Qubit*], i64 } zeroinitializer, [5 x %Qubit*] %15, 0
  %17 = insertvalue { [5 x %Qubit*], i64 } %16, i64 5, 1
  %18 = extractvalue { [5 x %Qubit*], i64 } %17, 0
  %19 = extractvalue { [5 x %Qubit*], i64 } %17, 1
  %20 = insertvalue [5 x %Qubit*] %18, %Qubit* %q__4, 4
  %21 = insertvalue { [5 x %Qubit*], i64 } zeroinitializer, [5 x %Qubit*] %20, 0
  %qs = insertvalue { [5 x %Qubit*], i64 } %21, i64 5, 1
  call void @__quantum__qis__x__body(%Qubit* %q)
  call void @__quantum__qis__x__body(%Qubit* %q__1)
  call void @__quantum__qis__x__body(%Qubit* %q__2)
  call void @__quantum__qis__x__body(%Qubit* %q__3)
  call void @__quantum__qis__x__body(%Qubit* %q__4)
  %22 = call %Result* @__quantum__rt__result_get_zero()
  %23 = insertvalue [5 x %Result*] zeroinitializer, %Result* %22, 0
  %24 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %23, 0
  %25 = insertvalue { [5 x %Result*], i64 } %24, i64 5, 1
  %26 = extractvalue { [5 x %Result*], i64 } %25, 0
  %27 = extractvalue { [5 x %Result*], i64 } %25, 1
  %28 = insertvalue [5 x %Result*] %26, %Result* %22, 1
  %29 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %28, 0
  %30 = insertvalue { [5 x %Result*], i64 } %29, i64 5, 1
  %31 = extractvalue { [5 x %Result*], i64 } %30, 0
  %32 = extractvalue { [5 x %Result*], i64 } %30, 1
  %33 = insertvalue [5 x %Result*] %31, %Result* %22, 2
  %34 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %33, 0
  %35 = insertvalue { [5 x %Result*], i64 } %34, i64 5, 1
  %36 = extractvalue { [5 x %Result*], i64 } %35, 0
  %37 = extractvalue { [5 x %Result*], i64 } %35, 1
  %38 = insertvalue [5 x %Result*] %36, %Result* %22, 3
  %39 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %38, 0
  %40 = insertvalue { [5 x %Result*], i64 } %39, i64 5, 1
  %41 = extractvalue { [5 x %Result*], i64 } %40, 0
  %42 = extractvalue { [5 x %Result*], i64 } %40, 1
  %43 = insertvalue [5 x %Result*] %41, %Result* %22, 4
  %44 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %43, 0
  %45 = insertvalue { [5 x %Result*], i64 } %44, i64 5, 1
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 1)
  store { [5 x %Result*], i64 } %45, { [5 x %Result*], i64 }* %results, align 8
  %result = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %46 = call %Result* @__quantum__rt__result_get_one()
  %47 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %46)
  br i1 %47, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__1

continue__1:                                      ; preds = %then0__1, %entry
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 -1)
  %48 = extractvalue { [5 x %Result*], i64 } %45, 0
  %49 = extractvalue { [5 x %Result*], i64 } %45, 1
  %50 = insertvalue [5 x %Result*] %48, %Result* %result, 0
  %51 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %50, 0
  %52 = insertvalue { [5 x %Result*], i64 } %51, i64 5, 1
  store { [5 x %Result*], i64 } %52, { [5 x %Result*], i64 }* %results, align 8
  %result__2 = call %Result* @__quantum__qis__m__body(%Qubit* %q__1)
  call void @__quantum__qis__reset__body(%Qubit* %q__1)
  %53 = call %Result* @__quantum__rt__result_get_one()
  %54 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %53)
  br i1 %54, label %then0__2, label %continue__2

then0__2:                                         ; preds = %continue__1
  call void @__quantum__qis__x__body(%Qubit* %q__1)
  br label %continue__2

continue__2:                                      ; preds = %then0__2, %continue__1
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 -1)
  %55 = extractvalue { [5 x %Result*], i64 } %52, 0
  %56 = extractvalue { [5 x %Result*], i64 } %52, 1
  %57 = insertvalue [5 x %Result*] %55, %Result* %result__2, 1
  %58 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %57, 0
  %59 = insertvalue { [5 x %Result*], i64 } %58, i64 5, 1
  store { [5 x %Result*], i64 } %59, { [5 x %Result*], i64 }* %results, align 8
  %result__4 = call %Result* @__quantum__qis__m__body(%Qubit* %q__2)
  call void @__quantum__qis__reset__body(%Qubit* %q__2)
  %60 = call %Result* @__quantum__rt__result_get_one()
  %61 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %60)
  br i1 %61, label %then0__3, label %continue__3

then0__3:                                         ; preds = %continue__2
  call void @__quantum__qis__x__body(%Qubit* %q__2)
  br label %continue__3

continue__3:                                      ; preds = %then0__3, %continue__2
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 -1)
  %62 = extractvalue { [5 x %Result*], i64 } %59, 0
  %63 = extractvalue { [5 x %Result*], i64 } %59, 1
  %64 = insertvalue [5 x %Result*] %62, %Result* %result__4, 2
  %65 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %64, 0
  %66 = insertvalue { [5 x %Result*], i64 } %65, i64 5, 1
  store { [5 x %Result*], i64 } %66, { [5 x %Result*], i64 }* %results, align 8
  %result__6 = call %Result* @__quantum__qis__m__body(%Qubit* %q__3)
  call void @__quantum__qis__reset__body(%Qubit* %q__3)
  %67 = call %Result* @__quantum__rt__result_get_one()
  %68 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %67)
  br i1 %68, label %then0__4, label %continue__4

then0__4:                                         ; preds = %continue__3
  call void @__quantum__qis__x__body(%Qubit* %q__3)
  br label %continue__4

continue__4:                                      ; preds = %then0__4, %continue__3
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 -1)
  %69 = extractvalue { [5 x %Result*], i64 } %66, 0
  %70 = extractvalue { [5 x %Result*], i64 } %66, 1
  %71 = insertvalue [5 x %Result*] %69, %Result* %result__6, 3
  %72 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %71, 0
  %73 = insertvalue { [5 x %Result*], i64 } %72, i64 5, 1
  store { [5 x %Result*], i64 } %73, { [5 x %Result*], i64 }* %results, align 8
  %result__8 = call %Result* @__quantum__qis__m__body(%Qubit* %q__4)
  call void @__quantum__qis__reset__body(%Qubit* %q__4)
  %74 = call %Result* @__quantum__rt__result_get_one()
  %75 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %74)
  br i1 %75, label %then0__5, label %continue__5

then0__5:                                         ; preds = %continue__4
  call void @__quantum__qis__x__body(%Qubit* %q__4)
  br label %continue__5

continue__5:                                      ; preds = %then0__5, %continue__4
  call void @__quantum__rt__result_update_reference_count(%Result* %22, i32 -1)
  %76 = extractvalue { [5 x %Result*], i64 } %73, 0
  %77 = extractvalue { [5 x %Result*], i64 } %73, 1
  %78 = insertvalue [5 x %Result*] %76, %Result* %result__8, 4
  %79 = insertvalue { [5 x %Result*], i64 } zeroinitializer, [5 x %Result*] %78, 0
  %80 = insertvalue { [5 x %Result*], i64 } %79, i64 5, 1
  store { [5 x %Result*], i64 } %80, { [5 x %Result*], i64 }* %results, align 8
  %81 = call %Result* @__quantum__rt__result_get_one()
  %82 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %81)
  br i1 %82, label %then0__6, label %continue__6

then0__6:                                         ; preds = %continue__5
  store i64 1, i64* %count, align 4
  store i64 5, i64* %countPos, align 4
  store i64 8, i64* %countNeg, align 4
  store i64 3, i64* %countMul, align 4
  br label %continue__6

continue__6:                                      ; preds = %then0__6, %continue__5
  %83 = call %Result* @__quantum__rt__result_get_one()
  %84 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %83)
  br i1 %84, label %then0__7, label %continue__7

then0__7:                                         ; preds = %continue__6
  %85 = load i64, i64* %count, align 4
  %86 = add i64 %85, 1
  store i64 %86, i64* %count, align 4
  %87 = load i64, i64* %countPos, align 4
  %88 = add i64 %87, 5
  store i64 %88, i64* %countPos, align 4
  %89 = load i64, i64* %countNeg, align 4
  %90 = sub i64 %89, 2
  store i64 %90, i64* %countNeg, align 4
  %91 = load i64, i64* %countMul, align 4
  %92 = mul i64 %91, 3
  store i64 %92, i64* %countMul, align 4
  br label %continue__7

continue__7:                                      ; preds = %then0__7, %continue__6
  %93 = call %Result* @__quantum__rt__result_get_one()
  %94 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %93)
  br i1 %94, label %then0__8, label %continue__8

then0__8:                                         ; preds = %continue__7
  %95 = load i64, i64* %count, align 4
  %96 = add i64 %95, 1
  store i64 %96, i64* %count, align 4
  %97 = load i64, i64* %countPos, align 4
  %98 = add i64 %97, 5
  store i64 %98, i64* %countPos, align 4
  %99 = load i64, i64* %countNeg, align 4
  %100 = sub i64 %99, 2
  store i64 %100, i64* %countNeg, align 4
  %101 = load i64, i64* %countMul, align 4
  %102 = mul i64 %101, 3
  store i64 %102, i64* %countMul, align 4
  br label %continue__8

continue__8:                                      ; preds = %then0__8, %continue__7
  %103 = call %Result* @__quantum__rt__result_get_one()
  %104 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %103)
  br i1 %104, label %then0__9, label %continue__9

then0__9:                                         ; preds = %continue__8
  %105 = load i64, i64* %count, align 4
  %106 = add i64 %105, 1
  store i64 %106, i64* %count, align 4
  %107 = load i64, i64* %countPos, align 4
  %108 = add i64 %107, 5
  store i64 %108, i64* %countPos, align 4
  %109 = load i64, i64* %countNeg, align 4
  %110 = sub i64 %109, 2
  store i64 %110, i64* %countNeg, align 4
  %111 = load i64, i64* %countMul, align 4
  %112 = mul i64 %111, 3
  store i64 %112, i64* %countMul, align 4
  br label %continue__9

continue__9:                                      ; preds = %then0__9, %continue__8
  %113 = call %Result* @__quantum__rt__result_get_one()
  %114 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %113)
  br i1 %114, label %then0__10, label %continue__10

then0__10:                                        ; preds = %continue__9
  %115 = load i64, i64* %count, align 4
  %116 = add i64 %115, 1
  store i64 %116, i64* %count, align 4
  %117 = load i64, i64* %countPos, align 4
  %118 = add i64 %117, 5
  store i64 %118, i64* %countPos, align 4
  %119 = load i64, i64* %countNeg, align 4
  %120 = sub i64 %119, 2
  store i64 %120, i64* %countNeg, align 4
  %121 = load i64, i64* %countMul, align 4
  %122 = mul i64 %121, 3
  store i64 %122, i64* %countMul, align 4
  br label %continue__10

continue__10:                                     ; preds = %then0__10, %continue__9
  %__rtrnVal0__ = load i64, i64* %count, align 4
  %__rtrnVal1__ = load i64, i64* %countPos, align 4
  %__rtrnVal2__ = load i64, i64* %countNeg, align 4
  %__rtrnVal3__ = load i64, i64* %countMul, align 4
  %123 = insertvalue { i64, i64, i64, i64 } zeroinitializer, i64 %__rtrnVal0__, 0
  %124 = insertvalue { i64, i64, i64, i64 } %123, i64 %__rtrnVal1__, 1
  %125 = insertvalue { i64, i64, i64, i64 } %124, i64 %__rtrnVal2__, 2
  %126 = insertvalue { i64, i64, i64, i64 } %125, i64 %__rtrnVal3__, 3
  call void @__quantum__rt__qubit_release(%Qubit* %q)
  call void @__quantum__rt__qubit_release(%Qubit* %q__1)
  call void @__quantum__rt__qubit_release(%Qubit* %q__2)
  call void @__quantum__rt__qubit_release(%Qubit* %q__3)
  call void @__quantum__rt__qubit_release(%Qubit* %q__4)
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__int_record_output(i64 %__rtrnVal0__)
  call void @__quantum__rt__int_record_output(i64 %__rtrnVal1__)
  call void @__quantum__rt__int_record_output(i64 %__rtrnVal2__)
  call void @__quantum__rt__int_record_output(i64 %__rtrnVal3__)
  call void @__quantum__rt__tuple_end_record_output()
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare %Array* @__quantum__rt__qubit_allocate_array(i64)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__qis__x__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_zero()

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_one()

declare i1 @__quantum__rt__result_equal(%Result*, %Result*)

declare void @__quantum__rt__tuple_start_record_output()

declare void @__quantum__rt__int_record_output(i64)

declare void @__quantum__rt__tuple_end_record_output()

attributes #0 = { "EntryPoint" }
