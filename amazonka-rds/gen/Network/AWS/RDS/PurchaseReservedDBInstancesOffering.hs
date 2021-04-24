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
-- Module      : Network.AWS.RDS.PurchaseReservedDBInstancesOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Purchases a reserved DB instance offering.
module Network.AWS.RDS.PurchaseReservedDBInstancesOffering
  ( -- * Creating a Request
    purchaseReservedDBInstancesOffering,
    PurchaseReservedDBInstancesOffering,

    -- * Request Lenses
    prdioDBInstanceCount,
    prdioTags,
    prdioReservedDBInstanceId,
    prdioReservedDBInstancesOfferingId,

    -- * Destructuring the Response
    purchaseReservedDBInstancesOfferingResponse,
    PurchaseReservedDBInstancesOfferingResponse,

    -- * Response Lenses
    prdiorrsReservedDBInstance,
    prdiorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'purchaseReservedDBInstancesOffering' smart constructor.
data PurchaseReservedDBInstancesOffering = PurchaseReservedDBInstancesOffering'
  { _prdioDBInstanceCount ::
      !( Maybe
           Int
       ),
    _prdioTags ::
      !( Maybe
           [Tag]
       ),
    _prdioReservedDBInstanceId ::
      !( Maybe
           Text
       ),
    _prdioReservedDBInstancesOfferingId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PurchaseReservedDBInstancesOffering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prdioDBInstanceCount' - The number of instances to reserve. Default: @1@
--
-- * 'prdioTags' - Undocumented member.
--
-- * 'prdioReservedDBInstanceId' - Customer-specified identifier to track this reservation. Example: myreservationID
--
-- * 'prdioReservedDBInstancesOfferingId' - The ID of the Reserved DB instance offering to purchase. Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706
purchaseReservedDBInstancesOffering ::
  -- | 'prdioReservedDBInstancesOfferingId'
  Text ->
  PurchaseReservedDBInstancesOffering
purchaseReservedDBInstancesOffering
  pReservedDBInstancesOfferingId_ =
    PurchaseReservedDBInstancesOffering'
      { _prdioDBInstanceCount =
          Nothing,
        _prdioTags = Nothing,
        _prdioReservedDBInstanceId = Nothing,
        _prdioReservedDBInstancesOfferingId =
          pReservedDBInstancesOfferingId_
      }

-- | The number of instances to reserve. Default: @1@
prdioDBInstanceCount :: Lens' PurchaseReservedDBInstancesOffering (Maybe Int)
prdioDBInstanceCount = lens _prdioDBInstanceCount (\s a -> s {_prdioDBInstanceCount = a})

-- | Undocumented member.
prdioTags :: Lens' PurchaseReservedDBInstancesOffering [Tag]
prdioTags = lens _prdioTags (\s a -> s {_prdioTags = a}) . _Default . _Coerce

-- | Customer-specified identifier to track this reservation. Example: myreservationID
prdioReservedDBInstanceId :: Lens' PurchaseReservedDBInstancesOffering (Maybe Text)
prdioReservedDBInstanceId = lens _prdioReservedDBInstanceId (\s a -> s {_prdioReservedDBInstanceId = a})

-- | The ID of the Reserved DB instance offering to purchase. Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706
prdioReservedDBInstancesOfferingId :: Lens' PurchaseReservedDBInstancesOffering Text
prdioReservedDBInstancesOfferingId = lens _prdioReservedDBInstancesOfferingId (\s a -> s {_prdioReservedDBInstancesOfferingId = a})

instance
  AWSRequest
    PurchaseReservedDBInstancesOffering
  where
  type
    Rs PurchaseReservedDBInstancesOffering =
      PurchaseReservedDBInstancesOfferingResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "PurchaseReservedDBInstancesOfferingResult"
      ( \s h x ->
          PurchaseReservedDBInstancesOfferingResponse'
            <$> (x .@? "ReservedDBInstance") <*> (pure (fromEnum s))
      )

instance Hashable PurchaseReservedDBInstancesOffering

instance NFData PurchaseReservedDBInstancesOffering

instance
  ToHeaders
    PurchaseReservedDBInstancesOffering
  where
  toHeaders = const mempty

instance ToPath PurchaseReservedDBInstancesOffering where
  toPath = const "/"

instance ToQuery PurchaseReservedDBInstancesOffering where
  toQuery PurchaseReservedDBInstancesOffering' {..} =
    mconcat
      [ "Action"
          =: ( "PurchaseReservedDBInstancesOffering" ::
                 ByteString
             ),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBInstanceCount" =: _prdioDBInstanceCount,
        "Tags" =: toQuery (toQueryList "Tag" <$> _prdioTags),
        "ReservedDBInstanceId" =: _prdioReservedDBInstanceId,
        "ReservedDBInstancesOfferingId"
          =: _prdioReservedDBInstancesOfferingId
      ]

-- | /See:/ 'purchaseReservedDBInstancesOfferingResponse' smart constructor.
data PurchaseReservedDBInstancesOfferingResponse = PurchaseReservedDBInstancesOfferingResponse'
  { _prdiorrsReservedDBInstance ::
      !( Maybe
           ReservedDBInstance
       ),
    _prdiorrsResponseStatus ::
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

-- | Creates a value of 'PurchaseReservedDBInstancesOfferingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prdiorrsReservedDBInstance' - Undocumented member.
--
-- * 'prdiorrsResponseStatus' - -- | The response status code.
purchaseReservedDBInstancesOfferingResponse ::
  -- | 'prdiorrsResponseStatus'
  Int ->
  PurchaseReservedDBInstancesOfferingResponse
purchaseReservedDBInstancesOfferingResponse
  pResponseStatus_ =
    PurchaseReservedDBInstancesOfferingResponse'
      { _prdiorrsReservedDBInstance =
          Nothing,
        _prdiorrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
prdiorrsReservedDBInstance :: Lens' PurchaseReservedDBInstancesOfferingResponse (Maybe ReservedDBInstance)
prdiorrsReservedDBInstance = lens _prdiorrsReservedDBInstance (\s a -> s {_prdiorrsReservedDBInstance = a})

-- | -- | The response status code.
prdiorrsResponseStatus :: Lens' PurchaseReservedDBInstancesOfferingResponse Int
prdiorrsResponseStatus = lens _prdiorrsResponseStatus (\s a -> s {_prdiorrsResponseStatus = a})

instance
  NFData
    PurchaseReservedDBInstancesOfferingResponse
