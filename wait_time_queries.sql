
-- 1. View all records
SELECT * FROM appointments;

-- 2. Overall Average Wait Time
SELECT 
  ROUND(AVG(wait_time_minutes), 2) AS avg_wait_time 
FROM 
  appointments 
WHERE 
  status = 'Completed';

-- 3. Department-wise Average Wait Time
SELECT 
  department, 
  ROUND(AVG(wait_time_minutes), 2) AS avg_wait_time 
FROM 
  appointments 
WHERE 
  status = 'Completed'
GROUP BY 
  department
ORDER BY 
  avg_wait_time DESC;

-- 4. Doctor-wise Average Wait Time
SELECT 
  doctor_id, 
  ROUND(AVG(wait_time_minutes), 2) AS avg_wait 
FROM 
  appointments 
WHERE 
  status = 'Completed'
GROUP BY 
  doctor_id
ORDER BY 
  avg_wait DESC;

-- 5. Hour-wise Wait Time Trends
SELECT 
  HOUR(appointment_time) AS hour_slot,
  ROUND(AVG(wait_time_minutes), 2) AS avg_wait
FROM 
  appointments 
WHERE 
  status = 'Completed'
GROUP BY 
  HOUR(appointment_time)
ORDER BY 
  avg_wait DESC;

-- 6. Day of Week vs Wait Time
SELECT 
  DAYNAME(appointment_date) AS day_of_week,
  ROUND(AVG(wait_time_minutes), 2) AS avg_wait
FROM 
  appointments 
WHERE 
  status = 'Completed'
GROUP BY 
  day_of_week
ORDER BY 
  avg_wait DESC;
