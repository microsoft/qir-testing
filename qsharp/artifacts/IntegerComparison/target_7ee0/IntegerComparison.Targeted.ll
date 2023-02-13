; ModuleID = 'IntegerComparison/target_7ee0/IntegerComparison.Targeted.bc'
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
  %count.0 = phi i64 [ 10, %then0__2 ], [ 0, %continue__2 ]
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
  %4 = add nuw nsw i64 %count.0, 10
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
  %7 = add nsw i64 %count.1, 10
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
  %10 = add nsw i64 %count.2, 10
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
  %13 = add i64 %count.3, 10
  br label %continue__9

continue__9:                                      ; preds = %then0__10, %continue__10
  %count.4 = phi i64 [ %13, %then0__10 ], [ %count.3, %continue__10 ]
  %__rtrnVal0__ = icmp sgt i64 %count.4, 25
  %__rtrnVal1__ = icmp slt i64 %count.4, 25
  %__rtrnVal2__ = icmp eq i64 %count.4, 50
  call void @__quantum__rt__tuple_start_record_output()
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal0__, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i64 0, i64 0))
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal1__, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i64 0, i64 0))
  call void @__quantum__rt__bool_record_output(i1 %__rtrnVal2__, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2, i64 0, i64 0))
  call void @__quantum__rt__tuple_end_record_output()
  ret void
}

declare void @__quantum__qis__x__body(%Qubit*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare void @__quantum__rt__tuple_start_record_output()

declare void @__quantum__rt__bool_record_output(i1, i8*)

declare void @__quantum__rt__tuple_end_record_output()

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare i1 @__quantum__qis__read_result__body(%Result*)

attributes #0 = { "EntryPoint" "entry_point" "entrypoint_index"="0" "maxQubitIndex"="0" "maxResultIndex"="4" "requiredQubits"="1" "requiredResults"="5" }
