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
-- Module      : Network.AWS.EC2.PurchaseScheduledInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Purchases the Scheduled Instances with the specified schedule.
--
--
-- Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call 'DescribeScheduledInstanceAvailability' to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call 'RunScheduledInstances' during each scheduled time period.
--
-- After you purchase a Scheduled Instance, you can't cancel, modify, or resell your purchase.
module Network.AWS.EC2.PurchaseScheduledInstances
  ( -- * Creating a Request
    purchaseScheduledInstances,
    PurchaseScheduledInstances,

    -- * Request Lenses
    psiDryRun,
    psiClientToken,
    psiPurchaseRequests,

    -- * Destructuring the Response
    purchaseScheduledInstancesResponse,
    PurchaseScheduledInstancesResponse,

    -- * Response Lenses
    psirrsScheduledInstanceSet,
    psirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for PurchaseScheduledInstances.
--
--
--
-- /See:/ 'purchaseScheduledInstances' smart constructor.
data PurchaseScheduledInstances = PurchaseScheduledInstances'
  { _psiDryRun ::
      !(Maybe Bool),
    _psiClientToken ::
      !(Maybe Text),
    _psiPurchaseRequests ::
      !( List1
           PurchaseRequest
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PurchaseScheduledInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'psiClientToken' - Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- * 'psiPurchaseRequests' - The purchase requests.
purchaseScheduledInstances ::
  -- | 'psiPurchaseRequests'
  NonEmpty PurchaseRequest ->
  PurchaseScheduledInstances
purchaseScheduledInstances pPurchaseRequests_ =
  PurchaseScheduledInstances'
    { _psiDryRun = Nothing,
      _psiClientToken = Nothing,
      _psiPurchaseRequests =
        _List1 # pPurchaseRequests_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
psiDryRun :: Lens' PurchaseScheduledInstances (Maybe Bool)
psiDryRun = lens _psiDryRun (\s a -> s {_psiDryRun = a})

-- | Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
psiClientToken :: Lens' PurchaseScheduledInstances (Maybe Text)
psiClientToken = lens _psiClientToken (\s a -> s {_psiClientToken = a})

-- | The purchase requests.
psiPurchaseRequests :: Lens' PurchaseScheduledInstances (NonEmpty PurchaseRequest)
psiPurchaseRequests = lens _psiPurchaseRequests (\s a -> s {_psiPurchaseRequests = a}) . _List1

instance AWSRequest PurchaseScheduledInstances where
  type
    Rs PurchaseScheduledInstances =
      PurchaseScheduledInstancesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          PurchaseScheduledInstancesResponse'
            <$> ( x .@? "scheduledInstanceSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable PurchaseScheduledInstances

instance NFData PurchaseScheduledInstances

instance ToHeaders PurchaseScheduledInstances where
  toHeaders = const mempty

instance ToPath PurchaseScheduledInstances where
  toPath = const "/"

instance ToQuery PurchaseScheduledInstances where
  toQuery PurchaseScheduledInstances' {..} =
    mconcat
      [ "Action"
          =: ("PurchaseScheduledInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _psiDryRun,
        "ClientToken" =: _psiClientToken,
        toQueryList "PurchaseRequest" _psiPurchaseRequests
      ]

-- | Contains the output of PurchaseScheduledInstances.
--
--
--
-- /See:/ 'purchaseScheduledInstancesResponse' smart constructor.
data PurchaseScheduledInstancesResponse = PurchaseScheduledInstancesResponse'
  { _psirrsScheduledInstanceSet ::
      !( Maybe
           [ScheduledInstance]
       ),
    _psirrsResponseStatus ::
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

-- | Creates a value of 'PurchaseScheduledInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psirrsScheduledInstanceSet' - Information about the Scheduled Instances.
--
-- * 'psirrsResponseStatus' - -- | The response status code.
purchaseScheduledInstancesResponse ::
  -- | 'psirrsResponseStatus'
  Int ->
  PurchaseScheduledInstancesResponse
purchaseScheduledInstancesResponse pResponseStatus_ =
  PurchaseScheduledInstancesResponse'
    { _psirrsScheduledInstanceSet =
        Nothing,
      _psirrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the Scheduled Instances.
psirrsScheduledInstanceSet :: Lens' PurchaseScheduledInstancesResponse [ScheduledInstance]
psirrsScheduledInstanceSet = lens _psirrsScheduledInstanceSet (\s a -> s {_psirrsScheduledInstanceSet = a}) . _Default . _Coerce

-- | -- | The response status code.
psirrsResponseStatus :: Lens' PurchaseScheduledInstancesResponse Int
psirrsResponseStatus = lens _psirrsResponseStatus (\s a -> s {_psirrsResponseStatus = a})

instance NFData PurchaseScheduledInstancesResponse
