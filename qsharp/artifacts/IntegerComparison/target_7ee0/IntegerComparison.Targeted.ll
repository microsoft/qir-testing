; ModuleID = 'IntegerComparison.Targeted.bc'
source_filename = "qat-link"

%Qubit = type opaque
%Result = type opaque

@0 = internal constant [6 x i8] c"0_t0b\00"
@1 = internal constant [6 x i8] c"1_t1b\00"
@2 = internal constant [6 x i8] c"2_t2b\00"

define void @Tests__Common__L3__IntegerComparison() #0 {
entry:
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__reset__body(%Qubit* null)
  %0 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %0, label %then0__1, label %continue__2

then0__1:                                         ; preds = %entry
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__2

continue__2:                                      ; preds = %then0__1, %entry
  %1 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %1, label %then0__2, label %continue__1

then0__2:                                         ; preds = %continue__2
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__1

continue__1:                                      ; preds = %then0__2, %continue__2
  %count.0 = phi i64 [ 1, %then0__2 ], [ 0, %continue__2 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %2 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %2, label %then0__3, label %continue__4

then0__3:                                         ; preds = %continue__1
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__4

continue__4:                                      ; preds = %then0__3, %continue__1
  %3 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %3, label %then0__4, label %continue__3

then0__4:                                         ; preds = %continue__4
  call void @__quantum__qis__x__body(%Qubit* null)
  %4 = add nuw nsw i64 %count.0, 1
  br label %continue__3

continue__3:                                      ; preds = %then0__4, %continue__4
  %count.1 = phi i64 [ %4, %then0__4 ], [ %count.0, %continue__4 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %5 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  br i1 %5, label %then0__5, label %continue__6

then0__5:                                         ; preds = %continue__3
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__6

continue__6:                                      ; preds = %then0__5, %continue__3
  %6 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 2 to %Result*))
  br i1 %6, label %then0__6, label %continue__5

then0__6:                                         ; preds = %continue__6
  call void @__quantum__qis__x__body(%Qubit* null)
  %7 = add nsw i64 %count.1, 1
  br label %continue__5

continue__5:                                      ; preds = %then0__6, %continue__6
  %count.2 = phi i64 [ %7, %then0__6 ], [ %count.1, %continue__6 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %8 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 3 to %Result*))
  br i1 %8, label %then0__7, label %continue__8

then0__7:                                         ; preds = %continue__5
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__8

continue__8:                                      ; preds = %then0__7, %continue__5
  %9 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 3 to %Result*))
  br i1 %9, label %then0__8, label %continue__7

then0__8:                                         ; preds = %continue__8
  call void @__quantum__qis__x__body(%Qubit* null)
  %10 = add nsw i64 %count.2, 1
  br label %continue__7

continue__7:                                      ; preds = %then0__8, %continue__8
  %count.3 = phi i64 [ %10, %then0__8 ], [ %count.2, %continue__8 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 4 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %11 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br i1 %11, label %then0__9, label %continue__10

then0__9:                                         ; preds = %continue__7
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__10

continue__10:                                     ; preds = %then0__9, %continue__7
  %12 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 4 to %Result*))
  br i1 %12, label %then0__10, label %continue__9

then0__10:                                        ; preds = %continue__10
  call void @__quantum__qis__x__body(%Qubit* null)
  %13 = add i64 %count.3, 1
  br label %continue__9

continue__9:                                      ; preds = %then0__10, %continue__10
  %count.4 = phi i64 [ %13, %then0__10 ], [ %count.3, %continue__10 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 5 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %14 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %14, label %then0__11, label %continue__12

then0__11:                                        ; preds = %continue__9
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__12

continue__12:                                     ; preds = %then0__11, %continue__9
  %15 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 5 to %Result*))
  br i1 %15, label %then0__12, label %continue__11

then0__12:                                        ; preds = %continue__12
  call void @__quantum__qis__x__body(%Qubit* null)
  %16 = add i64 %count.4, 1
  br label %continue__11

continue__11:                                     ; preds = %then0__12, %continue__12
  %count.5 = phi i64 [ %16, %then0__12 ], [ %count.4, %continue__12 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 6 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %17 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 6 to %Result*))
  br i1 %17, label %then0__13, label %continue__14

then0__13:                                        ; preds = %continue__11
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__14

continue__14:                                     ; preds = %then0__13, %continue__11
  %18 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 6 to %Result*))
  br i1 %18, label %then0__14, label %continue__13

then0__14:                                        ; preds = %continue__14
  call void @__quantum__qis__x__body(%Qubit* null)
  %19 = add i64 %count.5, 1
  br label %continue__13

continue__13:                                     ; preds = %then0__14, %continue__14
  %count.6 = phi i64 [ %19, %then0__14 ], [ %count.5, %continue__14 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 7 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %20 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 7 to %Result*))
  br i1 %20, label %then0__15, label %continue__16

then0__15:                                        ; preds = %continue__13
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__16

continue__16:                                     ; preds = %then0__15, %continue__13
  %21 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 7 to %Result*))
  br i1 %21, label %then0__16, label %continue__15

then0__16:                                        ; preds = %continue__16
  call void @__quantum__qis__x__body(%Qubit* null)
  %22 = add i64 %count.6, 1
  br label %continue__15

continue__15:                                     ; preds = %then0__16, %continue__16
  %count.7 = phi i64 [ %22, %then0__16 ], [ %count.6, %continue__16 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 8 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %23 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 8 to %Result*))
  br i1 %23, label %then0__17, label %continue__18

then0__17:                                        ; preds = %continue__15
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__18

continue__18:                                     ; preds = %then0__17, %continue__15
  %24 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 8 to %Result*))
  br i1 %24, label %then0__18, label %continue__17

then0__18:                                        ; preds = %continue__18
  call void @__quantum__qis__x__body(%Qubit* null)
  %25 = add i64 %count.7, 1
  br label %continue__17

continue__17:                                     ; preds = %then0__18, %continue__18
  %count.8 = phi i64 [ %25, %then0__18 ], [ %count.7, %continue__18 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 9 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %26 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 9 to %Result*))
  br i1 %26, label %then0__19, label %continue__20

then0__19:                                        ; preds = %continue__17
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__20

continue__20:                                     ; preds = %then0__19, %continue__17
  %27 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 9 to %Result*))
  br i1 %27, label %then0__20, label %continue__19

then0__20:                                        ; preds = %continue__20
  call void @__quantum__qis__x__body(%Qubit* null)
  %28 = add i64 %count.8, 1
  br label %continue__19

continue__19:                                     ; preds = %then0__20, %continue__20
  %count.9 = phi i64 [ %28, %then0__20 ], [ %count.8, %continue__20 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 10 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %29 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 10 to %Result*))
  br i1 %29, label %then0__21, label %continue__22

then0__21:                                        ; preds = %continue__19
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__22

continue__22:                                     ; preds = %then0__21, %continue__19
  %30 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 10 to %Result*))
  br i1 %30, label %then0__22, label %continue__21

then0__22:                                        ; preds = %continue__22
  call void @__quantum__qis__x__body(%Qubit* null)
  %31 = add i64 %count.9, 1
  br label %continue__21

continue__21:                                     ; preds = %then0__22, %continue__22
  %count.10 = phi i64 [ %31, %then0__22 ], [ %count.9, %continue__22 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 11 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %32 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 11 to %Result*))
  br i1 %32, label %then0__23, label %continue__24

then0__23:                                        ; preds = %continue__21
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__24

continue__24:                                     ; preds = %then0__23, %continue__21
  %33 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 11 to %Result*))
  br i1 %33, label %then0__24, label %continue__23

then0__24:                                        ; preds = %continue__24
  call void @__quantum__qis__x__body(%Qubit* null)
  %34 = add i64 %count.10, 1
  br label %continue__23

continue__23:                                     ; preds = %then0__24, %continue__24
  %count.11 = phi i64 [ %34, %then0__24 ], [ %count.10, %continue__24 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 12 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %35 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 12 to %Result*))
  br i1 %35, label %then0__25, label %continue__26

then0__25:                                        ; preds = %continue__23
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__26

continue__26:                                     ; preds = %then0__25, %continue__23
  %36 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 12 to %Result*))
  br i1 %36, label %then0__26, label %continue__25

then0__26:                                        ; preds = %continue__26
  call void @__quantum__qis__x__body(%Qubit* null)
  %37 = add i64 %count.11, 1
  br label %continue__25

continue__25:                                     ; preds = %then0__26, %continue__26
  %count.12 = phi i64 [ %37, %then0__26 ], [ %count.11, %continue__26 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 13 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %38 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 13 to %Result*))
  br i1 %38, label %then0__27, label %continue__28

then0__27:                                        ; preds = %continue__25
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__28

continue__28:                                     ; preds = %then0__27, %continue__25
  %39 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 13 to %Result*))
  br i1 %39, label %then0__28, label %continue__27

then0__28:                                        ; preds = %continue__28
  call void @__quantum__qis__x__body(%Qubit* null)
  %40 = add i64 %count.12, 1
  br label %continue__27

continue__27:                                     ; preds = %then0__28, %continue__28
  %count.13 = phi i64 [ %40, %then0__28 ], [ %count.12, %continue__28 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 14 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %41 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 14 to %Result*))
  br i1 %41, label %then0__29, label %continue__30

then0__29:                                        ; preds = %continue__27
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__30

continue__30:                                     ; preds = %then0__29, %continue__27
  %42 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 14 to %Result*))
  br i1 %42, label %then0__30, label %continue__29

then0__30:                                        ; preds = %continue__30
  call void @__quantum__qis__x__body(%Qubit* null)
  %43 = add i64 %count.13, 1
  br label %continue__29

continue__29:                                     ; preds = %then0__30, %continue__30
  %count.14 = phi i64 [ %43, %then0__30 ], [ %count.13, %continue__30 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 15 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %44 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 15 to %Result*))
  br i1 %44, label %then0__31, label %continue__32

then0__31:                                        ; preds = %continue__29
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__32

continue__32:                                     ; preds = %then0__31, %continue__29
  %45 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 15 to %Result*))
  br i1 %45, label %then0__32, label %continue__31

then0__32:                                        ; preds = %continue__32
  call void @__quantum__qis__x__body(%Qubit* null)
  %46 = add i64 %count.14, 1
  br label %continue__31

continue__31:                                     ; preds = %then0__32, %continue__32
  %count.15 = phi i64 [ %46, %then0__32 ], [ %count.14, %continue__32 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 16 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %47 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 16 to %Result*))
  br i1 %47, label %then0__33, label %continue__34

then0__33:                                        ; preds = %continue__31
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__34

continue__34:                                     ; preds = %then0__33, %continue__31
  %48 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 16 to %Result*))
  br i1 %48, label %then0__34, label %continue__33

then0__34:                                        ; preds = %continue__34
  call void @__quantum__qis__x__body(%Qubit* null)
  %49 = add i64 %count.15, 1
  br label %continue__33

continue__33:                                     ; preds = %then0__34, %continue__34
  %count.16 = phi i64 [ %49, %then0__34 ], [ %count.15, %continue__34 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 17 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %50 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 17 to %Result*))
  br i1 %50, label %then0__35, label %continue__36

then0__35:                                        ; preds = %continue__33
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__36

continue__36:                                     ; preds = %then0__35, %continue__33
  %51 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 17 to %Result*))
  br i1 %51, label %then0__36, label %continue__35

then0__36:                                        ; preds = %continue__36
  call void @__quantum__qis__x__body(%Qubit* null)
  %52 = add i64 %count.16, 1
  br label %continue__35

continue__35:                                     ; preds = %then0__36, %continue__36
  %count.17 = phi i64 [ %52, %then0__36 ], [ %count.16, %continue__36 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 18 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %53 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 18 to %Result*))
  br i1 %53, label %then0__37, label %continue__38

then0__37:                                        ; preds = %continue__35
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__38

continue__38:                                     ; preds = %then0__37, %continue__35
  %54 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 18 to %Result*))
  br i1 %54, label %then0__38, label %continue__37

then0__38:                                        ; preds = %continue__38
  call void @__quantum__qis__x__body(%Qubit* null)
  %55 = add i64 %count.17, 1
  br label %continue__37

continue__37:                                     ; preds = %then0__38, %continue__38
  %count.18 = phi i64 [ %55, %then0__38 ], [ %count.17, %continue__38 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 19 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %56 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 19 to %Result*))
  br i1 %56, label %then0__39, label %continue__40

then0__39:                                        ; preds = %continue__37
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__40

continue__40:                                     ; preds = %then0__39, %continue__37
  %57 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 19 to %Result*))
  br i1 %57, label %then0__40, label %continue__39

then0__40:                                        ; preds = %continue__40
  call void @__quantum__qis__x__body(%Qubit* null)
  %58 = add i64 %count.18, 1
  br label %continue__39

continue__39:                                     ; preds = %then0__40, %continue__40
  %count.19 = phi i64 [ %58, %then0__40 ], [ %count.18, %continue__40 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 20 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %59 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 20 to %Result*))
  br i1 %59, label %then0__41, label %continue__42

then0__41:                                        ; preds = %continue__39
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__42

continue__42:                                     ; preds = %then0__41, %continue__39
  %60 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 20 to %Result*))
  br i1 %60, label %then0__42, label %continue__41

then0__42:                                        ; preds = %continue__42
  call void @__quantum__qis__x__body(%Qubit* null)
  %61 = add i64 %count.19, 1
  br label %continue__41

continue__41:                                     ; preds = %then0__42, %continue__42
  %count.20 = phi i64 [ %61, %then0__42 ], [ %count.19, %continue__42 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 21 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %62 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 21 to %Result*))
  br i1 %62, label %then0__43, label %continue__44

then0__43:                                        ; preds = %continue__41
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__44

continue__44:                                     ; preds = %then0__43, %continue__41
  %63 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 21 to %Result*))
  br i1 %63, label %then0__44, label %continue__43

then0__44:                                        ; preds = %continue__44
  call void @__quantum__qis__x__body(%Qubit* null)
  %64 = add i64 %count.20, 1
  br label %continue__43

continue__43:                                     ; preds = %then0__44, %continue__44
  %count.21 = phi i64 [ %64, %then0__44 ], [ %count.20, %continue__44 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 22 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %65 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 22 to %Result*))
  br i1 %65, label %then0__45, label %continue__46

then0__45:                                        ; preds = %continue__43
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__46

continue__46:                                     ; preds = %then0__45, %continue__43
  %66 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 22 to %Result*))
  br i1 %66, label %then0__46, label %continue__45

then0__46:                                        ; preds = %continue__46
  call void @__quantum__qis__x__body(%Qubit* null)
  %67 = add i64 %count.21, 1
  br label %continue__45

continue__45:                                     ; preds = %then0__46, %continue__46
  %count.22 = phi i64 [ %67, %then0__46 ], [ %count.21, %continue__46 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 23 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %68 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 23 to %Result*))
  br i1 %68, label %then0__47, label %continue__48

then0__47:                                        ; preds = %continue__45
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__48

continue__48:                                     ; preds = %then0__47, %continue__45
  %69 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 23 to %Result*))
  br i1 %69, label %then0__48, label %continue__47

then0__48:                                        ; preds = %continue__48
  call void @__quantum__qis__x__body(%Qubit* null)
  %70 = add i64 %count.22, 1
  br label %continue__47

continue__47:                                     ; preds = %then0__48, %continue__48
  %count.23 = phi i64 [ %70, %then0__48 ], [ %count.22, %continue__48 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 24 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %71 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 24 to %Result*))
  br i1 %71, label %then0__49, label %continue__50

then0__49:                                        ; preds = %continue__47
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__50

continue__50:                                     ; preds = %then0__49, %continue__47
  %72 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 24 to %Result*))
  br i1 %72, label %then0__50, label %continue__49

then0__50:                                        ; preds = %continue__50
  call void @__quantum__qis__x__body(%Qubit* null)
  %73 = add i64 %count.23, 1
  br label %continue__49

continue__49:                                     ; preds = %then0__50, %continue__50
  %count.24 = phi i64 [ %73, %then0__50 ], [ %count.23, %continue__50 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 25 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %74 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 25 to %Result*))
  br i1 %74, label %then0__51, label %continue__52

then0__51:                                        ; preds = %continue__49
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__52

continue__52:                                     ; preds = %then0__51, %continue__49
  %75 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 25 to %Result*))
  br i1 %75, label %then0__52, label %continue__51

then0__52:                                        ; preds = %continue__52
  call void @__quantum__qis__x__body(%Qubit* null)
  %76 = add i64 %count.24, 1
  br label %continue__51

continue__51:                                     ; preds = %then0__52, %continue__52
  %count.25 = phi i64 [ %76, %then0__52 ], [ %count.24, %continue__52 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 26 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %77 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 26 to %Result*))
  br i1 %77, label %then0__53, label %continue__54

then0__53:                                        ; preds = %continue__51
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__54

continue__54:                                     ; preds = %then0__53, %continue__51
  %78 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 26 to %Result*))
  br i1 %78, label %then0__54, label %continue__53

then0__54:                                        ; preds = %continue__54
  call void @__quantum__qis__x__body(%Qubit* null)
  %79 = add i64 %count.25, 1
  br label %continue__53

continue__53:                                     ; preds = %then0__54, %continue__54
  %count.26 = phi i64 [ %79, %then0__54 ], [ %count.25, %continue__54 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 27 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %80 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 27 to %Result*))
  br i1 %80, label %then0__55, label %continue__56

then0__55:                                        ; preds = %continue__53
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__56

continue__56:                                     ; preds = %then0__55, %continue__53
  %81 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 27 to %Result*))
  br i1 %81, label %then0__56, label %continue__55

then0__56:                                        ; preds = %continue__56
  call void @__quantum__qis__x__body(%Qubit* null)
  %82 = add i64 %count.26, 1
  br label %continue__55

continue__55:                                     ; preds = %then0__56, %continue__56
  %count.27 = phi i64 [ %82, %then0__56 ], [ %count.26, %continue__56 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 28 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %83 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 28 to %Result*))
  br i1 %83, label %then0__57, label %continue__58

then0__57:                                        ; preds = %continue__55
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__58

continue__58:                                     ; preds = %then0__57, %continue__55
  %84 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 28 to %Result*))
  br i1 %84, label %then0__58, label %continue__57

then0__58:                                        ; preds = %continue__58
  call void @__quantum__qis__x__body(%Qubit* null)
  %85 = add i64 %count.27, 1
  br label %continue__57

continue__57:                                     ; preds = %then0__58, %continue__58
  %count.28 = phi i64 [ %85, %then0__58 ], [ %count.27, %continue__58 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 29 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %86 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 29 to %Result*))
  br i1 %86, label %then0__59, label %continue__60

then0__59:                                        ; preds = %continue__57
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__60

continue__60:                                     ; preds = %then0__59, %continue__57
  %87 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 29 to %Result*))
  br i1 %87, label %then0__60, label %continue__59

then0__60:                                        ; preds = %continue__60
  call void @__quantum__qis__x__body(%Qubit* null)
  %88 = add i64 %count.28, 1
  br label %continue__59

continue__59:                                     ; preds = %then0__60, %continue__60
  %count.29 = phi i64 [ %88, %then0__60 ], [ %count.28, %continue__60 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 30 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %89 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 30 to %Result*))
  br i1 %89, label %then0__61, label %continue__62

then0__61:                                        ; preds = %continue__59
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__62

continue__62:                                     ; preds = %then0__61, %continue__59
  %90 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 30 to %Result*))
  br i1 %90, label %then0__62, label %continue__61

then0__62:                                        ; preds = %continue__62
  call void @__quantum__qis__x__body(%Qubit* null)
  %91 = add i64 %count.29, 1
  br label %continue__61

continue__61:                                     ; preds = %then0__62, %continue__62
  %count.30 = phi i64 [ %91, %then0__62 ], [ %count.29, %continue__62 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 31 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %92 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 31 to %Result*))
  br i1 %92, label %then0__63, label %continue__64

then0__63:                                        ; preds = %continue__61
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__64

continue__64:                                     ; preds = %then0__63, %continue__61
  %93 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 31 to %Result*))
  br i1 %93, label %then0__64, label %continue__63

then0__64:                                        ; preds = %continue__64
  call void @__quantum__qis__x__body(%Qubit* null)
  %94 = add i64 %count.30, 1
  br label %continue__63

continue__63:                                     ; preds = %then0__64, %continue__64
  %count.31 = phi i64 [ %94, %then0__64 ], [ %count.30, %continue__64 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 32 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %95 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 32 to %Result*))
  br i1 %95, label %then0__65, label %continue__66

then0__65:                                        ; preds = %continue__63
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__66

continue__66:                                     ; preds = %then0__65, %continue__63
  %96 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 32 to %Result*))
  br i1 %96, label %then0__66, label %continue__65

then0__66:                                        ; preds = %continue__66
  call void @__quantum__qis__x__body(%Qubit* null)
  %97 = add i64 %count.31, 1
  br label %continue__65

continue__65:                                     ; preds = %then0__66, %continue__66
  %count.32 = phi i64 [ %97, %then0__66 ], [ %count.31, %continue__66 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 33 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %98 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 33 to %Result*))
  br i1 %98, label %then0__67, label %continue__68

then0__67:                                        ; preds = %continue__65
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__68

continue__68:                                     ; preds = %then0__67, %continue__65
  %99 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 33 to %Result*))
  br i1 %99, label %then0__68, label %continue__67

then0__68:                                        ; preds = %continue__68
  call void @__quantum__qis__x__body(%Qubit* null)
  %100 = add i64 %count.32, 1
  br label %continue__67

continue__67:                                     ; preds = %then0__68, %continue__68
  %count.33 = phi i64 [ %100, %then0__68 ], [ %count.32, %continue__68 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 34 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %101 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 34 to %Result*))
  br i1 %101, label %then0__69, label %continue__70

then0__69:                                        ; preds = %continue__67
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__70

continue__70:                                     ; preds = %then0__69, %continue__67
  %102 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 34 to %Result*))
  br i1 %102, label %then0__70, label %continue__69

then0__70:                                        ; preds = %continue__70
  call void @__quantum__qis__x__body(%Qubit* null)
  %103 = add i64 %count.33, 1
  br label %continue__69

continue__69:                                     ; preds = %then0__70, %continue__70
  %count.34 = phi i64 [ %103, %then0__70 ], [ %count.33, %continue__70 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 35 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %104 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 35 to %Result*))
  br i1 %104, label %then0__71, label %continue__72

then0__71:                                        ; preds = %continue__69
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__72

continue__72:                                     ; preds = %then0__71, %continue__69
  %105 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 35 to %Result*))
  br i1 %105, label %then0__72, label %continue__71

then0__72:                                        ; preds = %continue__72
  call void @__quantum__qis__x__body(%Qubit* null)
  %106 = add i64 %count.34, 1
  br label %continue__71

continue__71:                                     ; preds = %then0__72, %continue__72
  %count.35 = phi i64 [ %106, %then0__72 ], [ %count.34, %continue__72 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 36 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %107 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 36 to %Result*))
  br i1 %107, label %then0__73, label %continue__74

then0__73:                                        ; preds = %continue__71
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__74

continue__74:                                     ; preds = %then0__73, %continue__71
  %108 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 36 to %Result*))
  br i1 %108, label %then0__74, label %continue__73

then0__74:                                        ; preds = %continue__74
  call void @__quantum__qis__x__body(%Qubit* null)
  %109 = add i64 %count.35, 1
  br label %continue__73

continue__73:                                     ; preds = %then0__74, %continue__74
  %count.36 = phi i64 [ %109, %then0__74 ], [ %count.35, %continue__74 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 37 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %110 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 37 to %Result*))
  br i1 %110, label %then0__75, label %continue__76

then0__75:                                        ; preds = %continue__73
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__76

continue__76:                                     ; preds = %then0__75, %continue__73
  %111 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 37 to %Result*))
  br i1 %111, label %then0__76, label %continue__75

then0__76:                                        ; preds = %continue__76
  call void @__quantum__qis__x__body(%Qubit* null)
  %112 = add i64 %count.36, 1
  br label %continue__75

continue__75:                                     ; preds = %then0__76, %continue__76
  %count.37 = phi i64 [ %112, %then0__76 ], [ %count.36, %continue__76 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 38 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %113 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 38 to %Result*))
  br i1 %113, label %then0__77, label %continue__78

then0__77:                                        ; preds = %continue__75
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__78

continue__78:                                     ; preds = %then0__77, %continue__75
  %114 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 38 to %Result*))
  br i1 %114, label %then0__78, label %continue__77

then0__78:                                        ; preds = %continue__78
  call void @__quantum__qis__x__body(%Qubit* null)
  %115 = add i64 %count.37, 1
  br label %continue__77

continue__77:                                     ; preds = %then0__78, %continue__78
  %count.38 = phi i64 [ %115, %then0__78 ], [ %count.37, %continue__78 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 39 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %116 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 39 to %Result*))
  br i1 %116, label %then0__79, label %continue__80

then0__79:                                        ; preds = %continue__77
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__80

continue__80:                                     ; preds = %then0__79, %continue__77
  %117 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 39 to %Result*))
  br i1 %117, label %then0__80, label %continue__79

then0__80:                                        ; preds = %continue__80
  call void @__quantum__qis__x__body(%Qubit* null)
  %118 = add i64 %count.38, 1
  br label %continue__79

continue__79:                                     ; preds = %then0__80, %continue__80
  %count.39 = phi i64 [ %118, %then0__80 ], [ %count.38, %continue__80 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 40 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %119 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 40 to %Result*))
  br i1 %119, label %then0__81, label %continue__82

then0__81:                                        ; preds = %continue__79
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__82

continue__82:                                     ; preds = %then0__81, %continue__79
  %120 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 40 to %Result*))
  br i1 %120, label %then0__82, label %continue__81

then0__82:                                        ; preds = %continue__82
  call void @__quantum__qis__x__body(%Qubit* null)
  %121 = add i64 %count.39, 1
  br label %continue__81

continue__81:                                     ; preds = %then0__82, %continue__82
  %count.40 = phi i64 [ %121, %then0__82 ], [ %count.39, %continue__82 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 41 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %122 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 41 to %Result*))
  br i1 %122, label %then0__83, label %continue__84

then0__83:                                        ; preds = %continue__81
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__84

continue__84:                                     ; preds = %then0__83, %continue__81
  %123 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 41 to %Result*))
  br i1 %123, label %then0__84, label %continue__83

then0__84:                                        ; preds = %continue__84
  call void @__quantum__qis__x__body(%Qubit* null)
  %124 = add i64 %count.40, 1
  br label %continue__83

continue__83:                                     ; preds = %then0__84, %continue__84
  %count.41 = phi i64 [ %124, %then0__84 ], [ %count.40, %continue__84 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 42 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %125 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 42 to %Result*))
  br i1 %125, label %then0__85, label %continue__86

then0__85:                                        ; preds = %continue__83
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__86

continue__86:                                     ; preds = %then0__85, %continue__83
  %126 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 42 to %Result*))
  br i1 %126, label %then0__86, label %continue__85

then0__86:                                        ; preds = %continue__86
  call void @__quantum__qis__x__body(%Qubit* null)
  %127 = add i64 %count.41, 1
  br label %continue__85

continue__85:                                     ; preds = %then0__86, %continue__86
  %count.42 = phi i64 [ %127, %then0__86 ], [ %count.41, %continue__86 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 43 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %128 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 43 to %Result*))
  br i1 %128, label %then0__87, label %continue__88

then0__87:                                        ; preds = %continue__85
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__88

continue__88:                                     ; preds = %then0__87, %continue__85
  %129 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 43 to %Result*))
  br i1 %129, label %then0__88, label %continue__87

then0__88:                                        ; preds = %continue__88
  call void @__quantum__qis__x__body(%Qubit* null)
  %130 = add i64 %count.42, 1
  br label %continue__87

continue__87:                                     ; preds = %then0__88, %continue__88
  %count.43 = phi i64 [ %130, %then0__88 ], [ %count.42, %continue__88 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 44 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %131 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 44 to %Result*))
  br i1 %131, label %then0__89, label %continue__90

then0__89:                                        ; preds = %continue__87
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__90

continue__90:                                     ; preds = %then0__89, %continue__87
  %132 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 44 to %Result*))
  br i1 %132, label %then0__90, label %continue__89

then0__90:                                        ; preds = %continue__90
  call void @__quantum__qis__x__body(%Qubit* null)
  %133 = add i64 %count.43, 1
  br label %continue__89

continue__89:                                     ; preds = %then0__90, %continue__90
  %count.44 = phi i64 [ %133, %then0__90 ], [ %count.43, %continue__90 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 45 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %134 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 45 to %Result*))
  br i1 %134, label %then0__91, label %continue__92

then0__91:                                        ; preds = %continue__89
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__92

continue__92:                                     ; preds = %then0__91, %continue__89
  %135 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 45 to %Result*))
  br i1 %135, label %then0__92, label %continue__91

then0__92:                                        ; preds = %continue__92
  call void @__quantum__qis__x__body(%Qubit* null)
  %136 = add i64 %count.44, 1
  br label %continue__91

continue__91:                                     ; preds = %then0__92, %continue__92
  %count.45 = phi i64 [ %136, %then0__92 ], [ %count.44, %continue__92 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 46 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %137 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 46 to %Result*))
  br i1 %137, label %then0__93, label %continue__94

then0__93:                                        ; preds = %continue__91
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__94

continue__94:                                     ; preds = %then0__93, %continue__91
  %138 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 46 to %Result*))
  br i1 %138, label %then0__94, label %continue__93

then0__94:                                        ; preds = %continue__94
  call void @__quantum__qis__x__body(%Qubit* null)
  %139 = add i64 %count.45, 1
  br label %continue__93

continue__93:                                     ; preds = %then0__94, %continue__94
  %count.46 = phi i64 [ %139, %then0__94 ], [ %count.45, %continue__94 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 47 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %140 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 47 to %Result*))
  br i1 %140, label %then0__95, label %continue__96

then0__95:                                        ; preds = %continue__93
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__96

continue__96:                                     ; preds = %then0__95, %continue__93
  %141 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 47 to %Result*))
  br i1 %141, label %then0__96, label %continue__95

then0__96:                                        ; preds = %continue__96
  call void @__quantum__qis__x__body(%Qubit* null)
  %142 = add i64 %count.46, 1
  br label %continue__95

continue__95:                                     ; preds = %then0__96, %continue__96
  %count.47 = phi i64 [ %142, %then0__96 ], [ %count.46, %continue__96 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 48 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %143 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 48 to %Result*))
  br i1 %143, label %then0__97, label %continue__98

then0__97:                                        ; preds = %continue__95
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__98

continue__98:                                     ; preds = %then0__97, %continue__95
  %144 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 48 to %Result*))
  br i1 %144, label %then0__98, label %continue__97

then0__98:                                        ; preds = %continue__98
  call void @__quantum__qis__x__body(%Qubit* null)
  %145 = add i64 %count.47, 1
  br label %continue__97

continue__97:                                     ; preds = %then0__98, %continue__98
  %count.48 = phi i64 [ %145, %then0__98 ], [ %count.47, %continue__98 ]
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* nonnull inttoptr (i64 49 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* null)
  %146 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 49 to %Result*))
  br i1 %146, label %then0__99, label %continue__100

then0__99:                                        ; preds = %continue__97
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__100

continue__100:                                    ; preds = %then0__99, %continue__97
  %147 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 49 to %Result*))
  br i1 %147, label %then0__100, label %continue__99

then0__100:                                       ; preds = %continue__100
  call void @__quantum__qis__x__body(%Qubit* null)
  %148 = add i64 %count.48, 1
  br label %continue__99

continue__99:                                     ; preds = %then0__100, %continue__100
  %count.49 = phi i64 [ %148, %then0__100 ], [ %count.48, %continue__100 ]
  %__rtrnVal0__ = icmp sgt i64 %count.49, 25
  %__rtrnVal1__ = icmp slt i64 %count.49, 25
  %__rtrnVal2__ = icmp eq i64 %count.49, 50
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal0__, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i64 0, i64 0))
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal1__, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i64 0, i64 0))
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal2__, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2, i64 0, i64 0))
  call void @__quantum__rt__tuple_end_record_output()
  ret void
}

declare %Qubit* @__quantum__rt__qubit_allocate()

declare void @__quantum__qis__x__body(%Qubit*)

declare %Result* @__quantum__qis__m__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare %Result* @__quantum__rt__result_get_one()

declare i1 @__quantum__rt__result_equal(%Result*, %Result*)

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__rt__tuple_start_record_output()

declare void @__quantum__rt__bool_record_output(i1, i8*)

declare void @__quantum__rt__tuple_end_record_output()

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare i1 @__quantum__qis__read_result__body(%Result*)

attributes #0 = { "EntryPoint" "maxQubitIndex"="0" "maxResultIndex"="49" "requiredQubits"="1" "requiredResults"="50" }
