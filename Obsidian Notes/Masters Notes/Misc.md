# Pom Timer
```
<%*
if(log.task.name==""){
log.task.name="Work"
}
if (log.mode == "WORK") {
  if (!log.finished) {
    tR = `- ${log.task.name} (time: ${log.duration} min) [startTime:: ${log.begin.format("HH:mm")}] [endTime:: ${log.end.format("HH:mm")}]`;
  } else {
	tR = `- ${log.task.name} (time: ${log.duration} min) [startTime:: ${log.begin.format("HH:mm")}] [endTime:: ${log.end.format("HH:mm")}]`;
  }
} else {
  tR = `- Break (time: ${log.duration} min) [startTime:: ${log.begin.format("HH:mm")}] [endTime:: ${log.end.format("HH:mm")}]`;
}
%>
```
