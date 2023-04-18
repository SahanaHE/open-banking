/**
 * Map confirm funds ASPSP request. 
 */
%dw 2.0
output application/json
---
{
	Account: {
		SchemeName: payload.Data.Initiation.DebtorAccount.SchemeName,
		Identification: payload.Data.Initiation.DebtorAccount.Identification,
		Name: payload.Data.Initiation.DebtorAccount.Name,
		AccountType: payload.Data.Initiation.DebtorAccount.AccountType,
		SecondaryIdentification: payload.Data.Initiation.DebtorAccount.SecondaryIdentification
	},
	Agency: {
		Name: payload.Data.Initiation.DebtorAgent.Name,
		Identification: payload.Data.Initiation.DebtorAgent.Identification,
		SchemeName: payload.Data.Initiation.DebtorAgent.SchemeName
	},
	Amount: {
		Amount: payload.Data.Initiation.InstructedAmount.Amount,
		Currency: payload.Data.Initiation.InstructedAmount.Currency
	},
	Channel: payload.Data.Initiation.ChannelType,
	TransactionType: payload.Data.Initiation.InstructionIdentification
}