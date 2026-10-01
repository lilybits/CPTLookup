# CPTLookup : Calculation Rules

## Basic Calculation

A calculation begins by selecting an insurance and one or more CPT codes. For most CPT codes, the charge is simply the allowed amount * units. The total charge is the sum of each calculated charge.

## Insurance Pricing

The allowed amount for a CPT code can vary depending on the selected insurance.

The program must look up the correct allowed amount using both the selected insurance and the CPT code. This pricing information will be stored in the database.

## Units

Some CPT codes can be billed for multiple units.

The user will enter the number of units for each selected code. The program will use this value when calculating the charge.

Some insurance plans may also limit the number of units they will pay for. The program should be able to account for these limits or warn the user when the selected units exceed them.

## Special Pricing Rules

Not every CPT code uses a simple price-per-unit calculation.

Some insurance pricing may use a different amount for the first unit than for additional units. The calculator should be able to handle these special rules without requiring the user to calculate them manually.

There may also be special rules where:
- A service has a flat or per-day rate instead of a per-unit rate.
- One CPT code is included in another and should not be charged separately.
- The amount depends on what other CPT codes are being billed during the same visit.
- An insurance requires a different billing code for a particular service.


## Missing Pricing

If a CPT code does not have pricing information for the selected insurance, the program should not assume a price. The user should be notified that pricing information is unavailable.

## Unsupported Codes

Some insurance plans may not cover certain CPT codes. The program should be able to identify these codes rather than treating missing or zero pricing as a normal charge.

## Patient Responsibility

After the CPT charges are calculated, the program may also need to determine how much of the total should be charged to the patient.

Depending on the insurance, this may include a copay, coinsurance percentage, or other insurance-specific rules. If the patient has already paid part of the amount, that can also be included to calculate the remaining balance.

Some insurance plans may have rules where the office should not collect payment from the patient. The program should recognize these situations and notify the user.

## Calculation Total

Each selected CPT code will have its own calculated charge. The final charge will be the sum of all applicable line charges.

## Insurance-Specific Rules

Some insurance plans have additional rules that do not apply to every insurance.

These rules will need to be confirmed before they are added to the program. The calculator should be designed so that insurance-specific rules can be added or changed without rewriting the entire calculation system.
