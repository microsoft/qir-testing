; ModuleID = 'IntegerComparison.In.bc'

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
  store i64 1, i64* %count, align 4
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
  %9 = add i64 %8, 1
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
  %15 = add i64 %14, 1
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
  %21 = add i64 %20, 1
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
  %27 = add i64 %26, 1
  store i64 %27, i64* %count, align 4
  br label %continue__9

continue__9:                                      ; preds = %then0__10, %continue__10
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__10 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %28 = call %Result* @__quantum__rt__result_get_one()
  %29 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %28)
  br i1 %29, label %then0__11, label %continue__12

then0__11:                                        ; preds = %continue__9
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__12

continue__12:                                     ; preds = %then0__11, %continue__9
  %30 = call %Result* @__quantum__rt__result_get_one()
  %31 = call i1 @__quantum__rt__result_equal(%Result* %result__10, %Result* %30)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__10, i32 -1)
  br i1 %31, label %then0__12, label %continue__11

then0__12:                                        ; preds = %continue__12
  call void @__quantum__qis__x__body(%Qubit* %q)
  %32 = load i64, i64* %count, align 4
  %33 = add i64 %32, 1
  store i64 %33, i64* %count, align 4
  br label %continue__11

continue__11:                                     ; preds = %then0__12, %continue__12
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__12 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %34 = call %Result* @__quantum__rt__result_get_one()
  %35 = call i1 @__quantum__rt__result_equal(%Result* %result__12, %Result* %34)
  br i1 %35, label %then0__13, label %continue__14

then0__13:                                        ; preds = %continue__11
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__14

continue__14:                                     ; preds = %then0__13, %continue__11
  %36 = call %Result* @__quantum__rt__result_get_one()
  %37 = call i1 @__quantum__rt__result_equal(%Result* %result__12, %Result* %36)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__12, i32 -1)
  br i1 %37, label %then0__14, label %continue__13

then0__14:                                        ; preds = %continue__14
  call void @__quantum__qis__x__body(%Qubit* %q)
  %38 = load i64, i64* %count, align 4
  %39 = add i64 %38, 1
  store i64 %39, i64* %count, align 4
  br label %continue__13

continue__13:                                     ; preds = %then0__14, %continue__14
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__14 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %40 = call %Result* @__quantum__rt__result_get_one()
  %41 = call i1 @__quantum__rt__result_equal(%Result* %result__14, %Result* %40)
  br i1 %41, label %then0__15, label %continue__16

then0__15:                                        ; preds = %continue__13
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__16

continue__16:                                     ; preds = %then0__15, %continue__13
  %42 = call %Result* @__quantum__rt__result_get_one()
  %43 = call i1 @__quantum__rt__result_equal(%Result* %result__14, %Result* %42)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__14, i32 -1)
  br i1 %43, label %then0__16, label %continue__15

then0__16:                                        ; preds = %continue__16
  call void @__quantum__qis__x__body(%Qubit* %q)
  %44 = load i64, i64* %count, align 4
  %45 = add i64 %44, 1
  store i64 %45, i64* %count, align 4
  br label %continue__15

continue__15:                                     ; preds = %then0__16, %continue__16
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__16 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %46 = call %Result* @__quantum__rt__result_get_one()
  %47 = call i1 @__quantum__rt__result_equal(%Result* %result__16, %Result* %46)
  br i1 %47, label %then0__17, label %continue__18

then0__17:                                        ; preds = %continue__15
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__18

continue__18:                                     ; preds = %then0__17, %continue__15
  %48 = call %Result* @__quantum__rt__result_get_one()
  %49 = call i1 @__quantum__rt__result_equal(%Result* %result__16, %Result* %48)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__16, i32 -1)
  br i1 %49, label %then0__18, label %continue__17

then0__18:                                        ; preds = %continue__18
  call void @__quantum__qis__x__body(%Qubit* %q)
  %50 = load i64, i64* %count, align 4
  %51 = add i64 %50, 1
  store i64 %51, i64* %count, align 4
  br label %continue__17

continue__17:                                     ; preds = %then0__18, %continue__18
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__18 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %52 = call %Result* @__quantum__rt__result_get_one()
  %53 = call i1 @__quantum__rt__result_equal(%Result* %result__18, %Result* %52)
  br i1 %53, label %then0__19, label %continue__20

then0__19:                                        ; preds = %continue__17
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__20

continue__20:                                     ; preds = %then0__19, %continue__17
  %54 = call %Result* @__quantum__rt__result_get_one()
  %55 = call i1 @__quantum__rt__result_equal(%Result* %result__18, %Result* %54)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__18, i32 -1)
  br i1 %55, label %then0__20, label %continue__19

then0__20:                                        ; preds = %continue__20
  call void @__quantum__qis__x__body(%Qubit* %q)
  %56 = load i64, i64* %count, align 4
  %57 = add i64 %56, 1
  store i64 %57, i64* %count, align 4
  br label %continue__19

continue__19:                                     ; preds = %then0__20, %continue__20
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__20 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %58 = call %Result* @__quantum__rt__result_get_one()
  %59 = call i1 @__quantum__rt__result_equal(%Result* %result__20, %Result* %58)
  br i1 %59, label %then0__21, label %continue__22

then0__21:                                        ; preds = %continue__19
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__22

continue__22:                                     ; preds = %then0__21, %continue__19
  %60 = call %Result* @__quantum__rt__result_get_one()
  %61 = call i1 @__quantum__rt__result_equal(%Result* %result__20, %Result* %60)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__20, i32 -1)
  br i1 %61, label %then0__22, label %continue__21

then0__22:                                        ; preds = %continue__22
  call void @__quantum__qis__x__body(%Qubit* %q)
  %62 = load i64, i64* %count, align 4
  %63 = add i64 %62, 1
  store i64 %63, i64* %count, align 4
  br label %continue__21

continue__21:                                     ; preds = %then0__22, %continue__22
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__22 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %64 = call %Result* @__quantum__rt__result_get_one()
  %65 = call i1 @__quantum__rt__result_equal(%Result* %result__22, %Result* %64)
  br i1 %65, label %then0__23, label %continue__24

then0__23:                                        ; preds = %continue__21
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__24

continue__24:                                     ; preds = %then0__23, %continue__21
  %66 = call %Result* @__quantum__rt__result_get_one()
  %67 = call i1 @__quantum__rt__result_equal(%Result* %result__22, %Result* %66)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__22, i32 -1)
  br i1 %67, label %then0__24, label %continue__23

then0__24:                                        ; preds = %continue__24
  call void @__quantum__qis__x__body(%Qubit* %q)
  %68 = load i64, i64* %count, align 4
  %69 = add i64 %68, 1
  store i64 %69, i64* %count, align 4
  br label %continue__23

continue__23:                                     ; preds = %then0__24, %continue__24
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__24 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %70 = call %Result* @__quantum__rt__result_get_one()
  %71 = call i1 @__quantum__rt__result_equal(%Result* %result__24, %Result* %70)
  br i1 %71, label %then0__25, label %continue__26

then0__25:                                        ; preds = %continue__23
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__26

continue__26:                                     ; preds = %then0__25, %continue__23
  %72 = call %Result* @__quantum__rt__result_get_one()
  %73 = call i1 @__quantum__rt__result_equal(%Result* %result__24, %Result* %72)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__24, i32 -1)
  br i1 %73, label %then0__26, label %continue__25

then0__26:                                        ; preds = %continue__26
  call void @__quantum__qis__x__body(%Qubit* %q)
  %74 = load i64, i64* %count, align 4
  %75 = add i64 %74, 1
  store i64 %75, i64* %count, align 4
  br label %continue__25

continue__25:                                     ; preds = %then0__26, %continue__26
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__26 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %76 = call %Result* @__quantum__rt__result_get_one()
  %77 = call i1 @__quantum__rt__result_equal(%Result* %result__26, %Result* %76)
  br i1 %77, label %then0__27, label %continue__28

then0__27:                                        ; preds = %continue__25
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__28

continue__28:                                     ; preds = %then0__27, %continue__25
  %78 = call %Result* @__quantum__rt__result_get_one()
  %79 = call i1 @__quantum__rt__result_equal(%Result* %result__26, %Result* %78)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__26, i32 -1)
  br i1 %79, label %then0__28, label %continue__27

then0__28:                                        ; preds = %continue__28
  call void @__quantum__qis__x__body(%Qubit* %q)
  %80 = load i64, i64* %count, align 4
  %81 = add i64 %80, 1
  store i64 %81, i64* %count, align 4
  br label %continue__27

continue__27:                                     ; preds = %then0__28, %continue__28
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__28 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %82 = call %Result* @__quantum__rt__result_get_one()
  %83 = call i1 @__quantum__rt__result_equal(%Result* %result__28, %Result* %82)
  br i1 %83, label %then0__29, label %continue__30

then0__29:                                        ; preds = %continue__27
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__30

continue__30:                                     ; preds = %then0__29, %continue__27
  %84 = call %Result* @__quantum__rt__result_get_one()
  %85 = call i1 @__quantum__rt__result_equal(%Result* %result__28, %Result* %84)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__28, i32 -1)
  br i1 %85, label %then0__30, label %continue__29

then0__30:                                        ; preds = %continue__30
  call void @__quantum__qis__x__body(%Qubit* %q)
  %86 = load i64, i64* %count, align 4
  %87 = add i64 %86, 1
  store i64 %87, i64* %count, align 4
  br label %continue__29

continue__29:                                     ; preds = %then0__30, %continue__30
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__30 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %88 = call %Result* @__quantum__rt__result_get_one()
  %89 = call i1 @__quantum__rt__result_equal(%Result* %result__30, %Result* %88)
  br i1 %89, label %then0__31, label %continue__32

then0__31:                                        ; preds = %continue__29
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__32

continue__32:                                     ; preds = %then0__31, %continue__29
  %90 = call %Result* @__quantum__rt__result_get_one()
  %91 = call i1 @__quantum__rt__result_equal(%Result* %result__30, %Result* %90)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__30, i32 -1)
  br i1 %91, label %then0__32, label %continue__31

then0__32:                                        ; preds = %continue__32
  call void @__quantum__qis__x__body(%Qubit* %q)
  %92 = load i64, i64* %count, align 4
  %93 = add i64 %92, 1
  store i64 %93, i64* %count, align 4
  br label %continue__31

continue__31:                                     ; preds = %then0__32, %continue__32
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__32 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %94 = call %Result* @__quantum__rt__result_get_one()
  %95 = call i1 @__quantum__rt__result_equal(%Result* %result__32, %Result* %94)
  br i1 %95, label %then0__33, label %continue__34

then0__33:                                        ; preds = %continue__31
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__34

continue__34:                                     ; preds = %then0__33, %continue__31
  %96 = call %Result* @__quantum__rt__result_get_one()
  %97 = call i1 @__quantum__rt__result_equal(%Result* %result__32, %Result* %96)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__32, i32 -1)
  br i1 %97, label %then0__34, label %continue__33

then0__34:                                        ; preds = %continue__34
  call void @__quantum__qis__x__body(%Qubit* %q)
  %98 = load i64, i64* %count, align 4
  %99 = add i64 %98, 1
  store i64 %99, i64* %count, align 4
  br label %continue__33

continue__33:                                     ; preds = %then0__34, %continue__34
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__34 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %100 = call %Result* @__quantum__rt__result_get_one()
  %101 = call i1 @__quantum__rt__result_equal(%Result* %result__34, %Result* %100)
  br i1 %101, label %then0__35, label %continue__36

then0__35:                                        ; preds = %continue__33
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__36

continue__36:                                     ; preds = %then0__35, %continue__33
  %102 = call %Result* @__quantum__rt__result_get_one()
  %103 = call i1 @__quantum__rt__result_equal(%Result* %result__34, %Result* %102)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__34, i32 -1)
  br i1 %103, label %then0__36, label %continue__35

then0__36:                                        ; preds = %continue__36
  call void @__quantum__qis__x__body(%Qubit* %q)
  %104 = load i64, i64* %count, align 4
  %105 = add i64 %104, 1
  store i64 %105, i64* %count, align 4
  br label %continue__35

continue__35:                                     ; preds = %then0__36, %continue__36
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__36 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %106 = call %Result* @__quantum__rt__result_get_one()
  %107 = call i1 @__quantum__rt__result_equal(%Result* %result__36, %Result* %106)
  br i1 %107, label %then0__37, label %continue__38

then0__37:                                        ; preds = %continue__35
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__38

continue__38:                                     ; preds = %then0__37, %continue__35
  %108 = call %Result* @__quantum__rt__result_get_one()
  %109 = call i1 @__quantum__rt__result_equal(%Result* %result__36, %Result* %108)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__36, i32 -1)
  br i1 %109, label %then0__38, label %continue__37

then0__38:                                        ; preds = %continue__38
  call void @__quantum__qis__x__body(%Qubit* %q)
  %110 = load i64, i64* %count, align 4
  %111 = add i64 %110, 1
  store i64 %111, i64* %count, align 4
  br label %continue__37

continue__37:                                     ; preds = %then0__38, %continue__38
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__38 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %112 = call %Result* @__quantum__rt__result_get_one()
  %113 = call i1 @__quantum__rt__result_equal(%Result* %result__38, %Result* %112)
  br i1 %113, label %then0__39, label %continue__40

then0__39:                                        ; preds = %continue__37
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__40

continue__40:                                     ; preds = %then0__39, %continue__37
  %114 = call %Result* @__quantum__rt__result_get_one()
  %115 = call i1 @__quantum__rt__result_equal(%Result* %result__38, %Result* %114)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__38, i32 -1)
  br i1 %115, label %then0__40, label %continue__39

then0__40:                                        ; preds = %continue__40
  call void @__quantum__qis__x__body(%Qubit* %q)
  %116 = load i64, i64* %count, align 4
  %117 = add i64 %116, 1
  store i64 %117, i64* %count, align 4
  br label %continue__39

continue__39:                                     ; preds = %then0__40, %continue__40
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__40 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %118 = call %Result* @__quantum__rt__result_get_one()
  %119 = call i1 @__quantum__rt__result_equal(%Result* %result__40, %Result* %118)
  br i1 %119, label %then0__41, label %continue__42

then0__41:                                        ; preds = %continue__39
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__42

continue__42:                                     ; preds = %then0__41, %continue__39
  %120 = call %Result* @__quantum__rt__result_get_one()
  %121 = call i1 @__quantum__rt__result_equal(%Result* %result__40, %Result* %120)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__40, i32 -1)
  br i1 %121, label %then0__42, label %continue__41

then0__42:                                        ; preds = %continue__42
  call void @__quantum__qis__x__body(%Qubit* %q)
  %122 = load i64, i64* %count, align 4
  %123 = add i64 %122, 1
  store i64 %123, i64* %count, align 4
  br label %continue__41

continue__41:                                     ; preds = %then0__42, %continue__42
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__42 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %124 = call %Result* @__quantum__rt__result_get_one()
  %125 = call i1 @__quantum__rt__result_equal(%Result* %result__42, %Result* %124)
  br i1 %125, label %then0__43, label %continue__44

then0__43:                                        ; preds = %continue__41
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__44

continue__44:                                     ; preds = %then0__43, %continue__41
  %126 = call %Result* @__quantum__rt__result_get_one()
  %127 = call i1 @__quantum__rt__result_equal(%Result* %result__42, %Result* %126)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__42, i32 -1)
  br i1 %127, label %then0__44, label %continue__43

then0__44:                                        ; preds = %continue__44
  call void @__quantum__qis__x__body(%Qubit* %q)
  %128 = load i64, i64* %count, align 4
  %129 = add i64 %128, 1
  store i64 %129, i64* %count, align 4
  br label %continue__43

continue__43:                                     ; preds = %then0__44, %continue__44
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__44 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %130 = call %Result* @__quantum__rt__result_get_one()
  %131 = call i1 @__quantum__rt__result_equal(%Result* %result__44, %Result* %130)
  br i1 %131, label %then0__45, label %continue__46

then0__45:                                        ; preds = %continue__43
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__46

continue__46:                                     ; preds = %then0__45, %continue__43
  %132 = call %Result* @__quantum__rt__result_get_one()
  %133 = call i1 @__quantum__rt__result_equal(%Result* %result__44, %Result* %132)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__44, i32 -1)
  br i1 %133, label %then0__46, label %continue__45

then0__46:                                        ; preds = %continue__46
  call void @__quantum__qis__x__body(%Qubit* %q)
  %134 = load i64, i64* %count, align 4
  %135 = add i64 %134, 1
  store i64 %135, i64* %count, align 4
  br label %continue__45

continue__45:                                     ; preds = %then0__46, %continue__46
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__46 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %136 = call %Result* @__quantum__rt__result_get_one()
  %137 = call i1 @__quantum__rt__result_equal(%Result* %result__46, %Result* %136)
  br i1 %137, label %then0__47, label %continue__48

then0__47:                                        ; preds = %continue__45
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__48

continue__48:                                     ; preds = %then0__47, %continue__45
  %138 = call %Result* @__quantum__rt__result_get_one()
  %139 = call i1 @__quantum__rt__result_equal(%Result* %result__46, %Result* %138)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__46, i32 -1)
  br i1 %139, label %then0__48, label %continue__47

then0__48:                                        ; preds = %continue__48
  call void @__quantum__qis__x__body(%Qubit* %q)
  %140 = load i64, i64* %count, align 4
  %141 = add i64 %140, 1
  store i64 %141, i64* %count, align 4
  br label %continue__47

continue__47:                                     ; preds = %then0__48, %continue__48
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__48 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %142 = call %Result* @__quantum__rt__result_get_one()
  %143 = call i1 @__quantum__rt__result_equal(%Result* %result__48, %Result* %142)
  br i1 %143, label %then0__49, label %continue__50

then0__49:                                        ; preds = %continue__47
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__50

continue__50:                                     ; preds = %then0__49, %continue__47
  %144 = call %Result* @__quantum__rt__result_get_one()
  %145 = call i1 @__quantum__rt__result_equal(%Result* %result__48, %Result* %144)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__48, i32 -1)
  br i1 %145, label %then0__50, label %continue__49

then0__50:                                        ; preds = %continue__50
  call void @__quantum__qis__x__body(%Qubit* %q)
  %146 = load i64, i64* %count, align 4
  %147 = add i64 %146, 1
  store i64 %147, i64* %count, align 4
  br label %continue__49

continue__49:                                     ; preds = %then0__50, %continue__50
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__50 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %148 = call %Result* @__quantum__rt__result_get_one()
  %149 = call i1 @__quantum__rt__result_equal(%Result* %result__50, %Result* %148)
  br i1 %149, label %then0__51, label %continue__52

then0__51:                                        ; preds = %continue__49
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__52

continue__52:                                     ; preds = %then0__51, %continue__49
  %150 = call %Result* @__quantum__rt__result_get_one()
  %151 = call i1 @__quantum__rt__result_equal(%Result* %result__50, %Result* %150)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__50, i32 -1)
  br i1 %151, label %then0__52, label %continue__51

then0__52:                                        ; preds = %continue__52
  call void @__quantum__qis__x__body(%Qubit* %q)
  %152 = load i64, i64* %count, align 4
  %153 = add i64 %152, 1
  store i64 %153, i64* %count, align 4
  br label %continue__51

continue__51:                                     ; preds = %then0__52, %continue__52
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__52 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %154 = call %Result* @__quantum__rt__result_get_one()
  %155 = call i1 @__quantum__rt__result_equal(%Result* %result__52, %Result* %154)
  br i1 %155, label %then0__53, label %continue__54

then0__53:                                        ; preds = %continue__51
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__54

continue__54:                                     ; preds = %then0__53, %continue__51
  %156 = call %Result* @__quantum__rt__result_get_one()
  %157 = call i1 @__quantum__rt__result_equal(%Result* %result__52, %Result* %156)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__52, i32 -1)
  br i1 %157, label %then0__54, label %continue__53

then0__54:                                        ; preds = %continue__54
  call void @__quantum__qis__x__body(%Qubit* %q)
  %158 = load i64, i64* %count, align 4
  %159 = add i64 %158, 1
  store i64 %159, i64* %count, align 4
  br label %continue__53

continue__53:                                     ; preds = %then0__54, %continue__54
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__54 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %160 = call %Result* @__quantum__rt__result_get_one()
  %161 = call i1 @__quantum__rt__result_equal(%Result* %result__54, %Result* %160)
  br i1 %161, label %then0__55, label %continue__56

then0__55:                                        ; preds = %continue__53
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__56

continue__56:                                     ; preds = %then0__55, %continue__53
  %162 = call %Result* @__quantum__rt__result_get_one()
  %163 = call i1 @__quantum__rt__result_equal(%Result* %result__54, %Result* %162)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__54, i32 -1)
  br i1 %163, label %then0__56, label %continue__55

then0__56:                                        ; preds = %continue__56
  call void @__quantum__qis__x__body(%Qubit* %q)
  %164 = load i64, i64* %count, align 4
  %165 = add i64 %164, 1
  store i64 %165, i64* %count, align 4
  br label %continue__55

continue__55:                                     ; preds = %then0__56, %continue__56
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__56 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %166 = call %Result* @__quantum__rt__result_get_one()
  %167 = call i1 @__quantum__rt__result_equal(%Result* %result__56, %Result* %166)
  br i1 %167, label %then0__57, label %continue__58

then0__57:                                        ; preds = %continue__55
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__58

continue__58:                                     ; preds = %then0__57, %continue__55
  %168 = call %Result* @__quantum__rt__result_get_one()
  %169 = call i1 @__quantum__rt__result_equal(%Result* %result__56, %Result* %168)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__56, i32 -1)
  br i1 %169, label %then0__58, label %continue__57

then0__58:                                        ; preds = %continue__58
  call void @__quantum__qis__x__body(%Qubit* %q)
  %170 = load i64, i64* %count, align 4
  %171 = add i64 %170, 1
  store i64 %171, i64* %count, align 4
  br label %continue__57

continue__57:                                     ; preds = %then0__58, %continue__58
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__58 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %172 = call %Result* @__quantum__rt__result_get_one()
  %173 = call i1 @__quantum__rt__result_equal(%Result* %result__58, %Result* %172)
  br i1 %173, label %then0__59, label %continue__60

then0__59:                                        ; preds = %continue__57
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__60

continue__60:                                     ; preds = %then0__59, %continue__57
  %174 = call %Result* @__quantum__rt__result_get_one()
  %175 = call i1 @__quantum__rt__result_equal(%Result* %result__58, %Result* %174)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__58, i32 -1)
  br i1 %175, label %then0__60, label %continue__59

then0__60:                                        ; preds = %continue__60
  call void @__quantum__qis__x__body(%Qubit* %q)
  %176 = load i64, i64* %count, align 4
  %177 = add i64 %176, 1
  store i64 %177, i64* %count, align 4
  br label %continue__59

continue__59:                                     ; preds = %then0__60, %continue__60
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__60 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %178 = call %Result* @__quantum__rt__result_get_one()
  %179 = call i1 @__quantum__rt__result_equal(%Result* %result__60, %Result* %178)
  br i1 %179, label %then0__61, label %continue__62

then0__61:                                        ; preds = %continue__59
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__62

continue__62:                                     ; preds = %then0__61, %continue__59
  %180 = call %Result* @__quantum__rt__result_get_one()
  %181 = call i1 @__quantum__rt__result_equal(%Result* %result__60, %Result* %180)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__60, i32 -1)
  br i1 %181, label %then0__62, label %continue__61

then0__62:                                        ; preds = %continue__62
  call void @__quantum__qis__x__body(%Qubit* %q)
  %182 = load i64, i64* %count, align 4
  %183 = add i64 %182, 1
  store i64 %183, i64* %count, align 4
  br label %continue__61

continue__61:                                     ; preds = %then0__62, %continue__62
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__62 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %184 = call %Result* @__quantum__rt__result_get_one()
  %185 = call i1 @__quantum__rt__result_equal(%Result* %result__62, %Result* %184)
  br i1 %185, label %then0__63, label %continue__64

then0__63:                                        ; preds = %continue__61
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__64

continue__64:                                     ; preds = %then0__63, %continue__61
  %186 = call %Result* @__quantum__rt__result_get_one()
  %187 = call i1 @__quantum__rt__result_equal(%Result* %result__62, %Result* %186)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__62, i32 -1)
  br i1 %187, label %then0__64, label %continue__63

then0__64:                                        ; preds = %continue__64
  call void @__quantum__qis__x__body(%Qubit* %q)
  %188 = load i64, i64* %count, align 4
  %189 = add i64 %188, 1
  store i64 %189, i64* %count, align 4
  br label %continue__63

continue__63:                                     ; preds = %then0__64, %continue__64
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__64 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %190 = call %Result* @__quantum__rt__result_get_one()
  %191 = call i1 @__quantum__rt__result_equal(%Result* %result__64, %Result* %190)
  br i1 %191, label %then0__65, label %continue__66

then0__65:                                        ; preds = %continue__63
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__66

continue__66:                                     ; preds = %then0__65, %continue__63
  %192 = call %Result* @__quantum__rt__result_get_one()
  %193 = call i1 @__quantum__rt__result_equal(%Result* %result__64, %Result* %192)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__64, i32 -1)
  br i1 %193, label %then0__66, label %continue__65

then0__66:                                        ; preds = %continue__66
  call void @__quantum__qis__x__body(%Qubit* %q)
  %194 = load i64, i64* %count, align 4
  %195 = add i64 %194, 1
  store i64 %195, i64* %count, align 4
  br label %continue__65

continue__65:                                     ; preds = %then0__66, %continue__66
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__66 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %196 = call %Result* @__quantum__rt__result_get_one()
  %197 = call i1 @__quantum__rt__result_equal(%Result* %result__66, %Result* %196)
  br i1 %197, label %then0__67, label %continue__68

then0__67:                                        ; preds = %continue__65
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__68

continue__68:                                     ; preds = %then0__67, %continue__65
  %198 = call %Result* @__quantum__rt__result_get_one()
  %199 = call i1 @__quantum__rt__result_equal(%Result* %result__66, %Result* %198)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__66, i32 -1)
  br i1 %199, label %then0__68, label %continue__67

then0__68:                                        ; preds = %continue__68
  call void @__quantum__qis__x__body(%Qubit* %q)
  %200 = load i64, i64* %count, align 4
  %201 = add i64 %200, 1
  store i64 %201, i64* %count, align 4
  br label %continue__67

continue__67:                                     ; preds = %then0__68, %continue__68
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__68 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %202 = call %Result* @__quantum__rt__result_get_one()
  %203 = call i1 @__quantum__rt__result_equal(%Result* %result__68, %Result* %202)
  br i1 %203, label %then0__69, label %continue__70

then0__69:                                        ; preds = %continue__67
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__70

continue__70:                                     ; preds = %then0__69, %continue__67
  %204 = call %Result* @__quantum__rt__result_get_one()
  %205 = call i1 @__quantum__rt__result_equal(%Result* %result__68, %Result* %204)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__68, i32 -1)
  br i1 %205, label %then0__70, label %continue__69

then0__70:                                        ; preds = %continue__70
  call void @__quantum__qis__x__body(%Qubit* %q)
  %206 = load i64, i64* %count, align 4
  %207 = add i64 %206, 1
  store i64 %207, i64* %count, align 4
  br label %continue__69

continue__69:                                     ; preds = %then0__70, %continue__70
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__70 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %208 = call %Result* @__quantum__rt__result_get_one()
  %209 = call i1 @__quantum__rt__result_equal(%Result* %result__70, %Result* %208)
  br i1 %209, label %then0__71, label %continue__72

then0__71:                                        ; preds = %continue__69
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__72

continue__72:                                     ; preds = %then0__71, %continue__69
  %210 = call %Result* @__quantum__rt__result_get_one()
  %211 = call i1 @__quantum__rt__result_equal(%Result* %result__70, %Result* %210)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__70, i32 -1)
  br i1 %211, label %then0__72, label %continue__71

then0__72:                                        ; preds = %continue__72
  call void @__quantum__qis__x__body(%Qubit* %q)
  %212 = load i64, i64* %count, align 4
  %213 = add i64 %212, 1
  store i64 %213, i64* %count, align 4
  br label %continue__71

continue__71:                                     ; preds = %then0__72, %continue__72
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__72 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %214 = call %Result* @__quantum__rt__result_get_one()
  %215 = call i1 @__quantum__rt__result_equal(%Result* %result__72, %Result* %214)
  br i1 %215, label %then0__73, label %continue__74

then0__73:                                        ; preds = %continue__71
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__74

continue__74:                                     ; preds = %then0__73, %continue__71
  %216 = call %Result* @__quantum__rt__result_get_one()
  %217 = call i1 @__quantum__rt__result_equal(%Result* %result__72, %Result* %216)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__72, i32 -1)
  br i1 %217, label %then0__74, label %continue__73

then0__74:                                        ; preds = %continue__74
  call void @__quantum__qis__x__body(%Qubit* %q)
  %218 = load i64, i64* %count, align 4
  %219 = add i64 %218, 1
  store i64 %219, i64* %count, align 4
  br label %continue__73

continue__73:                                     ; preds = %then0__74, %continue__74
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__74 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %220 = call %Result* @__quantum__rt__result_get_one()
  %221 = call i1 @__quantum__rt__result_equal(%Result* %result__74, %Result* %220)
  br i1 %221, label %then0__75, label %continue__76

then0__75:                                        ; preds = %continue__73
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__76

continue__76:                                     ; preds = %then0__75, %continue__73
  %222 = call %Result* @__quantum__rt__result_get_one()
  %223 = call i1 @__quantum__rt__result_equal(%Result* %result__74, %Result* %222)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__74, i32 -1)
  br i1 %223, label %then0__76, label %continue__75

then0__76:                                        ; preds = %continue__76
  call void @__quantum__qis__x__body(%Qubit* %q)
  %224 = load i64, i64* %count, align 4
  %225 = add i64 %224, 1
  store i64 %225, i64* %count, align 4
  br label %continue__75

continue__75:                                     ; preds = %then0__76, %continue__76
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__76 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %226 = call %Result* @__quantum__rt__result_get_one()
  %227 = call i1 @__quantum__rt__result_equal(%Result* %result__76, %Result* %226)
  br i1 %227, label %then0__77, label %continue__78

then0__77:                                        ; preds = %continue__75
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__78

continue__78:                                     ; preds = %then0__77, %continue__75
  %228 = call %Result* @__quantum__rt__result_get_one()
  %229 = call i1 @__quantum__rt__result_equal(%Result* %result__76, %Result* %228)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__76, i32 -1)
  br i1 %229, label %then0__78, label %continue__77

then0__78:                                        ; preds = %continue__78
  call void @__quantum__qis__x__body(%Qubit* %q)
  %230 = load i64, i64* %count, align 4
  %231 = add i64 %230, 1
  store i64 %231, i64* %count, align 4
  br label %continue__77

continue__77:                                     ; preds = %then0__78, %continue__78
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__78 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %232 = call %Result* @__quantum__rt__result_get_one()
  %233 = call i1 @__quantum__rt__result_equal(%Result* %result__78, %Result* %232)
  br i1 %233, label %then0__79, label %continue__80

then0__79:                                        ; preds = %continue__77
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__80

continue__80:                                     ; preds = %then0__79, %continue__77
  %234 = call %Result* @__quantum__rt__result_get_one()
  %235 = call i1 @__quantum__rt__result_equal(%Result* %result__78, %Result* %234)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__78, i32 -1)
  br i1 %235, label %then0__80, label %continue__79

then0__80:                                        ; preds = %continue__80
  call void @__quantum__qis__x__body(%Qubit* %q)
  %236 = load i64, i64* %count, align 4
  %237 = add i64 %236, 1
  store i64 %237, i64* %count, align 4
  br label %continue__79

continue__79:                                     ; preds = %then0__80, %continue__80
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__80 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %238 = call %Result* @__quantum__rt__result_get_one()
  %239 = call i1 @__quantum__rt__result_equal(%Result* %result__80, %Result* %238)
  br i1 %239, label %then0__81, label %continue__82

then0__81:                                        ; preds = %continue__79
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__82

continue__82:                                     ; preds = %then0__81, %continue__79
  %240 = call %Result* @__quantum__rt__result_get_one()
  %241 = call i1 @__quantum__rt__result_equal(%Result* %result__80, %Result* %240)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__80, i32 -1)
  br i1 %241, label %then0__82, label %continue__81

then0__82:                                        ; preds = %continue__82
  call void @__quantum__qis__x__body(%Qubit* %q)
  %242 = load i64, i64* %count, align 4
  %243 = add i64 %242, 1
  store i64 %243, i64* %count, align 4
  br label %continue__81

continue__81:                                     ; preds = %then0__82, %continue__82
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__82 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %244 = call %Result* @__quantum__rt__result_get_one()
  %245 = call i1 @__quantum__rt__result_equal(%Result* %result__82, %Result* %244)
  br i1 %245, label %then0__83, label %continue__84

then0__83:                                        ; preds = %continue__81
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__84

continue__84:                                     ; preds = %then0__83, %continue__81
  %246 = call %Result* @__quantum__rt__result_get_one()
  %247 = call i1 @__quantum__rt__result_equal(%Result* %result__82, %Result* %246)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__82, i32 -1)
  br i1 %247, label %then0__84, label %continue__83

then0__84:                                        ; preds = %continue__84
  call void @__quantum__qis__x__body(%Qubit* %q)
  %248 = load i64, i64* %count, align 4
  %249 = add i64 %248, 1
  store i64 %249, i64* %count, align 4
  br label %continue__83

continue__83:                                     ; preds = %then0__84, %continue__84
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__84 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %250 = call %Result* @__quantum__rt__result_get_one()
  %251 = call i1 @__quantum__rt__result_equal(%Result* %result__84, %Result* %250)
  br i1 %251, label %then0__85, label %continue__86

then0__85:                                        ; preds = %continue__83
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__86

continue__86:                                     ; preds = %then0__85, %continue__83
  %252 = call %Result* @__quantum__rt__result_get_one()
  %253 = call i1 @__quantum__rt__result_equal(%Result* %result__84, %Result* %252)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__84, i32 -1)
  br i1 %253, label %then0__86, label %continue__85

then0__86:                                        ; preds = %continue__86
  call void @__quantum__qis__x__body(%Qubit* %q)
  %254 = load i64, i64* %count, align 4
  %255 = add i64 %254, 1
  store i64 %255, i64* %count, align 4
  br label %continue__85

continue__85:                                     ; preds = %then0__86, %continue__86
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__86 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %256 = call %Result* @__quantum__rt__result_get_one()
  %257 = call i1 @__quantum__rt__result_equal(%Result* %result__86, %Result* %256)
  br i1 %257, label %then0__87, label %continue__88

then0__87:                                        ; preds = %continue__85
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__88

continue__88:                                     ; preds = %then0__87, %continue__85
  %258 = call %Result* @__quantum__rt__result_get_one()
  %259 = call i1 @__quantum__rt__result_equal(%Result* %result__86, %Result* %258)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__86, i32 -1)
  br i1 %259, label %then0__88, label %continue__87

then0__88:                                        ; preds = %continue__88
  call void @__quantum__qis__x__body(%Qubit* %q)
  %260 = load i64, i64* %count, align 4
  %261 = add i64 %260, 1
  store i64 %261, i64* %count, align 4
  br label %continue__87

continue__87:                                     ; preds = %then0__88, %continue__88
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__88 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %262 = call %Result* @__quantum__rt__result_get_one()
  %263 = call i1 @__quantum__rt__result_equal(%Result* %result__88, %Result* %262)
  br i1 %263, label %then0__89, label %continue__90

then0__89:                                        ; preds = %continue__87
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__90

continue__90:                                     ; preds = %then0__89, %continue__87
  %264 = call %Result* @__quantum__rt__result_get_one()
  %265 = call i1 @__quantum__rt__result_equal(%Result* %result__88, %Result* %264)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__88, i32 -1)
  br i1 %265, label %then0__90, label %continue__89

then0__90:                                        ; preds = %continue__90
  call void @__quantum__qis__x__body(%Qubit* %q)
  %266 = load i64, i64* %count, align 4
  %267 = add i64 %266, 1
  store i64 %267, i64* %count, align 4
  br label %continue__89

continue__89:                                     ; preds = %then0__90, %continue__90
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__90 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %268 = call %Result* @__quantum__rt__result_get_one()
  %269 = call i1 @__quantum__rt__result_equal(%Result* %result__90, %Result* %268)
  br i1 %269, label %then0__91, label %continue__92

then0__91:                                        ; preds = %continue__89
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__92

continue__92:                                     ; preds = %then0__91, %continue__89
  %270 = call %Result* @__quantum__rt__result_get_one()
  %271 = call i1 @__quantum__rt__result_equal(%Result* %result__90, %Result* %270)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__90, i32 -1)
  br i1 %271, label %then0__92, label %continue__91

then0__92:                                        ; preds = %continue__92
  call void @__quantum__qis__x__body(%Qubit* %q)
  %272 = load i64, i64* %count, align 4
  %273 = add i64 %272, 1
  store i64 %273, i64* %count, align 4
  br label %continue__91

continue__91:                                     ; preds = %then0__92, %continue__92
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__92 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %274 = call %Result* @__quantum__rt__result_get_one()
  %275 = call i1 @__quantum__rt__result_equal(%Result* %result__92, %Result* %274)
  br i1 %275, label %then0__93, label %continue__94

then0__93:                                        ; preds = %continue__91
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__94

continue__94:                                     ; preds = %then0__93, %continue__91
  %276 = call %Result* @__quantum__rt__result_get_one()
  %277 = call i1 @__quantum__rt__result_equal(%Result* %result__92, %Result* %276)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__92, i32 -1)
  br i1 %277, label %then0__94, label %continue__93

then0__94:                                        ; preds = %continue__94
  call void @__quantum__qis__x__body(%Qubit* %q)
  %278 = load i64, i64* %count, align 4
  %279 = add i64 %278, 1
  store i64 %279, i64* %count, align 4
  br label %continue__93

continue__93:                                     ; preds = %then0__94, %continue__94
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__94 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %280 = call %Result* @__quantum__rt__result_get_one()
  %281 = call i1 @__quantum__rt__result_equal(%Result* %result__94, %Result* %280)
  br i1 %281, label %then0__95, label %continue__96

then0__95:                                        ; preds = %continue__93
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__96

continue__96:                                     ; preds = %then0__95, %continue__93
  %282 = call %Result* @__quantum__rt__result_get_one()
  %283 = call i1 @__quantum__rt__result_equal(%Result* %result__94, %Result* %282)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__94, i32 -1)
  br i1 %283, label %then0__96, label %continue__95

then0__96:                                        ; preds = %continue__96
  call void @__quantum__qis__x__body(%Qubit* %q)
  %284 = load i64, i64* %count, align 4
  %285 = add i64 %284, 1
  store i64 %285, i64* %count, align 4
  br label %continue__95

continue__95:                                     ; preds = %then0__96, %continue__96
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__96 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %286 = call %Result* @__quantum__rt__result_get_one()
  %287 = call i1 @__quantum__rt__result_equal(%Result* %result__96, %Result* %286)
  br i1 %287, label %then0__97, label %continue__98

then0__97:                                        ; preds = %continue__95
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__98

continue__98:                                     ; preds = %then0__97, %continue__95
  %288 = call %Result* @__quantum__rt__result_get_one()
  %289 = call i1 @__quantum__rt__result_equal(%Result* %result__96, %Result* %288)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__96, i32 -1)
  br i1 %289, label %then0__98, label %continue__97

then0__98:                                        ; preds = %continue__98
  call void @__quantum__qis__x__body(%Qubit* %q)
  %290 = load i64, i64* %count, align 4
  %291 = add i64 %290, 1
  store i64 %291, i64* %count, align 4
  br label %continue__97

continue__97:                                     ; preds = %then0__98, %continue__98
  call void @__quantum__qis__x__body(%Qubit* %q)
  %result__98 = call %Result* @__quantum__qis__m__body(%Qubit* %q)
  call void @__quantum__qis__reset__body(%Qubit* %q)
  %292 = call %Result* @__quantum__rt__result_get_one()
  %293 = call i1 @__quantum__rt__result_equal(%Result* %result__98, %Result* %292)
  br i1 %293, label %then0__99, label %continue__100

then0__99:                                        ; preds = %continue__97
  call void @__quantum__qis__x__body(%Qubit* %q)
  br label %continue__100

continue__100:                                    ; preds = %then0__99, %continue__97
  %294 = call %Result* @__quantum__rt__result_get_one()
  %295 = call i1 @__quantum__rt__result_equal(%Result* %result__98, %Result* %294)
  call void @__quantum__rt__result_update_reference_count(%Result* %result__98, i32 -1)
  br i1 %295, label %then0__100, label %continue__99

then0__100:                                       ; preds = %continue__100
  call void @__quantum__qis__x__body(%Qubit* %q)
  %296 = load i64, i64* %count, align 4
  %297 = add i64 %296, 1
  store i64 %297, i64* %count, align 4
  br label %continue__99

continue__99:                                     ; preds = %then0__100, %continue__100
  %298 = load i64, i64* %count, align 4
  %__rtrnVal0__ = icmp sgt i64 %298, 25
  %__rtrnVal1__ = icmp slt i64 %298, 25
  %__rtrnVal2__ = icmp eq i64 %298, 50
  %299 = insertvalue { i1, i1, i1 } zeroinitializer, i1 %__rtrnVal0__, 0
  %300 = insertvalue { i1, i1, i1 } %299, i1 %__rtrnVal1__, 1
  %301 = insertvalue { i1, i1, i1 } %300, i1 %__rtrnVal2__, 2
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
