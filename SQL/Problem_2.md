# SQL Challenge: Analyzing Popular Fitness Training Sessions by Age Group

## Background

Alex, a personal trainer, offers various fitness training sessions to clients aimed at different fitness goals, such as weight gain, weight loss, strength training, and endurance. Each training session is attended by multiple clients who want to achieve specific fitness objectives.

Alex wants to analyze the popularity of different training sessions among different age groups. The goal is to identify which types of sessions have attracted more than 2 clients from the same age group.

## Tables Provided

1. **`Training_Sessions` Table:**

This table records details of each training session offered by Alex.

| session_id | session_type        | session_date |
|------------|---------------------|--------------|
|      1     | "Weight Gain"       | 2024-05-01   |
|      2     | "Weight Loss"       | 2024-05-15   |
|      3     | "Strength Training" | 2024-06-10   |
|      4     | "Endurance"         | 2024-07-20   |

- **Columns:**
  - `session_id`: Unique identifier for each training session.
  - `session_type`: Type of the training session (e.g., Weight Gain, Weight Loss, Strength Training).
  - `session_date`: Date when the training session took place.

2. **`Attendance` Table:**

This table records the attendance of clients for each training session.

| attendance_id | session_id | client_id |
|---------------|------------|-----------|
|      1        |      1     |    101    |
|      2        |      1     |    102    |
|      3        |      2     |    103    |
|      4        |      2     |    106    |
|      5        |      3     |    104    |
|      6        |      3     |    105    |
|      7        |      4     |    107    |
|      8        |      2     |    108    |
|      9        |      2     |    109    |
|     10        |      4     |    110    |

- **Columns:**
  - `attendance_id`: Unique identifier for each attendance record.
  - `session_id`: ID of the training session attended by the client.
  - `client_id`: ID of the client who attended the session.

3. **`Clients` Table:**

This table contains information about the clients who attended the sessions.

| client_id | client_name | age_group |
|-----------|-------------|-----------|
|    101    |   Alice     | "18-25"   |
|    102    |   Bob       | "26-35"   |
|    103    |   Charlie   | "18-25"   |
|    104    |   David     | "36-45"   |
|    105    |   Eve       | "26-35"   |
|    106    |   Frank     | "18-25"   |
|    107    |   Grace     | "26-35"   |
|    108    |   Hannah    | "36-45"   |
|    109    |   Ivan      | "18-25"   |
|    110    |   Jack      | "46-55"   |

- **Columns:**
  - `client_id`: Unique identifier for each client.
  - `client_name`: Name of the client.
  - `age_group`: The age group of the client.

## Objective

Write an SQL query to find the types of training sessions that have had more than 2 clients from the same age group. Display the type of the training session, age group, and the total number of clients who attended.

## Expected Output

The output should look like:

| session_type  | age_group | total_clients_attended |
|---------------|-----------|------------------------|
| "Weight Loss" | "18-25"   |           3            |
