# RetailStoreSSIS
Use SSIS tool for ETL pipeline for Retail Store data
# 🧩 SSIS ETL Project: Retail Data Cleansing and Transformation

This project demonstrates a complete end-to-end ETL (Extract, Transform, Load) solution using **SQL Server Integration Services (SSIS)** for a simulated retail business. It handles data from multiple branches and ensures high data quality through staging, validation, and transformation processes.

## 📦 Project Overview

The ETL package automates the following:
- Extraction of raw data from multiple sources (CSV, Excel).
- Cleansing and validation of customer, sales, and branch data.
- Identification and separation of duplicate records using a Script Component.
- Standardization of date formats, capitalization of names, and removal of null or invalid values.
- Loading of clean, transformed data into a SQL Server data warehouse.

## 🛠️ Tools & Technologies

- Microsoft SQL Server Integration Services (SSIS)
- SQL Server 2019+
- Excel (.xlsx)
- CSV files
- T-SQL
- Script Component (C#)

## 📂 Key Components

| Component          | Description |
|-------------------|-------------|
| `Data Flow Task`  | Extracts, transforms, and loads the data through various SSIS components |
| `Script Component`| Detects and separates duplicate rows based on email and phone |
| `Staging Tables`  | Temporarily stores raw data for validation and transformation |
| `OLE DB Destination` | Loads cleaned data into the final data warehouse tables |

## 🧪 Data Cleansing Logic

- ✅ Removed rows with missing required fields
- 🧹 Standardized all date formats to `yyyy-MM-dd`
- 🔠 Capitalized customer names
- 🚫 Removed or redirected duplicate entries
- 🔄 Split unique and duplicate rows using Script Component
- 📤 Redirected duplicates to a separate destination for further review

## 📁 Folder Structure
1. You have a folder named "RetailStore". Download this folder as-is and open it using your SSIS development tool (e.g., SQL Server Integration Services Tools in Visual Studio).
2. You have a file named "DW_RetailStore.sql". This file contains the database with all the destination tables you need. Run it on your Microsoft SQL Server to create the database.
3. All the source files you need are located in the "RetailStoreData" folder.


## ✅ Outcome

- Improved data consistency and quality across branches.
- Built a robust, scalable ETL workflow for retail operations.
- Applied error handling and duplicate detection for better data governance.

## 📬 Contact

For any questions or suggestions, feel free to reach out via GitHub or LinkedIn.

---

