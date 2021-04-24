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
-- Module      : Network.AWS.ElastiCache.PurchaseReservedCacheNodesOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to purchase a reserved cache node offering. Reserved nodes are not eligible for cancellation and are non-refundable. For more information, see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/reserved-nodes.html Managing Costs with Reserved Nodes> for Redis or <https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/reserved-nodes.html Managing Costs with Reserved Nodes> for Memcached.
module Network.AWS.ElastiCache.PurchaseReservedCacheNodesOffering
  ( -- * Creating a Request
    purchaseReservedCacheNodesOffering,
    PurchaseReservedCacheNodesOffering,

    -- * Request Lenses
    prcnoCacheNodeCount,
    prcnoReservedCacheNodeId,
    prcnoReservedCacheNodesOfferingId,

    -- * Destructuring the Response
    purchaseReservedCacheNodesOfferingResponse,
    PurchaseReservedCacheNodesOfferingResponse,

    -- * Response Lenses
    prcnorrsReservedCacheNode,
    prcnorrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @PurchaseReservedCacheNodesOffering@ operation.
--
--
--
-- /See:/ 'purchaseReservedCacheNodesOffering' smart constructor.
data PurchaseReservedCacheNodesOffering = PurchaseReservedCacheNodesOffering'
  { _prcnoCacheNodeCount ::
      !( Maybe
           Int
       ),
    _prcnoReservedCacheNodeId ::
      !( Maybe
           Text
       ),
    _prcnoReservedCacheNodesOfferingId ::
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

-- | Creates a value of 'PurchaseReservedCacheNodesOffering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcnoCacheNodeCount' - The number of cache node instances to reserve. Default: @1@
--
-- * 'prcnoReservedCacheNodeId' - A customer-specified identifier to track this reservation. Example: myreservationID
--
-- * 'prcnoReservedCacheNodesOfferingId' - The ID of the reserved cache node offering to purchase. Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
purchaseReservedCacheNodesOffering ::
  -- | 'prcnoReservedCacheNodesOfferingId'
  Text ->
  PurchaseReservedCacheNodesOffering
purchaseReservedCacheNodesOffering
  pReservedCacheNodesOfferingId_ =
    PurchaseReservedCacheNodesOffering'
      { _prcnoCacheNodeCount =
          Nothing,
        _prcnoReservedCacheNodeId = Nothing,
        _prcnoReservedCacheNodesOfferingId =
          pReservedCacheNodesOfferingId_
      }

-- | The number of cache node instances to reserve. Default: @1@
prcnoCacheNodeCount :: Lens' PurchaseReservedCacheNodesOffering (Maybe Int)
prcnoCacheNodeCount = lens _prcnoCacheNodeCount (\s a -> s {_prcnoCacheNodeCount = a})

-- | A customer-specified identifier to track this reservation. Example: myreservationID
prcnoReservedCacheNodeId :: Lens' PurchaseReservedCacheNodesOffering (Maybe Text)
prcnoReservedCacheNodeId = lens _prcnoReservedCacheNodeId (\s a -> s {_prcnoReservedCacheNodeId = a})

-- | The ID of the reserved cache node offering to purchase. Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
prcnoReservedCacheNodesOfferingId :: Lens' PurchaseReservedCacheNodesOffering Text
prcnoReservedCacheNodesOfferingId = lens _prcnoReservedCacheNodesOfferingId (\s a -> s {_prcnoReservedCacheNodesOfferingId = a})

instance
  AWSRequest
    PurchaseReservedCacheNodesOffering
  where
  type
    Rs PurchaseReservedCacheNodesOffering =
      PurchaseReservedCacheNodesOfferingResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "PurchaseReservedCacheNodesOfferingResult"
      ( \s h x ->
          PurchaseReservedCacheNodesOfferingResponse'
            <$> (x .@? "ReservedCacheNode") <*> (pure (fromEnum s))
      )

instance Hashable PurchaseReservedCacheNodesOffering

instance NFData PurchaseReservedCacheNodesOffering

instance ToHeaders PurchaseReservedCacheNodesOffering where
  toHeaders = const mempty

instance ToPath PurchaseReservedCacheNodesOffering where
  toPath = const "/"

instance ToQuery PurchaseReservedCacheNodesOffering where
  toQuery PurchaseReservedCacheNodesOffering' {..} =
    mconcat
      [ "Action"
          =: ("PurchaseReservedCacheNodesOffering" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "CacheNodeCount" =: _prcnoCacheNodeCount,
        "ReservedCacheNodeId" =: _prcnoReservedCacheNodeId,
        "ReservedCacheNodesOfferingId"
          =: _prcnoReservedCacheNodesOfferingId
      ]

-- | /See:/ 'purchaseReservedCacheNodesOfferingResponse' smart constructor.
data PurchaseReservedCacheNodesOfferingResponse = PurchaseReservedCacheNodesOfferingResponse'
  { _prcnorrsReservedCacheNode ::
      !( Maybe
           ReservedCacheNode
       ),
    _prcnorrsResponseStatus ::
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

-- | Creates a value of 'PurchaseReservedCacheNodesOfferingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcnorrsReservedCacheNode' - Undocumented member.
--
-- * 'prcnorrsResponseStatus' - -- | The response status code.
purchaseReservedCacheNodesOfferingResponse ::
  -- | 'prcnorrsResponseStatus'
  Int ->
  PurchaseReservedCacheNodesOfferingResponse
purchaseReservedCacheNodesOfferingResponse
  pResponseStatus_ =
    PurchaseReservedCacheNodesOfferingResponse'
      { _prcnorrsReservedCacheNode =
          Nothing,
        _prcnorrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
prcnorrsReservedCacheNode :: Lens' PurchaseReservedCacheNodesOfferingResponse (Maybe ReservedCacheNode)
prcnorrsReservedCacheNode = lens _prcnorrsReservedCacheNode (\s a -> s {_prcnorrsReservedCacheNode = a})

-- | -- | The response status code.
prcnorrsResponseStatus :: Lens' PurchaseReservedCacheNodesOfferingResponse Int
prcnorrsResponseStatus = lens _prcnorrsResponseStatus (\s a -> s {_prcnorrsResponseStatus = a})

instance
  NFData
    PurchaseReservedCacheNodesOfferingResponse
