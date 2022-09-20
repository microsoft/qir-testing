; ModuleID = 'NestedBranching.In.bc'

%Result = type opaque
%Qubit = type opaque
%Array = type opaque

define void @Tests__Common__L3__NestedBranching() #0 {
entry:
  %results__1 = alloca { [4 x %Result*], i64 }, align 8
  %bits = alloca i64, align 8
  %a = alloca i64, align 8
  %results = alloca { [3 x %Result*], i64 }, align 8
  %qubit = call %Qubit* @__quantum__rt__qubit_allocate()
  %qubit__2 = call %Qubit* @__quantum__rt__qubit_allocate()
  %qubit__14 = call %Qubit* @__quantum__rt__qubit_allocate()
  %0 = insertvalue [3 x %Qubit*] zeroinitializer, %Qubit* %qubit, 0
  %1 = insertvalue { [3 x %Qubit*], i64 } zeroinitializer, [3 x %Qubit*] %0, 0
  %2 = insertvalue { [3 x %Qubit*], i64 } %1, i64 3, 1
  %3 = extractvalue { [3 x %Qubit*], i64 } %2, 0
  %4 = extractvalue { [3 x %Qubit*], i64 } %2, 1
  %5 = insertvalue [3 x %Qubit*] %3, %Qubit* %qubit__2, 1
  %6 = insertvalue { [3 x %Qubit*], i64 } zeroinitializer, [3 x %Qubit*] %5, 0
  %7 = insertvalue { [3 x %Qubit*], i64 } %6, i64 3, 1
  %8 = extractvalue { [3 x %Qubit*], i64 } %7, 0
  %9 = extractvalue { [3 x %Qubit*], i64 } %7, 1
  %10 = insertvalue [3 x %Qubit*] %8, %Qubit* %qubit__14, 2
  %11 = insertvalue { [3 x %Qubit*], i64 } zeroinitializer, [3 x %Qubit*] %10, 0
  %registerA = insertvalue { [3 x %Qubit*], i64 } %11, i64 3, 1
  br i1 true, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  call void @__quantum__qis__x__body(%Qubit* %qubit)
  br i1 true, label %then0__2, label %continue__2

then0__2:                                         ; preds = %then0__1
  call void @__quantum__qis__x__body(%Qubit* %qubit__2)
  br label %continue__3

continue__3:                                      ; preds = %then0__2
  br label %continue__2

continue__2:                                      ; preds = %continue__3, %then0__1
  br label %continue__1

continue__1:                                      ; preds = %continue__2, %entry
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
  %result = call %Result* @__quantum__qis__m__body(%Qubit* %qubit)
  call void @__quantum__qis__reset__body(%Qubit* %qubit)
  %26 = call %Result* @__quantum__rt__result_get_one()
  %27 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %26)
  br i1 %27, label %then0__3, label %continue__4

then0__3:                                         ; preds = %continue__1
  call void @__quantum__qis__x__body(%Qubit* %qubit)
  br label %continue__4

continue__4:                                      ; preds = %then0__3, %continue__1
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 -1)
  %28 = extractvalue { [3 x %Result*], i64 } %25, 0
  %29 = extractvalue { [3 x %Result*], i64 } %25, 1
  %30 = insertvalue [3 x %Result*] %28, %Result* %result, 0
  %31 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %30, 0
  %32 = insertvalue { [3 x %Result*], i64 } %31, i64 3, 1
  store { [3 x %Result*], i64 } %32, { [3 x %Result*], i64 }* %results, align 8
  %result__2 = call %Result* @__quantum__qis__m__body(%Qubit* %qubit__2)
  call void @__quantum__qis__reset__body(%Qubit* %qubit__2)
  %33 = call %Result* @__quantum__rt__result_get_one()
  %34 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %33)
  br i1 %34, label %then0__4, label %continue__5

then0__4:                                         ; preds = %continue__4
  call void @__quantum__qis__x__body(%Qubit* %qubit__2)
  br label %continue__5

continue__5:                                      ; preds = %then0__4, %continue__4
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 -1)
  %35 = extractvalue { [3 x %Result*], i64 } %32, 0
  %36 = extractvalue { [3 x %Result*], i64 } %32, 1
  %37 = insertvalue [3 x %Result*] %35, %Result* %result__2, 1
  %38 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %37, 0
  %39 = insertvalue { [3 x %Result*], i64 } %38, i64 3, 1
  store { [3 x %Result*], i64 } %39, { [3 x %Result*], i64 }* %results, align 8
  %result__4 = call %Result* @__quantum__qis__m__body(%Qubit* %qubit__14)
  call void @__quantum__qis__reset__body(%Qubit* %qubit__14)
  %40 = call %Result* @__quantum__rt__result_get_one()
  %41 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %40)
  br i1 %41, label %then0__5, label %continue__6

then0__5:                                         ; preds = %continue__5
  call void @__quantum__qis__x__body(%Qubit* %qubit__14)
  br label %continue__6

continue__6:                                      ; preds = %then0__5, %continue__5
  call void @__quantum__rt__result_update_reference_count(%Result* %12, i32 -1)
  %42 = extractvalue { [3 x %Result*], i64 } %39, 0
  %43 = extractvalue { [3 x %Result*], i64 } %39, 1
  %44 = insertvalue [3 x %Result*] %42, %Result* %result__4, 2
  %45 = insertvalue { [3 x %Result*], i64 } zeroinitializer, [3 x %Result*] %44, 0
  %registerAMeasurements = insertvalue { [3 x %Result*], i64 } %45, i64 3, 1
  store { [3 x %Result*], i64 } %registerAMeasurements, { [3 x %Result*], i64 }* %results, align 8
  store i64 0, i64* %a, align 4
  %46 = call %Result* @__quantum__rt__result_get_zero()
  %47 = call i1 @__quantum__rt__result_equal(%Result* %result, %Result* %46)
  br i1 %47, label %then0__6, label %else__1

then0__6:                                         ; preds = %continue__6
  %48 = call %Result* @__quantum__rt__result_get_zero()
  %49 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %48)
  br i1 %49, label %condTrue__1, label %condContinue__1

condTrue__1:                                      ; preds = %then0__6
  %50 = call %Result* @__quantum__rt__result_get_zero()
  %51 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %50)
  br label %condContinue__1

condContinue__1:                                  ; preds = %condTrue__1, %then0__6
  %52 = phi i1 [ %51, %condTrue__1 ], [ %49, %then0__6 ]
  br i1 %52, label %then0__7, label %test1__1

then0__7:                                         ; preds = %condContinue__1
  store i64 0, i64* %a, align 4
  br label %continue__8

test1__1:                                         ; preds = %condContinue__1
  %53 = call %Result* @__quantum__rt__result_get_zero()
  %54 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %53)
  br i1 %54, label %condTrue__2, label %condContinue__2

condTrue__2:                                      ; preds = %test1__1
  %55 = call %Result* @__quantum__rt__result_get_one()
  %56 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %55)
  br label %condContinue__2

condContinue__2:                                  ; preds = %condTrue__2, %test1__1
  %57 = phi i1 [ %56, %condTrue__2 ], [ %54, %test1__1 ]
  br i1 %57, label %then1__1, label %test2__1

then1__1:                                         ; preds = %condContinue__2
  store i64 1, i64* %a, align 4
  br label %continue__8

test2__1:                                         ; preds = %condContinue__2
  %58 = call %Result* @__quantum__rt__result_get_one()
  %59 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %58)
  br i1 %59, label %condTrue__3, label %condContinue__3

condTrue__3:                                      ; preds = %test2__1
  %60 = call %Result* @__quantum__rt__result_get_zero()
  %61 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %60)
  br label %condContinue__3

condContinue__3:                                  ; preds = %condTrue__3, %test2__1
  %62 = phi i1 [ %61, %condTrue__3 ], [ %59, %test2__1 ]
  br i1 %62, label %then2__1, label %else__2

then2__1:                                         ; preds = %condContinue__3
  store i64 2, i64* %a, align 4
  br label %continue__8

else__2:                                          ; preds = %condContinue__3
  store i64 3, i64* %a, align 4
  br label %continue__8

continue__8:                                      ; preds = %else__2, %then2__1, %then1__1, %then0__7
  br label %continue__7

else__1:                                          ; preds = %continue__6
  %63 = call %Result* @__quantum__rt__result_get_zero()
  %64 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %63)
  br i1 %64, label %condTrue__4, label %condContinue__4

condTrue__4:                                      ; preds = %else__1
  %65 = call %Result* @__quantum__rt__result_get_zero()
  %66 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %65)
  br label %condContinue__4

condContinue__4:                                  ; preds = %condTrue__4, %else__1
  %67 = phi i1 [ %66, %condTrue__4 ], [ %64, %else__1 ]
  br i1 %67, label %then0__8, label %test1__2

then0__8:                                         ; preds = %condContinue__4
  store i64 4, i64* %a, align 4
  br label %continue__9

test1__2:                                         ; preds = %condContinue__4
  %68 = call %Result* @__quantum__rt__result_get_zero()
  %69 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %68)
  br i1 %69, label %condTrue__5, label %condContinue__5

condTrue__5:                                      ; preds = %test1__2
  %70 = call %Result* @__quantum__rt__result_get_one()
  %71 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %70)
  br label %condContinue__5

condContinue__5:                                  ; preds = %condTrue__5, %test1__2
  %72 = phi i1 [ %71, %condTrue__5 ], [ %69, %test1__2 ]
  br i1 %72, label %then1__2, label %test2__2

then1__2:                                         ; preds = %condContinue__5
  store i64 5, i64* %a, align 4
  br label %continue__9

test2__2:                                         ; preds = %condContinue__5
  %73 = call %Result* @__quantum__rt__result_get_one()
  %74 = call i1 @__quantum__rt__result_equal(%Result* %result__2, %Result* %73)
  br i1 %74, label %condTrue__6, label %condContinue__6

condTrue__6:                                      ; preds = %test2__2
  %75 = call %Result* @__quantum__rt__result_get_zero()
  %76 = call i1 @__quantum__rt__result_equal(%Result* %result__4, %Result* %75)
  br label %condContinue__6

condContinue__6:                                  ; preds = %condTrue__6, %test2__2
  %77 = phi i1 [ %76, %condTrue__6 ], [ %74, %test2__2 ]
  br i1 %77, label %then2__2, label %else__3

then2__2:                                         ; preds = %condContinue__6
  store i64 6, i64* %a, align 4
  br label %continue__9

else__3:                                          ; preds = %condContinue__6
  store i64 7, i64* %a, align 4
  br label %continue__9

continue__9:                                      ; preds = %else__3, %then2__2, %then1__2, %then0__8
  br label %continue__7

continue__7:                                      ; preds = %continue__9, %continue__8
  %q = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__1 = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__2 = call %Qubit* @__quantum__rt__qubit_allocate()
  %q__3 = call %Qubit* @__quantum__rt__qubit_allocate()
  %78 = insertvalue [4 x %Qubit*] zeroinitializer, %Qubit* %q, 0
  %79 = insertvalue { [4 x %Qubit*], i64 } zeroinitializer, [4 x %Qubit*] %78, 0
  %80 = insertvalue { [4 x %Qubit*], i64 } %79, i64 4, 1
  %81 = extractvalue { [4 x %Qubit*], i64 } %80, 0
  %82 = extractvalue { [4 x %Qubit*], i64 } %80, 1
  %83 = insertvalue [4 x %Qubit*] %81, %Qubit* %q__1, 1
  %84 = insertvalue { [4 x %Qubit*], i64 } zeroinitializer, [4 x %Qubit*] %83, 0
  %85 = insertvalue { [4 x %Qubit*], i64 } %84, i64 4, 1
  %86 = extractvalue { [4 x %Qubit*], i64 } %85, 0
  %87 = extractvalue { [4 x %Qubit*], i64 } %85, 1
  %88 = insertvalue [4 x %Qubit*] %86, %Qubit* %q__2, 2
  %89 = insertvalue { [4 x %Qubit*], i64 } zeroinitializer, [4 x %Qubit*] %88, 0
  %90 = insertvalue { [4 x %Qubit*], i64 } %89, i64 4, 1
  %91 = extractvalue { [4 x %Qubit*], i64 } %90, 0
  %92 = extractvalue { [4 x %Qubit*], i64 } %90, 1
  %93 = insertvalue [4 x %Qubit*] %91, %Qubit* %q__3, 3
  %94 = insertvalue { [4 x %Qubit*], i64 } zeroinitializer, [4 x %Qubit*] %93, 0
  %registerB = insertvalue { [4 x %Qubit*], i64 } %94, i64 4, 1
  %target = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__x__body(%Qubit* %target)
  store i64 7, i64* %bits, align 4
  br i1 true, label %then0__9, label %continue__10

then0__9:                                         ; preds = %continue__7
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__10

continue__10:                                     ; preds = %then0__9, %continue__7
  store i64 3, i64* %bits, align 4
  br i1 true, label %then0__10, label %continue__11

then0__10:                                        ; preds = %continue__10
  call void @__quantum__qis__x__body(%Qubit* %q__1)
  br label %continue__11

continue__11:                                     ; preds = %then0__10, %continue__10
  store i64 1, i64* %bits, align 4
  br i1 true, label %then0__11, label %continue__12

then0__11:                                        ; preds = %continue__11
  call void @__quantum__qis__x__body(%Qubit* %q__2)
  br label %continue__12

continue__12:                                     ; preds = %then0__11, %continue__11
  store i64 0, i64* %bits, align 4
  br label %continue__13

continue__13:                                     ; preds = %continue__12
  store i64 0, i64* %bits, align 4
  %95 = call %Result* @__quantum__rt__result_get_zero()
  %96 = insertvalue [4 x %Result*] zeroinitializer, %Result* %95, 0
  %97 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %96, 0
  %98 = insertvalue { [4 x %Result*], i64 } %97, i64 4, 1
  %99 = extractvalue { [4 x %Result*], i64 } %98, 0
  %100 = extractvalue { [4 x %Result*], i64 } %98, 1
  %101 = insertvalue [4 x %Result*] %99, %Result* %95, 1
  %102 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %101, 0
  %103 = insertvalue { [4 x %Result*], i64 } %102, i64 4, 1
  %104 = extractvalue { [4 x %Result*], i64 } %103, 0
  %105 = extractvalue { [4 x %Result*], i64 } %103, 1
  %106 = insertvalue [4 x %Result*] %104, %Result* %95, 2
  %107 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %106, 0
  %108 = insertvalue { [4 x %Result*], i64 } %107, i64 4, 1
  %109 = extractvalue { [4 x %Result*], i64 } %108, 0
  %110 = extractvalue { [4 x %Result*], i64 } %108, 1
  %111 = insertvalue [4 x %Result*] %109, %Result* %95, 3
  %112 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %111, 0
  %113 = insertvalue { [4 x %Result*], i64 } %112, i64 4, 1
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 1)
  store { [4 x %Result*], i64 } %113, { [4 x %Result*], i64 }* %results__1, align 8
  %result__6 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %114 = call %Result* @__quantum__rt__result_get_one()
  %115 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %114)
  br i1 %115, label %then0__12, label %continue__14

then0__12:                                        ; preds = %continue__13
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__14

continue__14:                                     ; preds = %then0__12, %continue__13
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 -1)
  %116 = extractvalue { [4 x %Result*], i64 } %113, 0
  %117 = extractvalue { [4 x %Result*], i64 } %113, 1
  %118 = insertvalue [4 x %Result*] %116, %Result* %result__6, 0
  %119 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %118, 0
  %120 = insertvalue { [4 x %Result*], i64 } %119, i64 4, 1
  store { [4 x %Result*], i64 } %120, { [4 x %Result*], i64 }* %results__1, align 8
  %result__8 = call %Result* @__quantum__qis__m__body(%Qubit* %q__1)
  call void @__quantum__qis__reset__body(%Qubit* %q__1)
  %121 = call %Result* @__quantum__rt__result_get_one()
  %122 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %121)
  br i1 %122, label %then0__13, label %continue__15

then0__13:                                        ; preds = %continue__14
  call void @__quantum__qis__x__body(%Qubit* %q__1)
  br label %continue__15

continue__15:                                     ; preds = %then0__13, %continue__14
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 -1)
  %123 = extractvalue { [4 x %Result*], i64 } %120, 0
  %124 = extractvalue { [4 x %Result*], i64 } %120, 1
  %125 = insertvalue [4 x %Result*] %123, %Result* %result__8, 1
  %126 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %125, 0
  %127 = insertvalue { [4 x %Result*], i64 } %126, i64 4, 1
  store { [4 x %Result*], i64 } %127, { [4 x %Result*], i64 }* %results__1, align 8
  %result__10 = call %Result* @__quantum__qis__m__body(%Qubit* %q__2)
  call void @__quantum__qis__reset__body(%Qubit* %q__2)
  %128 = call %Result* @__quantum__rt__result_get_one()
  %129 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %128)
  br i1 %129, label %then0__14, label %continue__16

then0__14:                                        ; preds = %continue__15
  call void @__quantum__qis__x__body(%Qubit* %q__2)
  br label %continue__16

continue__16:                                     ; preds = %then0__14, %continue__15
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 -1)
  %130 = extractvalue { [4 x %Result*], i64 } %127, 0
  %131 = extractvalue { [4 x %Result*], i64 } %127, 1
  %132 = insertvalue [4 x %Result*] %130, %Result* %result__10, 2
  %133 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %132, 0
  %134 = insertvalue { [4 x %Result*], i64 } %133, i64 4, 1
  store { [4 x %Result*], i64 } %134, { [4 x %Result*], i64 }* %results__1, align 8
  %result__12 = call %Result* @__quantum__qis__m__body(%Qubit* %q__3)
  call void @__quantum__qis__reset__body(%Qubit* %q__3)
  %135 = call %Result* @__quantum__rt__result_get_one()
  %136 = call i1 @__quantum__rt__result_equal(%Result* %result__12, %Result* %135)
  br i1 %136, label %then0__15, label %continue__17

then0__15:                                        ; preds = %continue__16
  call void @__quantum__qis__x__body(%Qubit* %q__3)
  br label %continue__17

continue__17:                                     ; preds = %then0__15, %continue__16
  call void @__quantum__rt__result_update_reference_count(%Result* %95, i32 -1)
  %137 = extractvalue { [4 x %Result*], i64 } %134, 0
  %138 = extractvalue { [4 x %Result*], i64 } %134, 1
  %139 = insertvalue [4 x %Result*] %137, %Result* %result__12, 3
  %140 = insertvalue { [4 x %Result*], i64 } zeroinitializer, [4 x %Result*] %139, 0
  %registerBMeasurements = insertvalue { [4 x %Result*], i64 } %140, i64 4, 1
  store { [4 x %Result*], i64 } %registerBMeasurements, { [4 x %Result*], i64 }* %results__1, align 8
  %141 = call %Result* @__quantum__rt__result_get_zero()
  %142 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %141)
  br i1 %142, label %then0__16, label %test1__3

then0__16:                                        ; preds = %continue__17
  %143 = call %Result* @__quantum__rt__result_get_zero()
  %144 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %143)
  br i1 %144, label %then0__17, label %else__4

then0__17:                                        ; preds = %then0__16
  %145 = call %Result* @__quantum__rt__result_get_zero()
  %146 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %145)
  br i1 %146, label %then0__18, label %else__5

then0__18:                                        ; preds = %then0__17
  br label %continue__20

else__5:                                          ; preds = %then0__17
  call void @__quantum__qis__x__body(%Qubit* %target)
  call void @__quantum__qis__x__body(%Qubit* %target)
  br label %continue__20

continue__20:                                     ; preds = %else__5, %then0__18
  br label %continue__19

else__4:                                          ; preds = %then0__16
  %147 = call %Result* @__quantum__rt__result_get_zero()
  %148 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %147)
  br i1 %148, label %then0__19, label %else__6

then0__19:                                        ; preds = %else__4
  call void @__quantum__qis__y__body(%Qubit* %target)
  call void @__quantum__qis__y__body(%Qubit* %target)
  br label %continue__21

else__6:                                          ; preds = %else__4
  call void @__quantum__qis__z__body(%Qubit* %target)
  call void @__quantum__qis__z__body(%Qubit* %target)
  br label %continue__21

continue__21:                                     ; preds = %else__6, %then0__19
  br label %continue__19

continue__19:                                     ; preds = %continue__21, %continue__20
  br label %continue__18

test1__3:                                         ; preds = %continue__17
  %149 = call %Result* @__quantum__rt__result_get_zero()
  %150 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %149)
  br i1 %150, label %condTrue__7, label %condContinue__7

condTrue__7:                                      ; preds = %test1__3
  %151 = call %Result* @__quantum__rt__result_get_one()
  %152 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %151)
  br label %condContinue__7

condContinue__7:                                  ; preds = %condTrue__7, %test1__3
  %153 = phi i1 [ %152, %condTrue__7 ], [ %150, %test1__3 ]
  br i1 %153, label %then1__3, label %test2__3

then1__3:                                         ; preds = %condContinue__7
  %154 = call %Result* @__quantum__rt__result_get_zero()
  %155 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %154)
  br i1 %155, label %then0__20, label %else__7

then0__20:                                        ; preds = %then1__3
  %156 = call %Result* @__quantum__rt__result_get_zero()
  %157 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %156)
  br i1 %157, label %then0__21, label %else__8

then0__21:                                        ; preds = %then0__20
  br label %continue__23

else__8:                                          ; preds = %then0__20
  call void @__quantum__qis__x__body(%Qubit* %target)
  call void @__quantum__qis__x__body(%Qubit* %target)
  br label %continue__23

continue__23:                                     ; preds = %else__8, %then0__21
  br label %continue__22

else__7:                                          ; preds = %then1__3
  %158 = call %Result* @__quantum__rt__result_get_zero()
  %159 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %158)
  br i1 %159, label %then0__22, label %else__9

then0__22:                                        ; preds = %else__7
  call void @__quantum__qis__y__body(%Qubit* %target)
  call void @__quantum__qis__y__body(%Qubit* %target)
  br label %continue__24

else__9:                                          ; preds = %else__7
  call void @__quantum__qis__z__body(%Qubit* %target)
  call void @__quantum__qis__z__body(%Qubit* %target)
  br label %continue__24

continue__24:                                     ; preds = %else__9, %then0__22
  br label %continue__22

continue__22:                                     ; preds = %continue__24, %continue__23
  br label %continue__18

test2__3:                                         ; preds = %condContinue__7
  %160 = call %Result* @__quantum__rt__result_get_one()
  %161 = call i1 @__quantum__rt__result_equal(%Result* %result__6, %Result* %160)
  br i1 %161, label %condTrue__8, label %condContinue__8

condTrue__8:                                      ; preds = %test2__3
  %162 = call %Result* @__quantum__rt__result_get_zero()
  %163 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %162)
  br label %condContinue__8

condContinue__8:                                  ; preds = %condTrue__8, %test2__3
  %164 = phi i1 [ %163, %condTrue__8 ], [ %161, %test2__3 ]
  br i1 %164, label %then2__3, label %else__10

then2__3:                                         ; preds = %condContinue__8
  %165 = call %Result* @__quantum__rt__result_get_zero()
  %166 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %165)
  br i1 %166, label %then0__23, label %else__11

then0__23:                                        ; preds = %then2__3
  %167 = call %Result* @__quantum__rt__result_get_zero()
  %168 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %167)
  br i1 %168, label %then0__24, label %else__12

then0__24:                                        ; preds = %then0__23
  br label %continue__26

else__12:                                         ; preds = %then0__23
  call void @__quantum__qis__x__body(%Qubit* %target)
  call void @__quantum__qis__x__body(%Qubit* %target)
  br label %continue__26

continue__26:                                     ; preds = %else__12, %then0__24
  br label %continue__25

else__11:                                         ; preds = %then2__3
  %169 = call %Result* @__quantum__rt__result_get_zero()
  %170 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %169)
  br i1 %170, label %then0__25, label %else__13

then0__25:                                        ; preds = %else__11
  call void @__quantum__qis__y__body(%Qubit* %target)
  call void @__quantum__qis__y__body(%Qubit* %target)
  br label %continue__27

else__13:                                         ; preds = %else__11
  call void @__quantum__qis__z__body(%Qubit* %target)
  call void @__quantum__qis__z__body(%Qubit* %target)
  br label %continue__27

continue__27:                                     ; preds = %else__13, %then0__25
  br label %continue__25

continue__25:                                     ; preds = %continue__27, %continue__26
  br label %continue__18

else__10:                                         ; preds = %condContinue__8
  %171 = call %Result* @__quantum__rt__result_get_zero()
  %172 = call i1 @__quantum__rt__result_equal(%Result* %result__8, %Result* %171)
  br i1 %172, label %then0__26, label %else__14

then0__26:                                        ; preds = %else__10
  %173 = call %Result* @__quantum__rt__result_get_zero()
  %174 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %173)
  br i1 %174, label %then0__27, label %else__15

then0__27:                                        ; preds = %then0__26
  br label %continue__29

else__15:                                         ; preds = %then0__26
  call void @__quantum__qis__x__body(%Qubit* %target)
  call void @__quantum__qis__x__body(%Qubit* %target)
  br label %continue__29

continue__29:                                     ; preds = %else__15, %then0__27
  br label %continue__28

else__14:                                         ; preds = %else__10
  %175 = call %Result* @__quantum__rt__result_get_zero()
  %176 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %175)
  br i1 %176, label %then0__28, label %else__16

then0__28:                                        ; preds = %else__14
  call void @__quantum__qis__y__body(%Qubit* %target)
  call void @__quantum__qis__y__body(%Qubit* %target)
  br label %continue__30

else__16:                                         ; preds = %else__14
  call void @__quantum__qis__z__body(%Qubit* %target)
  call void @__quantum__qis__z__body(%Qubit* %target)
  br label %continue__30

continue__30:                                     ; preds = %else__16, %then0__28
  br label %continue__28

continue__28:                                     ; preds = %continue__30, %continue__29
  br label %continue__18

continue__18:                                     ; preds = %continue__28, %continue__25, %continue__22, %continue__19
  %__rtrnVal1__ = load i64, i64* %a, align 4
  %177 = insertvalue { { [3 x %Result*], i64 }, i64 } zeroinitializer, { [3 x %Result*], i64 } %registerAMeasurements, 0
  %178 = insertvalue { { [3 x %Result*], i64 }, i64 } %177, i64 %__rtrnVal1__, 1
  %result__14 = call %Result* @__quantum__qis__m__body(%Qubit* %target)
  call void @__quantum__qis__reset__body(%Qubit* %target)
  %179 = call %Result* @__quantum__rt__result_get_one()
  %__rtrnVal3__ = call i1 @__quantum__rt__result_equal(%Result* %result__14, %Result* %179)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__14, i32 -1)
  %180 = insertvalue { { [4 x %Result*], i64 }, i1 } zeroinitializer, { [4 x %Result*], i64 } %registerBMeasurements, 0
  %181 = insertvalue { { [4 x %Result*], i64 }, i1 } %180, i1 %__rtrnVal3__, 1
  %182 = insertvalue { { { [3 x %Result*], i64 }, i64 }, { { [4 x %Result*], i64 }, i1 } } zeroinitializer, { { [3 x %Result*], i64 }, i64 } %178, 0
  %183 = insertvalue { { { [3 x %Result*], i64 }, i64 }, { { [4 x %Result*], i64 }, i1 } } %182, { { [4 x %Result*], i64 }, i1 } %181, 1
  call void @__quantum__rt__qubit_release(%Qubit* %target)
  call void @__quantum__rt__qubit_release(%Qubit* %q)
  call void @__quantum__rt__qubit_release(%Qubit* %q__1)
  call void @__quantum__rt__qubit_release(%Qubit* %q__2)
  call void @__quantum__rt__qubit_release(%Qubit* %q__3)
  call void @__quantum__rt__qubit_release(%Qubit* %qubit)
  call void @__quantum__rt__qubit_release(%Qubit* %qubit__2)
  call void @__quantum__rt__qubit_release(%Qubit* %qubit__14)
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* %result)
  call void @__quantum__rt__result_record_output(%Result* %result__2)
  call void @__quantum__rt__result_record_output(%Result* %result__4)
  call void @__quantum__rt__array_end_record_output()
  call void @__quantum__rt__int_record_output(i64 %__rtrnVal1__)
  call void @__quantum__rt__tuple_end_record_output()
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* %result__6)
  call void @__quantum__rt__result_record_output(%Result* %result__8)
  call void @__quantum__rt__result_record_output(%Result* %result__10)
  call void @__quantum__rt__result_record_output(%Result* %result__12)
  call void @__quantum__rt__array_end_record_output()
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal3__)
  call void @__quantum__rt__tuple_end_record_output()
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

declare void @__quantum__qis__y__body(%Qubit*)

declare void @__quantum__qis__z__body(%Qubit*)

declare void @__quantum__rt__tuple_start_record_output()

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_end_record_output()

declare void @__quantum__rt__int_record_output(i64)

declare void @__quantum__rt__tuple_end_record_output()

declare void @__quantum__rt__bool_record_output(i1)

attributes #0 = { "EntryPoint" }
