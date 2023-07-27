{
  "Comment": "Transaction Process State Machine",
  "StartAt": "ProcessTransaction",
  "States": {
    "ProcessTransaction":{
      "Type":"Choice",
      "Choices":[
        {
          "Variable":"$.TransactionType",
          "StringEquals":"PURCHASE",
          "Next":"ProcessPurchase"
        },
        {
          "Variable":"$.TransactionType",
          "StringEquals":"REFUND",
          "Next":"ProcessRefund"
        }
      ]
    },
    "ProcessRefund":{
      "Type":"Task",
      "Resource":"arn:aws:lambda:us-east-1:276374296137:function:ProcessRefund",
      "End":true
    },
    "ProcessPurchase":{
      "Type":"Task",
      "Resource":"arn:aws:lambda:us-east-1:276374296137:function:ProcessPurchase",
      "End":true
    }

  }
}