; ModuleID = 'barriers_only'
source_filename = "barriers_only"

%Result = type opaque

declare void @__quantum__rt__result_record_output(%Result*)

declare void @__quantum__rt__array_start_record_output()

declare void @__quantum__rt__array_end_record_output()

define void @main() #0 {
entry:
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__result_record_output(%Result* null)
  call void @__quantum__rt__array_end_record_output()
  ret void
}

attributes #0 = { "EntryPoint" "requiredQubits"="2" "requiredResults"="1" }
