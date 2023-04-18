%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "Data": {
    "ConsentId": "1234",
    "Initiation": {
      "InstructionIdentification": "REMITTANCE",
      "EndToEndIdentification": "FRESCO.21302.GFX.37",
      "ChannelType": "LOCAL",
      "LocalInstrument": "",
      "InstructionPriority": "Normal",
      "Purpose": "CREDIT_TRANSFER",
      "ChargeBearer": "BorneByDebtor",
      "CurrencyOfTransfer": "USD",
      "InstructedAmount": {
        "Amount": 200,
        "Currency": "USD"
      },
      "ExchangeRateInformation": {
        "UnitCurrency": "USD",
        "ExchangeRate": 1,
        "RateType": "Actual",
        "ContractIdentification": ""
      },
      "Debtor": {
        "Name": "SavingsAccount"
      },
      "DebtorAccount": {
        "SchemeName": "RetailBank",
        "Identification": "79350035",
        "Name": "Ariana Grande",
        "AccountType": "Checking",
        "SecondaryIdentification": ""
      },
      "DebtorAgent": {
        "Name": "BOA",
        "Identification": "BankBOA123",
        "SchemeName": "RetailBank"
      },
      "Creditor": {
        "Name": "CheckingAccount"
      },
      "CreditorAgent": {
        "Name": "BOA",
        "Identification": "BankBOA123",
        "SchemeName": "RetailBank"
      },
      "CreditorAccount": {
        "SchemeName": "RetailBank",
        "Identification": "79350035",
        "Name": "Jonathan Swift",
        "AccountType": "Checking",
        "SecondaryIdentification": "0002"
      },
      "RemittanceInformation": {
        "Reference": "FRESCO-037",
        "Unstructured": "Internal ops code 5120103"
      }
    }
  },
  "Risk": {
    "PaymentContextCode": "PersonToPerson",
    "MerchantCategoryCode": "5967",
    "MerchantCustomerIdentification": "053598653254",
    "DeliveryAddress": {
      "AddressLine": "",
      "StreetName": "Main St.",
      "BuildingNumber": "123",
      "PostCode": "17699",
      "TownName": "Chicago",
      "CountrySubdivision": "Illinois",
      "Country": "US"
    }
  }
})