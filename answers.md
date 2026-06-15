# answers.md
# Task 1
Command:

```bash
awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
```
Result:
322
```
Explanation: I used `-F','` because the file is separated by commas. I used `NR>1` to skip the header line, then I used a counter to count each submission and `END` to print the final number.
