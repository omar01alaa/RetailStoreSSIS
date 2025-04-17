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


## 🚀 How to Run

1. Open **SQL Server Data Tools (SSDT)** or **Visual Studio** with the SSIS extension.
2. Load the `Package.dtsx` file into your SSIS project.
3. Make sure your Excel and CSV source file paths are updated correctly.
4. Ensure the destination database (`RetailDW`) exists and has the required tables.
5. Execute the package and monitor the progress.
6. Review redirected error rows and duplicate logs (if applicable).

## ✅ Outcome

- Improved data consistency and quality across branches.
- Built a robust, scalable ETL workflow for retail operations.
- Applied error handling and duplicate detection for better data governance.

## 📬 Contact

For any questions or suggestions, feel free to reach out via GitHub or LinkedIn.

---

