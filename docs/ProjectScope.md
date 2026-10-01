# CPTLookup : Project Scope & Requirements

## 1. Project Overview

CPTLookup is a desktop application designed to help staff at a chiropractic office calculate charges for CPT codes.

The main purpose of the program is to make calculating charges faster and easier. 
Staff will be able to select one or more CPT codes, enter the number of units for each code, and have the program calculate the amount that should be charged using the stored pricing information.

The program will also work as a CPT code lookup tool, allowing staff to search for codes, descriptions, and prices without manually searching through the office's current spreadsheets.

CPTLookup will be installed on multiple office computers, with shared data stored on the office server. This will allow CPT codes and prices to be updated in one place and used by every computer running the application.

## 2. Project Goals

- Make calculating CPT charges quick and simple.
- Allow multiple CPT codes and units to be included in one calculation.
- Make CPT codes, descriptions, and prices easy to look up.
- Keep CPT and pricing information consistent across office computers.
- Make codes and prices easy to update when they change.

## 3. Users

The main users will be front desk and billing staff at a chiropractic office.
The program should be simple enough to use frequently throughout the workday without requiring technical knowledge.

## 4. Core Requirements

**The main feature of CPTLookup will be the Charge Calculator.**

Users should be able to:
- Select one or more CPT codes.
- Enter the number of units for each code.
- View the price associated with each selected code.
- Add or remove codes from the calculation.
- Calculate the charge for each individual code.
- View the total charge for all selected codes.
- Change a code or number of units and recalculate the total.


**CPT Code Lookup**

Users should also be able to:
- Search for a CPT code by number.
- Search by description or keyword.
- View the description of a CPT code.
- View its pricing information.
- Add a code found through search to the current calculation.

**Shared Data**

CPT codes and pricing information will be stored separately from the application in a shared database.
The office computers should use the same data so that pricing changes only need to be updated once.

## 5. Data

The database will store information needed for CPT calculations, including:
- CPT code
- CPT description
- Pricing information
- Any additional information needed to determine the correct charge

The exact database structure will be decided as the project is developed and the existing office worksheet is analyzed.

*CPTLookup will not store patient information.*

## 6. Planned Technologies

- C#
- .NET
- WPF
- SQL

These may change as the project develops.

## 7. First Version / MVP

The first version will focus on the complete basic calculation workflow:

1. Load CPT codes and prices from stored data.
2. Select CPT codes for a calculation.
3. Enter the number of units for each code.
4. Calculate the charge for each code.
5. Calculate the total charge.
6. Search for CPT codes and descriptions.
7. Display everything in a simple desktop interface.

Once the basic calculator works reliably, more complicated pricing rules and additional features can be added.

## 8. Possible Future Features

- Add and edit CPT codes from within the application.
- Different insurance or fee schedules.
- More advanced calculation rules.
- Import updated prices from spreadsheets.
- Favorites or commonly used CPT codes.
- Recently used codes.
- User permissions for editing pricing information.
- Pricing change history.

*These are not requirements for the first version and may change as the project develops.*
