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
-- Module      : Network.AWS.CloudFront.ListDistributionsByCachePolicyId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of distribution IDs for distributions that have a cache behavior that’s associated with the specified cache policy.
--
--
-- You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the @NextMarker@ value from the current response as the @Marker@ value in the subsequent request.
module Network.AWS.CloudFront.ListDistributionsByCachePolicyId
  ( -- * Creating a Request
    listDistributionsByCachePolicyId,
    ListDistributionsByCachePolicyId,

    -- * Request Lenses
    ldbcpiMaxItems,
    ldbcpiMarker,
    ldbcpiCachePolicyId,

    -- * Destructuring the Response
    listDistributionsByCachePolicyIdResponse,
    ListDistributionsByCachePolicyIdResponse,

    -- * Response Lenses
    ldbcpirrsDistributionIdList,
    ldbcpirrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDistributionsByCachePolicyId' smart constructor.
data ListDistributionsByCachePolicyId = ListDistributionsByCachePolicyId'
  { _ldbcpiMaxItems ::
      !( Maybe
           Text
       ),
    _ldbcpiMarker ::
      !( Maybe
           Text
       ),
    _ldbcpiCachePolicyId ::
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

-- | Creates a value of 'ListDistributionsByCachePolicyId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldbcpiMaxItems' - The maximum number of distribution IDs that you want in the response.
--
-- * 'ldbcpiMarker' - Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
--
-- * 'ldbcpiCachePolicyId' - The ID of the cache policy whose associated distribution IDs you want to list.
listDistributionsByCachePolicyId ::
  -- | 'ldbcpiCachePolicyId'
  Text ->
  ListDistributionsByCachePolicyId
listDistributionsByCachePolicyId pCachePolicyId_ =
  ListDistributionsByCachePolicyId'
    { _ldbcpiMaxItems =
        Nothing,
      _ldbcpiMarker = Nothing,
      _ldbcpiCachePolicyId = pCachePolicyId_
    }

-- | The maximum number of distribution IDs that you want in the response.
ldbcpiMaxItems :: Lens' ListDistributionsByCachePolicyId (Maybe Text)
ldbcpiMaxItems = lens _ldbcpiMaxItems (\s a -> s {_ldbcpiMaxItems = a})

-- | Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
ldbcpiMarker :: Lens' ListDistributionsByCachePolicyId (Maybe Text)
ldbcpiMarker = lens _ldbcpiMarker (\s a -> s {_ldbcpiMarker = a})

-- | The ID of the cache policy whose associated distribution IDs you want to list.
ldbcpiCachePolicyId :: Lens' ListDistributionsByCachePolicyId Text
ldbcpiCachePolicyId = lens _ldbcpiCachePolicyId (\s a -> s {_ldbcpiCachePolicyId = a})

instance AWSRequest ListDistributionsByCachePolicyId where
  type
    Rs ListDistributionsByCachePolicyId =
      ListDistributionsByCachePolicyIdResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListDistributionsByCachePolicyIdResponse'
            <$> (parseXML x) <*> (pure (fromEnum s))
      )

instance Hashable ListDistributionsByCachePolicyId

instance NFData ListDistributionsByCachePolicyId

instance ToHeaders ListDistributionsByCachePolicyId where
  toHeaders = const mempty

instance ToPath ListDistributionsByCachePolicyId where
  toPath ListDistributionsByCachePolicyId' {..} =
    mconcat
      [ "/2020-05-31/distributionsByCachePolicyId/",
        toBS _ldbcpiCachePolicyId
      ]

instance ToQuery ListDistributionsByCachePolicyId where
  toQuery ListDistributionsByCachePolicyId' {..} =
    mconcat
      [ "MaxItems" =: _ldbcpiMaxItems,
        "Marker" =: _ldbcpiMarker
      ]

-- | /See:/ 'listDistributionsByCachePolicyIdResponse' smart constructor.
data ListDistributionsByCachePolicyIdResponse = ListDistributionsByCachePolicyIdResponse'
  { _ldbcpirrsDistributionIdList ::
      !( Maybe
           DistributionIdList
       ),
    _ldbcpirrsResponseStatus ::
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

-- | Creates a value of 'ListDistributionsByCachePolicyIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldbcpirrsDistributionIdList' - A list of distribution IDs.
--
-- * 'ldbcpirrsResponseStatus' - -- | The response status code.
listDistributionsByCachePolicyIdResponse ::
  -- | 'ldbcpirrsResponseStatus'
  Int ->
  ListDistributionsByCachePolicyIdResponse
listDistributionsByCachePolicyIdResponse
  pResponseStatus_ =
    ListDistributionsByCachePolicyIdResponse'
      { _ldbcpirrsDistributionIdList =
          Nothing,
        _ldbcpirrsResponseStatus =
          pResponseStatus_
      }

-- | A list of distribution IDs.
ldbcpirrsDistributionIdList :: Lens' ListDistributionsByCachePolicyIdResponse (Maybe DistributionIdList)
ldbcpirrsDistributionIdList = lens _ldbcpirrsDistributionIdList (\s a -> s {_ldbcpirrsDistributionIdList = a})

-- | -- | The response status code.
ldbcpirrsResponseStatus :: Lens' ListDistributionsByCachePolicyIdResponse Int
ldbcpirrsResponseStatus = lens _ldbcpirrsResponseStatus (\s a -> s {_ldbcpirrsResponseStatus = a})

instance
  NFData
    ListDistributionsByCachePolicyIdResponse
