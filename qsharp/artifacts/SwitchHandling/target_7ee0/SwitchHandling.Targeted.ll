; ModuleID = 'SwitchHandling.Targeted.bc'
source_filename = "qat-link"

%Qubit = type opaque
%Result = type opaque

@0 = internal constant [4 x i8] c"0_r\00"

define void @Tests__Common__L3__SwitchHandling() #0 {
entry:
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__reset__body(%Qubit* null)
  %0 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %0, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue__1

continue__1:                                      ; preds = %then0__1, %entry
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*), %Result* nonnull inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  %1 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  br i1 %1, label %then0__2, label %continue__2

then0__2:                                         ; preds = %continue__1
  call void @__quantum__qis__x__body(%Qubit* nonnull inttoptr (i64 1 to %Qubit*))
  br label %continue__2

continue__2:                                      ; preds = %then0__2, %continue__1
  %2 = call i1 @__quantum__qis__read_result__body(%Result* null)
  %spec.select = select i1 %2, i64 2, i64 0
  %3 = call i1 @__quantum__qis__read_result__body(%Result* nonnull inttoptr (i64 1 to %Result*))
  %4 = select i1 %3, i64 1, i64 0
  %rand.1 = or i64 %spec.select, %4
  br label %NodeBlock3

NodeBlock3:                                       ; preds = %continue__2
  %Pivot4 = icmp slt i64 %rand.1, 1
  br i1 %Pivot4, label %continue__5, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock3
  %Pivot = icmp slt i64 %rand.1, 2
  br i1 %Pivot, label %then1__2, label %LeafBlock

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i64 %rand.1, 2
  br i1 %SwitchLeaf, label %then2__2, label %NewDefault

then1__2:                                         ; preds = %NodeBlock
  call void @__quantum__qis__ry__body(double 0x400921FB54442D18, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  br label %continue__5

then2__2:                                         ; preds = %LeafBlock
  call void @__quantum__qis__rz__body(double 0x400921FB54442D18, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  br label %continue__5

NewDefault:                                       ; preds = %LeafBlock
  br label %then0__6

then0__6:                                         ; preds = %NewDefault
  call void @__quantum__qis__rx__body(double 0x400921FB54442D18, %Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  br label %continue__5

continue__5:                                      ; preds = %then0__6, %then2__2, %then1__2, %NodeBlock3
  call void @__quantum__qis__mz__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*), %Result* nonnull inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* nonnull inttoptr (i64 2 to %Qubit*))
  call void @__quantum__rt__result_record_output(%Result* nonnull inttoptr (i64 2 to %Result*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i64 0, i64 0))
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

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result*)

declare i1 @__quantum__qis__read_result__body(%Result*)

attributes #0 = { "EntryPoint" "maxQubitIndex"="2" "maxResultIndex"="2" "requiredQubits"="3" "requiredResults"="3" }
