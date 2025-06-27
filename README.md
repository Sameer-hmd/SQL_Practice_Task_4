# SQL_Practice_Task_4
# 📊 Task 4: Aggregate Functions and Grouping

## 🎯 Objective
The objective of this task is to practice **summarizing and analyzing tabular data** using SQL aggregate functions such as `SUM()`, `COUNT()`, `AVG()`, `MIN()`, and `MAX()`, along with `GROUP BY` and `HAVING` clauses to group and filter results.

---

## 🧱 Tables Used

This task uses the following existing tables from the Library Management System:
- `Book`: Information about books
- `Loan`: Records of book borrowings
- `Member`: Library members

---

## 🛠 Tools Used
- MySQL Workbench / DB Browser for SQLite

---

## 🛠️ Key Concepts Practiced

### ✅ Aggregate Functions
- `COUNT()` – Count the number of records in a group
- `SUM()` – Calculate the total value of a numeric column
- `AVG()` – Compute the average value
- `MIN()` / `MAX()` – Identify minimum or maximum values

### ✅ GROUP BY
- Categorize data based on a column (e.g., genre, member ID)

### ✅ HAVING
- Filter grouped results (used after `GROUP BY`)

---

## 🧪 Examples Performed

- Count the number of books in each genre
- Count how many books each member has borrowed
- Calculate total and average loan durations
- Find the oldest and newest published books
- Get average publication year
- Identify members who borrowed more than 2 books
- Filter members with average loan durations over 10 days (without JOIN)

---

## 🧠 Learning Outcomes

By completing this task, you will:
- Understand how to group data and apply calculations across groups
- Learn to summarize large datasets using SQL
- Practice filtering grouped data using `HAVING`
- Improve your ability to write analytical queries in SQL

---

