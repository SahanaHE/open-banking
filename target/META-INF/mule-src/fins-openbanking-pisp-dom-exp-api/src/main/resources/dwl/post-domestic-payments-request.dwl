/**
 * Map Post Domestic Payments Request. 
 */
%dw 2.0
output application/json
---
{
	Data: {
		ConsentId:vars.initial_payload.Data.ConsentId,
		Initiation: {
			UserID: vars.user_id as String,
			InstructionIdentification: vars.initial_payload.Data.Initiation.InstructionIdentification,
			EndToEndIdentification: vars.initial_payload.Data.Initiation.EndToEndIdentification,
			ChannelType: vars.initial_payload.Data.Initiation.ChannelType,
			LocalInstrument: vars.initial_payload.Data.Initiation.LocalInstrument default "",
			InstructionPriority: vars.initial_payload.Data.Initiation.InstructionPriority,
			Purpose: vars.initial_payload.Data.Initiation.Purpose default "",
			ChargeBearer: vars.initial_payload.Data.Initiation.ChargeBearer default "",
			CurrencyOfTransfer: vars.initial_payload.Data.Initiation.CurrencyOfTransfer,
			InstructedAmount: vars.initial_payload.Data.Initiation.InstructedAmount,
			ExchangeRateInformation: vars.initial_payload.Data.Initiation.ExchangeRateInformation,
			Debtor: vars.initial_payload.Data.Initiation.Debtor,
			DebtorAccount: vars.initial_payload.Data.Initiation.DebtorAccount,
			DebtorAgent: vars.initial_payload.Data.Initiation.DebtorAgent,
			Creditor: vars.initial_payload.Data.Initiation.Creditor,
			CreditorAccount: vars.initial_payload.Data.Initiation.CreditorAccount,
			CreditorAgent: vars.initial_payload.Data.Initiation.CreditorAgent,
			RemittanceInformation: vars.initial_payload.Data.Initiation.RemittanceInformation
		}
	},
	Risk: vars.initial_payload.Risk
}