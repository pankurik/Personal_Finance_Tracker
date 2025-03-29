# 💸 Personal Finance Tracker

A database-powered Discord bot that helps users manage income, expenses, savings goals, and more — all through simple bot commands. Developed as part of my coursework for CSC 675/775 – Database Systems at San Francisco State University.

---

## 👩‍💻 Developed by

**Pankuri Khare**  
📧 pkhare@mail.sfsu.edu  
🌉 San Francisco State University

---

## 📌 Project Overview

This project combines relational database design with a real-time interface using a Discord bot.  
Key features include:

- Budget tracking and expense management  
- Transaction categorization and goals  
- Smart alerts and financial summaries  
- Multi-user group savings and shared tracking  
- Simple command-based interaction using Discord  

---

## 🛠️ Tech Stack

- **MySQL** – schema, sample data, and stored procedures  
- **MySQL Workbench** – ER and EER modeling  
- **Python** – backend + bot logic  
- **discord.py** – Discord bot framework  
- **Replit** – hosted environment  
- **Environment Variables** – for secure DB and bot credentials  

---

## 🧱 Project Structure

```
├── main.py               # Discord bot logic  
├── database.py           # DB connection + query runner  
├── models.py             # Object models for database operations  
├── unit_tests.py         # Testing without using Discord API  
├── databasemodel.sql     # SQL schema  
├── insert.sql            # Sample data  
├── eer.mwb               # Enhanced Entity-Relationship model (MySQL Workbench)  
├── m3.pdf                # Full documentation (requirements, ERD, constraints, etc.)  
├── .env.example          # Sample env file  
├── .gitignore            # Files to ignore in version control  
└── README.md             # You're here!
```

---

## 🧠 Highlights

- Relational design normalized to 3NF  
- DAO-based modular structure (separation of logic + queries)  
- Uses environment variables to protect secrets  
- Designed for extensibility with additional bot commands  
- Built-in support for testing via `unit_tests.py` 

---

### 🧪 Testing & Sample Data

Sample entries include:
- Income and expense logs
- Categories (Food, Rent, Transport, etc.)
- Monthly budgets
- Queries for totals, comparisons, and category-wise spend

---

### 🧠 What I Learned

- Designing normalized databases from scratch
- Using ER diagrams to guide schema creation
- Applying constraints to maintain data integrity
- Generating useful, reusable SQL queries for data analysis

---

### 🔮 Future Plans

- Add a basic web or mobile UI
- Integrate visual charts using external tools or libraries
- Support user login and multiple accounts

---

### 📚 Coursework Info

This project was developed for the course:  
**CSC 675/775 – Database Systems**  
Spring 2024, San Francisco State University  
**Instructor-assigned topic:** *Personal Finance Tracker*  
**Coursework Milestones:** Product Summary, Conceptual Design, Architecture & Modeling, Forward Engineering, Final Project

---

## 📄 License

Educational use only. Feel free to fork, remix, or build upon with credit.
