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
-- Module      : Network.AWS.EC2.AcceptReservedInstancesExchangeQuote
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts the Convertible Reserved Instance exchange quote described in the 'GetReservedInstancesExchangeQuote' call.
module Network.AWS.EC2.AcceptReservedInstancesExchangeQuote
  ( -- * Creating a Request
    acceptReservedInstancesExchangeQuote,
    AcceptReservedInstancesExchangeQuote,

    -- * Request Lenses
    arieqDryRun,
    arieqTargetConfigurations,
    arieqReservedInstanceIds,

    -- * Destructuring the Response
    acceptReservedInstancesExchangeQuoteResponse,
    AcceptReservedInstancesExchangeQuoteResponse,

    -- * Response Lenses
    arieqrrsExchangeId,
    arieqrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for accepting the quote.
--
--
--
-- /See:/ 'acceptReservedInstancesExchangeQuote' smart constructor.
data AcceptReservedInstancesExchangeQuote = AcceptReservedInstancesExchangeQuote'
  { _arieqDryRun ::
      !( Maybe
           Bool
       ),
    _arieqTargetConfigurations ::
      !( Maybe
           [TargetConfigurationRequest]
       ),
    _arieqReservedInstanceIds ::
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

-- | Creates a value of 'AcceptReservedInstancesExchangeQuote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arieqDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'arieqTargetConfigurations' - The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
--
-- * 'arieqReservedInstanceIds' - The IDs of the Convertible Reserved Instances to exchange for another Convertible Reserved Instance of the same or higher value.
acceptReservedInstancesExchangeQuote ::
  AcceptReservedInstancesExchangeQuote
acceptReservedInstancesExchangeQuote =
  AcceptReservedInstancesExchangeQuote'
    { _arieqDryRun =
        Nothing,
      _arieqTargetConfigurations = Nothing,
      _arieqReservedInstanceIds = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
arieqDryRun :: Lens' AcceptReservedInstancesExchangeQuote (Maybe Bool)
arieqDryRun = lens _arieqDryRun (\s a -> s {_arieqDryRun = a})

-- | The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
arieqTargetConfigurations :: Lens' AcceptReservedInstancesExchangeQuote [TargetConfigurationRequest]
arieqTargetConfigurations = lens _arieqTargetConfigurations (\s a -> s {_arieqTargetConfigurations = a}) . _Default . _Coerce

-- | The IDs of the Convertible Reserved Instances to exchange for another Convertible Reserved Instance of the same or higher value.
arieqReservedInstanceIds :: Lens' AcceptReservedInstancesExchangeQuote [Text]
arieqReservedInstanceIds = lens _arieqReservedInstanceIds (\s a -> s {_arieqReservedInstanceIds = a}) . _Coerce

instance
  AWSRequest
    AcceptReservedInstancesExchangeQuote
  where
  type
    Rs AcceptReservedInstancesExchangeQuote =
      AcceptReservedInstancesExchangeQuoteResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AcceptReservedInstancesExchangeQuoteResponse'
            <$> (x .@? "exchangeId") <*> (pure (fromEnum s))
      )

instance
  Hashable
    AcceptReservedInstancesExchangeQuote

instance NFData AcceptReservedInstancesExchangeQuote

instance
  ToHeaders
    AcceptReservedInstancesExchangeQuote
  where
  toHeaders = const mempty

instance ToPath AcceptReservedInstancesExchangeQuote where
  toPath = const "/"

instance ToQuery AcceptReservedInstancesExchangeQuote where
  toQuery AcceptReservedInstancesExchangeQuote' {..} =
    mconcat
      [ "Action"
          =: ( "AcceptReservedInstancesExchangeQuote" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _arieqDryRun,
        toQuery
          ( toQueryList "TargetConfiguration"
              <$> _arieqTargetConfigurations
          ),
        toQueryList
          "ReservedInstanceId"
          _arieqReservedInstanceIds
      ]

-- | The result of the exchange and whether it was @successful@ .
--
--
--
-- /See:/ 'acceptReservedInstancesExchangeQuoteResponse' smart constructor.
data AcceptReservedInstancesExchangeQuoteResponse = AcceptReservedInstancesExchangeQuoteResponse'
  { _arieqrrsExchangeId ::
      !( Maybe
           Text
       ),
    _arieqrrsResponseStatus ::
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

-- | Creates a value of 'AcceptReservedInstancesExchangeQuoteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arieqrrsExchangeId' - The ID of the successful exchange.
--
-- * 'arieqrrsResponseStatus' - -- | The response status code.
acceptReservedInstancesExchangeQuoteResponse ::
  -- | 'arieqrrsResponseStatus'
  Int ->
  AcceptReservedInstancesExchangeQuoteResponse
acceptReservedInstancesExchangeQuoteResponse
  pResponseStatus_ =
    AcceptReservedInstancesExchangeQuoteResponse'
      { _arieqrrsExchangeId =
          Nothing,
        _arieqrrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the successful exchange.
arieqrrsExchangeId :: Lens' AcceptReservedInstancesExchangeQuoteResponse (Maybe Text)
arieqrrsExchangeId = lens _arieqrrsExchangeId (\s a -> s {_arieqrrsExchangeId = a})

-- | -- | The response status code.
arieqrrsResponseStatus :: Lens' AcceptReservedInstancesExchangeQuoteResponse Int
arieqrrsResponseStatus = lens _arieqrrsResponseStatus (\s a -> s {_arieqrrsResponseStatus = a})

instance
  NFData
    AcceptReservedInstancesExchangeQuoteResponse
