; ModuleID = 'gate_measure_active_no_active'
source_filename = "gate_measure_active_no_active"

declare void @__quantum__rt__array_end_record_output()

declare void @__quantum__rt__array_start_record_output()

define void @main() #0 {
entry:
  call void @__quantum__rt__array_start_record_output()
  call void @__quantum__rt__array_end_record_output()
  ret void
}

attributes #0 = { "EntryPoint" "requiredQubits"="1" "requiredResults"="0" }
