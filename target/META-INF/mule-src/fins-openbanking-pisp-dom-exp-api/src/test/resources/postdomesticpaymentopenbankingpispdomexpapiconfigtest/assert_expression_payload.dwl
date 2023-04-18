%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "Data": {
    "PaymentId": "12345678",
    "ConsentId": "123-consent",
    "CreationDateTime": "2017-06-05T15:15:22+00:00",
    "Status": "AcceptedCreditSettlementCompleted",
    "StatusUpdateDateTime": "2017-06-05T15:15:22+00:00",
    "ExpectedExecutionDateTime": "2017-06-05T15:15:22+00:00",
    "ExpectedSettlementDateTime": "2017-06-05T15:15:22+00:00",
    "Charges": {
      "ChargeBearer": "BorneByCreditor",
      "Type": ""
    },
    "ExchangeRateInformation": {
      "UnitCurrency": "USD",
      "ExchangeRate": 1.0,
      "RateType": "Actual",
      "ContractIdentification": "123xyfgh"
    },
    "Initiation": {
      "InstructionIdentification": "CREDIT_TRANSFER",
      "EndToEndIdentification": "FRESCO.21302.GFX.37",
      "ChannelType": "Bank_SWIFT",
      "LocalInstrument": "",
      "InstructionPriority": "Normal",
      "Purpose": "",
      "ChargeBearer": "BorneByDebtor",
      "CurrencyOfTransfer": "USD",
      "InstructedAmount": {
        "Amount": 200.00,
        "Currency": "USD"
      },
      "ExchangeRateInformation": {
        "UnitCurrency": "USD",
        "ExchangeRate": 1.0,
        "RateType": "Actual",
        "ContractIdentification": ""
      },
      "DebtorAccount": {
        "SchemeName": "RetailBank",
        "Identification": "79350035",
        "Name": "SavingsAccount",
        "SecondaryIdentification": ""
      },
      "DebtorAgent": {
        "Name": "BOA",
        "Identification": "BankBOA123",
        "SchemeName": "RetailBank"
      },
      "CreditorAgent": {
        "Name": "CITI",
        "Identification": "CITI999",
        "SchemeName": "RetailBank"
      },
      "CreditorAccount": {
        "SchemeName": "RetailBank",
        "Identification": "79350035",
        "Name": "ACME Inc",
        "SecondaryIdentification": "0002"
      },
      "RemittanceInformation": {
        "Reference": "FRESCO-037",
        "Unstructured": "Internal ops code 5120103"
      }
    }
  }
})