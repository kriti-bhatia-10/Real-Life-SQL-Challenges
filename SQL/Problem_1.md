### **SQL Challenge: Find the Top Fruit Picker!**

#### **Background:**

In a large orchard, different people are responsible for picking various types of fruits from the trees. The orchard manager wants to find out who the top fruit pickers are by identifying those who have picked more than 100 fruits in total, regardless of the type of fruit.

#### **Tables Provided:**

1. **`Fruit_Picking` Table:**

This table records each fruit-picking session.

| session_id | person_id | fruit_type | fruit_quantity |
|------------|-----------|------------|----------------|
|      1     |    101    |   Apples   |       50       |
|      2     |    102    |  Oranges   |       30       |
|      3     |    101    |  Bananas   |       40       |
|      4     |    103    |   Apples   |       60       |
|      5     |    102    |   Apples   |       20       |

- **Columns:**
  - `session_id`: Unique identifier for each picking session.
  - `person_id`: The ID of the person who picked the fruit.
  - `fruit_type`: The type of fruit picked.
  - `fruit_quantity`: The number of fruits picked in that session.

2. **`People` Table:**

This table contains information about the people who pick fruits.

| person_id | person_name |
|-----------|-------------|
|    101    |    Alice    |
|    102    |     Bob     |
|    103    |   Charlie   |

- **Columns:**
  - `person_id`: The unique identifier for each person.
  - `person_name`: The name of the person.

#### **Objective:**

Write an SQL query to find the names of the people who have picked more than 100 fruits in total. Display the name of the person and their total number of fruits picked.

#### **Expected Output:**

The output should look like:

| person_name | total_fruits_picked |
|-------------|---------------------|
|    Alice    |        90           |
|   Charlie   |        60           |

---