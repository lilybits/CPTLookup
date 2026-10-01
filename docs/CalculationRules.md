# CPTLookup : Calculation Rules

## Basic Calculation

A calculation begins by selecting an insurance and one or more CPT codes. For most CPT codes, the charge is simply the allowed amount * units. The total charge is the sum of each calculated charge.

## Insurance Pricing

The allowed amount for a CPT code can vary depending on the selected insurance.

The program must look up the correct allowed amount using both the selected insurance and the CPT code. This pricing information will be stored in the database.

## Units

Some CPT codes can be billed for multiple units.

The user will enter the number of units for each selected code. The program will use this value when calculating the charge.

## Special Pricing Rules

Not every CPT code uses a simple price-per-unit calculation.

Some insurance pricing may use a different amount for the first unit than for additional units. The calculator should be able to handle these special rules without requiring the user to calculate them manually.

## Missing Pricing

If a CPT code does not have pricing information for the selected insurance, the program should not assume a price. The user should be notified that pricing information is unavailable.

## Unsupported Codes

Some insurance plans may not cover certain CPT codes. The program should be able to identify these codes rather than treating missing or zero pricing as a normal charge.

## Calculation Total

Each selected CPT code will have its own calculated charge. The final charge will be the sum of all applicable line charges.
