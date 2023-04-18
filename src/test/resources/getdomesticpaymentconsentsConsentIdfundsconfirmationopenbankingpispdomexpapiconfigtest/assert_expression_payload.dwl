%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "Data": {
    "FundsAvailableDataTime": "2017-06-05T15:15:22+00:00",
    "FundsAvailable": true
  }
})