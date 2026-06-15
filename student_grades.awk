# Name: Ashley Espinoza
# Course: Introduce to Unix
# File: student_grades.awk
# Purpose: Calculate the weighted percentage and letter grade for each student.

BEGIN { 
FS="," 
printf "%-10s %10s %5s\n", "Student", "Percent", "Grade"
}

NR > 1 { 
student = $1 
score_total[student] += $4 
max_total[student] += $5
}

END { 
for (student in score_total) { 
percent = (score_total[student] / max_total[student]) * 100 

if (percent >= 90) { 
grade = "A" 
} else if (percent >= 80) { 
grade = "B" 
} else if (percent >= 70) { 
grade = "C" 
} else if (percent >= 60) { 
grade = "D" 
} else { 
grade = "E" 
} 

printf "%-10s %9.2f%% %5s\n", student, percent, grade 
}
}
