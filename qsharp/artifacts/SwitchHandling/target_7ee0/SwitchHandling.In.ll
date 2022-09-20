; ModuleID = 'SwitchHandling.In.bc'

%Result = type opaque
%Qubit = type opaque
%Array = type opaque

define void @Tests__Common__L3__SwitchHandling() #0 {
entry:
  %results = alloca { [2 x %Result*], i64 }, align 8
  %rand = alloca i64, align 8
  %q = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__1 = call %Qubit* @__quantum__rt__qubit_allocate()
  %0 = insertvalue [2 x %Qubit*] zeroinitializer, %Qubit* %q, 0
  %1 = insertvalue { [2 x %Qubit*], i64 } zeroinitializer, [2 x %Qubit*] %0, 0
  %2 = insertvalue { [2 x %Qubit*], i64 } %1, i64 2, 1
  %3 = extractvalue { [2 x %Qubit*], i64 } %2, 0
  %4 = extractvalue { [2 x %Qubit*], i64 } %2, 1
  %5 = insertvalue [2 x %Qubit*] %3, %Qubit* %q__1, 1
  %6 = insertvalue { [2 x %Qubit*], i64 } zeroinitializer, [2 x %Qubit*] %5, 0
  %qs = insertvalue { [2 x %Qubit*], i64 } %6, i64 2, 1
  call void @__quantum__qis__x__body(%Qubit* %q)
  call void @__quantum__qis__x__body(%Qubit* %q__1)
  store i64 0, i64* %rand, align 4
  %7 = call %Result* @__quantum__rt__result_get_zero()
  %8 = insertvalue [2 x %Result*] zeroinitializer, %Result* %7, 0
  %9 = insertvalue { [2 x %Result*], i64 } zeroinitializer, [2 x %Result*] %8, 0
  %10 = insertvalue { [2 x %Result*], i64 } %9, i64 2, 1
  %11 = extractvalue { [2 x %Result*], i64 } %10, 0
  %12 = extractvalue { [2 x %Result*], i64 } %10, 1
  %13 = insertvalue [2 x %Result*] %11, %Result* %7, 1
  %14 = insertvalue { [2 x %Result*], i64 } zeroinitializer, [2 x %Result*] %13, 0
  %15 = insertvalue { [2 x %Result*], i64 } %14, i64 2, 1
  call void @__quantum__rt__result_update_reference_count(%Result* %7, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %7, i32 1)
  store { [2 x %Result*], i64 } %15, { [2 x %Result*], i64 }* %results, align 8
  %result = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %16 = call %Result* @__quantum__rt__result_get_one()
  %17 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %16)
  br i1 %17, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__1

continue__1:                                      ; preds = %then0__1, %entry
  call void @__quantum__rt__result_update_reference_count(%Result* %7, i32 -1)
  %18 = extractvalue { [2 x %Result*], i64 } %15, 0
  %19 = extractvalue { [2 x %Result*], i64 } %15, 1
  %20 = insertvalue [2 x %Result*] %18, %Result* %result, 0
  %21 = insertvalue { [2 x %Result*], i64 } zeroinitializer, [2 x %Result*] %20, 0
  %22 = insertvalue { [2 x %Result*], i64 } %21, i64 2, 1
  store { [2 x %Result*], i64 } %22, { [2 x %Result*], i64 }* %results, align 8
  %result__2 = call %Result* @__quantum__qis__m__body(%Qubit* %q__1)
  call void @__quantum__qis__reset__body(%Qubit* %q__1)
  %23 = call %Result* @__quantum__rt__result_get_one()
  %24 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %23)
  br i1 %24, label %then0__2, label %continue__2

then0__2:                                         ; preds = %continue__1
  call void @__quantum__qis__x__body(%Qubit* %q__1)
  br label %continue__2

continue__2:                                      ; preds = %then0__2, %continue__1
  call void @__quantum__rt__result_update_reference_count(%Result* %7, i32 -1)
  %25 = extractvalue { [2 x %Result*], i64 } %22, 0
  %26 = extractvalue { [2 x %Result*], i64 } %22, 1
  %27 = insertvalue [2 x %Result*] %25, %Result* %result__2, 1
  %28 = insertvalue { [2 x %Result*], i64 } zeroinitializer, [2 x %Result*] %27, 0
  %29 = insertvalue { [2 x %Result*], i64 } %28, i64 2, 1
  store { [2 x %Result*], i64 } %29, { [2 x %Result*], i64 }* %results, align 8
  store i64 0, i64* %rand, align 4
  %30 = call %Result* @__quantum__rt__result_get_one()
  %31 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %30)
  br i1 %31, label %then0__3, label %continue__3

then0__3:                                         ; preds = %continue__2
  store i64 1, i64* %rand, align 4
  br label %continue__3

continue__3:                                      ; preds = %then0__3, %continue__2
  %32 = load i64, i64* %rand, align 4
  %33 = shl i64 %32, 1
  store i64 %33, i64* %rand, align 4
  %34 = call %Result* @__quantum__rt__result_get_one()
  %35 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %34)
  br i1 %35, label %then0__4, label %continue__4

then0__4:                                         ; preds = %continue__3
  %36 = add i64 %33, 1
  store i64 %36, i64* %rand, align 4
  br label %continue__4

continue__4:                                      ; preds = %then0__4, %continue__3
  %q__2 = call %Qubit* @__quantum__rt__qubit_allocate()
  %37 = load i64, i64* %rand, align 4
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %then0__5, label %test1__1

then0__5:                                         ; preds = %continue__4
  br label %continue__6

continue__6:                                      ; preds = %then0__5
  br label %continue__5

test1__1:                                         ; preds = %continue__4
  %39 = load i64, i64* %rand, align 4
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %then1__1, label %test2__1

then1__1:                                         ; preds = %test1__1
  br i1 true, label %then1__2, label %continue__7

then1__2:                                         ; preds = %then1__1
  call void @__quantum__qis__ry__body(double 0x400921FB54442D18, %Qubit* %q__2)
  br label %continue__7

continue__7:                                      ; preds = %then1__2, %then1__1
  br label %continue__5

test2__1:                                         ; preds = %test1__1
  %41 = load i64, i64* %rand, align 4
  %42 = icmp eq i64 %41, 2
  br i1 %42, label %then2__1, label %else__1

then2__1:                                         ; preds = %test2__1
  br i1 true, label %then2__2, label %continue__8

then2__2:                                         ; preds = %then2__1
  call void @__quantum__qis__rz__body(double 0x400921FB54442D18, %Qubit* %q__2)
  br label %continue__8

continue__8:                                      ; preds = %then2__2, %then2__1
  br label %continue__5

else__1:                                          ; preds = %test2__1
  br i1 true, label %then0__6, label %continue__9

then0__6:                                         ; preds = %else__1
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* %q__2)
  br label %continue__9

continue__9:                                      ; preds = %then0__6, %else__1
  br label %continue__5

continue__5:                                      ; preds = %continue__9, %continue__8, %continue__7, %continue__6
  %result__4 = call %Result* @__quantum__qis__m__body(%Qubit* %q__2)
  call void @__quantum__qis__reset__body(%Qubit* %q__2)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__4, i32 -1)
  call void @__quantum__rt__qubit_release(%Qubit* %q__2)
  call void @__quantum__rt__qubit_release(%Qubit* %q)
  call void @__quantum__rt__qubit_release(%Qubit* %q__1)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__4, i32 1)
  call void @__quantum__rt__result_record_output(%Result* %result__4)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__4, i32 -1)
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

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__rt__result_record_output(%Result*)

attributes #0 = { "EntryPoint" }
