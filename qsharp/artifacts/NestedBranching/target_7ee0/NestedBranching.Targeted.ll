; ModuleID = 'NestedBranching.Targeted.bc'
source_filename = "qat-link"

%Qubit = type opaque
%Result = type opaque

@0 = internal constant [10 x i8] c"0_t0t0a0r\00"
@1 = internal constant [10 x i8] c"1_t0t0a1r\00"
@2 = internal constant [10 x i8] c"2_t0t0a2r\00"
@3 = internal constant [8 x i8] c"3_t0t1i\00"
@4 = internal constant [10 x i8] c"4_t1t0a0r\00"
@5 = internal constant [10 x i8] c"5_t1t0a1r\00"
@6 = internal constant [10 x i8] c"6_t1t0a2r\00"
@7 = internal constant [10 x i8] c"7_t1t0a3r\00"
@8 = internal constant [8 x i8] c"8_t1t1b\00"

define void @Tests__Common__L3__NestedBranching() #0 {
entry:
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__reset__body(%Qubit* null)
  %0 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %0, label %then0__3, label %continue__4

then0__3:                                         ; preds = %entry
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__4

continue__4:                                      ; preds = %then0__3, %entry
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  %1 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %1, label %then0__4, label %continue__5

then0__4:                                         ; preds = %continue__4
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  br label %continue__5

continue__5:                                      ; preds = %then0__4, %continue__4
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Result* nonnull inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  %2 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  br i1 %2, label %then0__5, label %continue__6

then0__5:                                         ; preds = %continue__5
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  br label %continue__6

continue__6:                                      ; preds = %then0__5, %continue__5
  %3 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %3, label %else__1, label %then0__6

then0__6:                                         ; preds = %continue__6
  %4 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %4, label %condContinue__1, label %condTrue__1

condTrue__1:                                      ; preds = %then0__6
  %5 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  br label %condContinue__1

condContinue__1:                                  ; preds = %condTrue__1, %then0__6
  %.in1 = phi i1 [ %5, %condTrue__1 ], [ %4, %then0__6 ]
  br i1 %.in1, label %test1__1, label %continue__7

test1__1:                                         ; preds = %condContinue__1
  %6 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  %7 = xor i1 %6, true
  br i1 %6, label %condContinue__2, label %condTrue__2

condTrue__2:                                      ; preds = %test1__1
  %8 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  br label %condContinue__2

condContinue__2:                                  ; preds = %condTrue__2, %test1__1
  %9 = phi i1 [ %8, %condTrue__2 ], [ %7, %test1__1 ]
  br i1 %9, label %continue__7, label %test2__1

test2__1:                                         ; preds = %condContinue__2
  %10 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %10, label %condTrue__3, label %condContinue__3

condTrue__3:                                      ; preds = %test2__1
  %11 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  %12 = xor i1 %11, true
  br label %condContinue__3

condContinue__3:                                  ; preds = %condTrue__3, %test2__1
  %13 = phi i1 [ %12, %condTrue__3 ], [ %10, %test2__1 ]
  %. = select i1 %13, i64 2, i64 3
  br label %continue__7

else__1:                                          ; preds = %continue__6
  %14 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %14, label %condContinue__4, label %condTrue__4

condTrue__4:                                      ; preds = %else__1
  %15 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  br label %condContinue__4

condContinue__4:                                  ; preds = %condTrue__4, %else__1
  %.in = phi i1 [ %15, %condTrue__4 ], [ %14, %else__1 ]
  br i1 %.in, label %test1__2, label %continue__7

test1__2:                                         ; preds = %condContinue__4
  %16 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  %17 = xor i1 %16, true
  br i1 %16, label %condContinue__5, label %condTrue__5

condTrue__5:                                      ; preds = %test1__2
  %18 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  br label %condContinue__5

condContinue__5:                                  ; preds = %condTrue__5, %test1__2
  %19 = phi i1 [ %18, %condTrue__5 ], [ %17, %test1__2 ]
  br i1 %19, label %continue__7, label %test2__2

test2__2:                                         ; preds = %condContinue__5
  %20 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %20, label %condTrue__6, label %condContinue__6

condTrue__6:                                      ; preds = %test2__2
  %21 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  %22 = xor i1 %21, true
  br label %condContinue__6

condContinue__6:                                  ; preds = %condTrue__6, %test2__2
  %23 = phi i1 [ %22, %condTrue__6 ], [ %20, %test2__2 ]
  %.2 = select i1 %23, i64 6, i64 7
  br label %continue__7

continue__7:                                      ; preds = %condContinue__6, %condContinue__5, %condContinue__4, %condContinue__3, %condContinue__2, %condContinue__1
  %a.0 = phi i64 [ 0, %condContinue__1 ], [ 1, %condContinue__2 ], [ %., %condContinue__3 ], [ 4, %condContinue__4 ], [ 5, %condContinue__5 ], [ %.2, %condContinue__6 ]
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 4 to %Qubit*), %Result* nonnull inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 4 to %Qubit*))
  %24 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 3 to %Result*))
  br i1 %24, label %then0__12, label %continue__14

then0__12:                                        ; preds = %continue__7
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 4 to %Qubit*))
  br label %continue__14

continue__14:                                     ; preds = %then0__12, %continue__7
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 5 to %Qubit*), %Result* nonnull inttoptr (i64 4 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 5 to %Qubit*))
  %25 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br i1 %25, label %then0__13, label %continue__15

then0__13:                                        ; preds = %continue__14
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 5 to %Qubit*))
  br label %continue__15

continue__15:                                     ; preds = %then0__13, %continue__14
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 6 to %Qubit*), %Result* nonnull inttoptr (i64 5 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 6 to %Qubit*))
  %26 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %26, label %then0__14, label %continue__16

then0__14:                                        ; preds = %continue__15
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 6 to %Qubit*))
  br label %continue__16

continue__16:                                     ; preds = %then0__14, %continue__15
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 7 to %Qubit*), %Result* nonnull inttoptr (i64 6 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 7 to %Qubit*))
  %27 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 6 to %Result*))
  br i1 %27, label %then0__15, label %continue__17

then0__15:                                        ; preds = %continue__16
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 7 to %Qubit*))
  br label %continue__17

continue__17:                                     ; preds = %then0__15, %continue__16
  %28 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 3 to %Result*))
  br i1 %28, label %test1__3, label %then0__16

then0__16:                                        ; preds = %continue__17
  %29 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br i1 %29, label %else__4, label %then0__17

then0__17:                                        ; preds = %then0__16
  %30 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %30, label %else__5, label %continue__18

else__5:                                          ; preds = %then0__17
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__4:                                          ; preds = %then0__16
  %31 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %31, label %else__6, label %then0__19

then0__19:                                        ; preds = %else__4
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__6:                                          ; preds = %else__4
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

test1__3:                                         ; preds = %continue__17
  %32 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 3 to %Result*))
  %33 = xor i1 %32, true
  br i1 %32, label %condContinue__7, label %condTrue__7

condTrue__7:                                      ; preds = %test1__3
  %34 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br label %condContinue__7

condContinue__7:                                  ; preds = %condTrue__7, %test1__3
  %35 = phi i1 [ %34, %condTrue__7 ], [ %33, %test1__3 ]
  br i1 %35, label %then1__3, label %test2__3

then1__3:                                         ; preds = %condContinue__7
  %36 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br i1 %36, label %else__7, label %then0__20

then0__20:                                        ; preds = %then1__3
  %37 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %37, label %else__8, label %continue__18

else__8:                                          ; preds = %then0__20
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__7:                                          ; preds = %then1__3
  %38 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %38, label %else__9, label %then0__22

then0__22:                                        ; preds = %else__7
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__9:                                          ; preds = %else__7
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

test2__3:                                         ; preds = %condContinue__7
  %39 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 3 to %Result*))
  br i1 %39, label %condTrue__8, label %condContinue__8

condTrue__8:                                      ; preds = %test2__3
  %40 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  %41 = xor i1 %40, true
  br label %condContinue__8

condContinue__8:                                  ; preds = %condTrue__8, %test2__3
  %42 = phi i1 [ %41, %condTrue__8 ], [ %39, %test2__3 ]
  br i1 %42, label %then2__3, label %else__10

then2__3:                                         ; preds = %condContinue__8
  %43 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br i1 %43, label %else__11, label %then0__23

then0__23:                                        ; preds = %then2__3
  %44 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %44, label %else__12, label %continue__18

else__12:                                         ; preds = %then0__23
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__11:                                         ; preds = %then2__3
  %45 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %45, label %else__13, label %then0__25

then0__25:                                        ; preds = %else__11
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__13:                                         ; preds = %else__11
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__10:                                         ; preds = %condContinue__8
  %46 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br i1 %46, label %else__14, label %then0__26

then0__26:                                        ; preds = %else__10
  %47 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %47, label %else__15, label %continue__18

else__15:                                         ; preds = %then0__26
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__14:                                         ; preds = %else__10
  %48 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %48, label %else__16, label %then0__28

then0__28:                                        ; preds = %else__14
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__y__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

else__16:                                         ; preds = %else__14
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__z__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  br label %continue__18

continue__18:                                     ; preds = %else__16, %then0__28, %else__15, %then0__26, %else__13, %then0__25, %else__12, %then0__23, %else__9, %then0__22, %else__8, %then0__20, %else__6, %then0__19, %else__5, %then0__17
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*), %Result* nonnull inttoptr (i64 7 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 3 to %Qubit*))
  %__rtrnVal3__ = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 7 to %Result*))
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @0, i64 0, i64 0))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 1 to %Result*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i64 0, i64 0))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 2 to %Result*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2, i64 0, i64 0))
  call void @__quantum__rt__array_end_record_output()
  call void @__quantum__rt__int_record_output(i64 %a.0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i64 0, i64 0))
  call void @__quantum__rt__tuple_end_record_output()
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 3 to %Result*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @4, i64 0, i64 0))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 4 to %Result*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i64 0, i64 0))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 5 to %Result*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @6, i64 0, i64 0))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 6 to %Result*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i64 0, i64 0))
  call void @__quantum__rt__array_end_record_output()
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal3__, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i64 0, i64 0))
  call void @__quantum__rt__tuple_end_record_output()
  call void @__quantum__rt__tuple_end_record_output()
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare void @__quantum__qis__x__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_zero()

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_one()

declare i1 @__quantum__rt__result_equal(%Result*, %Result*)

declare void @__quantum__qis__y__body(%Qubit*)

declare void @__quantum__qis__z__body(%Qubit*)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__rt__tuple_start_record_output()

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__result_record_output(%Result*, i8*)

declare void @__quantum__rt__array_end_record_output()

declare void @__quantum__rt__int_record_output(i64, i8*)

declare void @__quantum__rt__tuple_end_record_output()

declare void @__quantum__rt__bool_record_output(i1, i8*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare i1 @__quantum__qis__read_result__body(%Result*)

attributes #0 = { "EntryPoint" "maxQubitIndex"="7" "maxResultIndex"="7" "requiredQubits"="8" "requiredResults"="8" }
