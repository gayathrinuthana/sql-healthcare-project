# 🏥 Healthcare Wait Time Analysis Using SQL

## 📌 Objective

Analyze appointment wait times in a hospital to discover scheduling inefficiencies, department bottlenecks, and improve patient service delivery using SQL.

---

## 🧰 Tools Used
- MySQL (via DB Fiddle)
- SQL
- Publicly generated sample dataset

---

## 🗂️ Dataset Overview

| Column | Description |
|--------|-------------|
| appointment_id | Unique ID for each appointment |
| patient_id | Unique ID for each patient |
| doctor_id | Doctor handling the appointment |
| department | Medical department (Cardiology, etc.) |
| appointment_date | Scheduled date |
| appointment_time | Scheduled time |
| checkin_time | Actual check-in time |
| wait_time_minutes | Time difference (in minutes) |
| status | Completed / No Show / Cancelled |

---

## ❓ Business Questions Answered

- What is the **overall average wait time**?
- Which **departments** have the **longest delays**?
- Which **doctors** are associated with more waiting?
- What **times of day** are busiest?
- Do **weekdays** affect wait time?

---
## 🔍 Key Findings
- **Cardiology** had the highest average wait time of 30 minutes.
- Appointments scheduled between 12 PM and 2 PM experienced the longest waits.
- The overall no-show rate was 15%, with Pediatrics having the highest at 25%.

## 🧾 Sample SQL Queries
```sql
-- Average wait time per department
SELECT department, ROUND(AVG(wait_time_minutes), 2) AS avg_wait_time
FROM appointments
WHERE status = 'Completed'
GROUP BY department
ORDER BY avg_wait_time DESC;

### Average Wait Time:
```sql
SELECT ROUND(AVG(wait_time_minutes), 2) AS avg_wait_time 
FROM appointments WHERE status = 'Completed';
```
---
### 📸 Sample Output

## 📸 Screenshot: Average Wait Time

Shows the overall average wait time for completed appointments.

![Average Wait Time](images/avg_wait_time.png)

## 📸 Screenshot: Average Wait Time by Department

Highlights which departments have longer average delays.

![Average Wait Time](images/department_wait_time.png)

## 📸 Screenshot: Doctor Wait Time

Displays average wait time per doctor, helping to identify scheduling pressure.

![Average Wait Time](images/doctor_wait_time.png)

## 📸 Screenshot: Hour Slot Wait Time

Visualizes which hours of the day typically have the longest patient waits.

![Average Wait Time](images/hour_slot_wait_time.png)

## 📸 Screenshot: Day Of Week Wait Time

Breaks down wait times by weekdays to uncover day-specific patterns.

![Average Wait Time](images/day_of_week_wait_time.png)


---
## ✅ Conclusion

By analyzing patient wait times, this project identifies key bottlenecks in scheduling and doctor availability. These insights could help hospital administrators:

Optimize appointment distribution across the week

Adjust doctor schedules in high-delay departments

Reduce patient dissatisfaction and improve operational flow
---
## 🚀 How to Run This Project

1. Go to [DB Fiddle](https://www.db-fiddle.com/)
2. Create the table using the SQL script in `wait_time_queries.sql`
3. Insert the sample records or upload your own dataset
4. Run each query block and observe the insights
---
## 📂 Project Structure

healthcare-sql-wait-time-analysis/
├── dataset/
│   └── hospital_appointments.csv
├── queries/
│   └── wait_time_queries.sql
├── images/
│   ├── avg_wait_time.png
│   ├── department_wait_time.png
│   ├── doctor_wait_time.png
│   ├── hour_slot_wait_time.png
│   └── day_of_week_wait_time.png
└── README.md

## 📄 License
This project is open-source and available under the MIT License.