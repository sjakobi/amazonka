{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.GetReservedInstancesExchangeQuote
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use 'AcceptReservedInstancesExchangeQuote' to perform the exchange.
module Network.AWS.EC2.GetReservedInstancesExchangeQuote
  ( -- * Creating a Request
    getReservedInstancesExchangeQuote,
    GetReservedInstancesExchangeQuote,

    -- * Request Lenses
    grieqDryRun,
    grieqTargetConfigurations,
    grieqReservedInstanceIds,

    -- * Destructuring the Response
    getReservedInstancesExchangeQuoteResponse,
    GetReservedInstancesExchangeQuoteResponse,

    -- * Response Lenses
    grieqrrsIsValidExchange,
    grieqrrsReservedInstanceValueRollup,
    grieqrrsPaymentDue,
    grieqrrsCurrencyCode,
    grieqrrsTargetConfigurationValueRollup,
    grieqrrsValidationFailureReason,
    grieqrrsReservedInstanceValueSet,
    grieqrrsOutputReservedInstancesWillExpireAt,
    grieqrrsTargetConfigurationValueSet,
    grieqrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for GetReservedInstanceExchangeQuote.
--
--
--
-- /See:/ 'getReservedInstancesExchangeQuote' smart constructor.
data GetReservedInstancesExchangeQuote = GetReservedInstancesExchangeQuote'
  { _grieqDryRun ::
      !( Maybe
           Bool
       ),
    _grieqTargetConfigurations ::
      !( Maybe
           [TargetConfigurationRequest]
       ),
    _grieqReservedInstanceIds ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReservedInstancesExchangeQuote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grieqDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'grieqTargetConfigurations' - The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
--
-- * 'grieqReservedInstanceIds' - The IDs of the Convertible Reserved Instances to exchange.
getReservedInstancesExchangeQuote ::
  GetReservedInstancesExchangeQuote
getReservedInstancesExchangeQuote =
  GetReservedInstancesExchangeQuote'
    { _grieqDryRun =
        Nothing,
      _grieqTargetConfigurations = Nothing,
      _grieqReservedInstanceIds = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
grieqDryRun :: Lens' GetReservedInstancesExchangeQuote (Maybe Bool)
grieqDryRun = lens _grieqDryRun (\s a -> s {_grieqDryRun = a})

-- | The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
grieqTargetConfigurations :: Lens' GetReservedInstancesExchangeQuote [TargetConfigurationRequest]
grieqTargetConfigurations = lens _grieqTargetConfigurations (\s a -> s {_grieqTargetConfigurations = a}) . _Default . _Coerce

-- | The IDs of the Convertible Reserved Instances to exchange.
grieqReservedInstanceIds :: Lens' GetReservedInstancesExchangeQuote [Text]
grieqReservedInstanceIds = lens _grieqReservedInstanceIds (\s a -> s {_grieqReservedInstanceIds = a}) . _Coerce

instance AWSRequest GetReservedInstancesExchangeQuote where
  type
    Rs GetReservedInstancesExchangeQuote =
      GetReservedInstancesExchangeQuoteResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetReservedInstancesExchangeQuoteResponse'
            <$> (x .@? "isValidExchange")
            <*> (x .@? "reservedInstanceValueRollup")
            <*> (x .@? "paymentDue")
            <*> (x .@? "currencyCode")
            <*> (x .@? "targetConfigurationValueRollup")
            <*> (x .@? "validationFailureReason")
            <*> ( x .@? "reservedInstanceValueSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "outputReservedInstancesWillExpireAt")
            <*> ( x .@? "targetConfigurationValueSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable GetReservedInstancesExchangeQuote

instance NFData GetReservedInstancesExchangeQuote

instance ToHeaders GetReservedInstancesExchangeQuote where
  toHeaders = const mempty

instance ToPath GetReservedInstancesExchangeQuote where
  toPath = const "/"

instance ToQuery GetReservedInstancesExchangeQuote where
  toQuery GetReservedInstancesExchangeQuote' {..} =
    mconcat
      [ "Action"
          =: ("GetReservedInstancesExchangeQuote" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _grieqDryRun,
        toQuery
          ( toQueryList "TargetConfiguration"
              <$> _grieqTargetConfigurations
          ),
        toQueryList
          "ReservedInstanceId"
          _grieqReservedInstanceIds
      ]

-- | Contains the output of GetReservedInstancesExchangeQuote.
--
--
--
-- /See:/ 'getReservedInstancesExchangeQuoteResponse' smart constructor.
data GetReservedInstancesExchangeQuoteResponse = GetReservedInstancesExchangeQuoteResponse'
  { _grieqrrsIsValidExchange ::
      !( Maybe
           Bool
       ),
    _grieqrrsReservedInstanceValueRollup ::
      !( Maybe
           ReservationValue
       ),
    _grieqrrsPaymentDue ::
      !( Maybe
           Text
       ),
    _grieqrrsCurrencyCode ::
      !( Maybe
           Text
       ),
    _grieqrrsTargetConfigurationValueRollup ::
      !( Maybe
           ReservationValue
       ),
    _grieqrrsValidationFailureReason ::
      !( Maybe
           Text
       ),
    _grieqrrsReservedInstanceValueSet ::
      !( Maybe
           [ReservedInstanceReservationValue]
       ),
    _grieqrrsOutputReservedInstancesWillExpireAt ::
      !( Maybe
           ISO8601
       ),
    _grieqrrsTargetConfigurationValueSet ::
      !( Maybe
           [TargetReservationValue]
       ),
    _grieqrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReservedInstancesExchangeQuoteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grieqrrsIsValidExchange' - If @true@ , the exchange is valid. If @false@ , the exchange cannot be completed.
--
-- * 'grieqrrsReservedInstanceValueRollup' - The cost associated with the Reserved Instance.
--
-- * 'grieqrrsPaymentDue' - The total true upfront charge for the exchange.
--
-- * 'grieqrrsCurrencyCode' - The currency of the transaction.
--
-- * 'grieqrrsTargetConfigurationValueRollup' - The cost associated with the Reserved Instance.
--
-- * 'grieqrrsValidationFailureReason' - Describes the reason why the exchange cannot be completed.
--
-- * 'grieqrrsReservedInstanceValueSet' - The configuration of your Convertible Reserved Instances.
--
-- * 'grieqrrsOutputReservedInstancesWillExpireAt' - The new end date of the reservation term.
--
-- * 'grieqrrsTargetConfigurationValueSet' - The values of the target Convertible Reserved Instances.
--
-- * 'grieqrrsResponseStatus' - -- | The response status code.
getReservedInstancesExchangeQuoteResponse ::
  -- | 'grieqrrsResponseStatus'
  Int ->
  GetReservedInstancesExchangeQuoteResponse
getReservedInstancesExchangeQuoteResponse
  pResponseStatus_ =
    GetReservedInstancesExchangeQuoteResponse'
      { _grieqrrsIsValidExchange =
          Nothing,
        _grieqrrsReservedInstanceValueRollup =
          Nothing,
        _grieqrrsPaymentDue = Nothing,
        _grieqrrsCurrencyCode = Nothing,
        _grieqrrsTargetConfigurationValueRollup =
          Nothing,
        _grieqrrsValidationFailureReason =
          Nothing,
        _grieqrrsReservedInstanceValueSet =
          Nothing,
        _grieqrrsOutputReservedInstancesWillExpireAt =
          Nothing,
        _grieqrrsTargetConfigurationValueSet =
          Nothing,
        _grieqrrsResponseStatus =
          pResponseStatus_
      }

-- | If @true@ , the exchange is valid. If @false@ , the exchange cannot be completed.
grieqrrsIsValidExchange :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Bool)
grieqrrsIsValidExchange = lens _grieqrrsIsValidExchange (\s a -> s {_grieqrrsIsValidExchange = a})

-- | The cost associated with the Reserved Instance.
grieqrrsReservedInstanceValueRollup :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe ReservationValue)
grieqrrsReservedInstanceValueRollup = lens _grieqrrsReservedInstanceValueRollup (\s a -> s {_grieqrrsReservedInstanceValueRollup = a})

-- | The total true upfront charge for the exchange.
grieqrrsPaymentDue :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Text)
grieqrrsPaymentDue = lens _grieqrrsPaymentDue (\s a -> s {_grieqrrsPaymentDue = a})

-- | The currency of the transaction.
grieqrrsCurrencyCode :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Text)
grieqrrsCurrencyCode = lens _grieqrrsCurrencyCode (\s a -> s {_grieqrrsCurrencyCode = a})

-- | The cost associated with the Reserved Instance.
grieqrrsTargetConfigurationValueRollup :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe ReservationValue)
grieqrrsTargetConfigurationValueRollup = lens _grieqrrsTargetConfigurationValueRollup (\s a -> s {_grieqrrsTargetConfigurationValueRollup = a})

-- | Describes the reason why the exchange cannot be completed.
grieqrrsValidationFailureReason :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe Text)
grieqrrsValidationFailureReason = lens _grieqrrsValidationFailureReason (\s a -> s {_grieqrrsValidationFailureReason = a})

-- | The configuration of your Convertible Reserved Instances.
grieqrrsReservedInstanceValueSet :: Lens' GetReservedInstancesExchangeQuoteResponse [ReservedInstanceReservationValue]
grieqrrsReservedInstanceValueSet = lens _grieqrrsReservedInstanceValueSet (\s a -> s {_grieqrrsReservedInstanceValueSet = a}) . _Default . _Coerce

-- | The new end date of the reservation term.
grieqrrsOutputReservedInstancesWillExpireAt :: Lens' GetReservedInstancesExchangeQuoteResponse (Maybe UTCTime)
grieqrrsOutputReservedInstancesWillExpireAt = lens _grieqrrsOutputReservedInstancesWillExpireAt (\s a -> s {_grieqrrsOutputReservedInstancesWillExpireAt = a}) . mapping _Time

-- | The values of the target Convertible Reserved Instances.
grieqrrsTargetConfigurationValueSet :: Lens' GetReservedInstancesExchangeQuoteResponse [TargetReservationValue]
grieqrrsTargetConfigurationValueSet = lens _grieqrrsTargetConfigurationValueSet (\s a -> s {_grieqrrsTargetConfigurationValueSet = a}) . _Default . _Coerce

-- | -- | The response status code.
grieqrrsResponseStatus :: Lens' GetReservedInstancesExchangeQuoteResponse Int
grieqrrsResponseStatus = lens _grieqrrsResponseStatus (\s a -> s {_grieqrrsResponseStatus = a})

instance
  NFData
    GetReservedInstancesExchangeQuoteResponse
