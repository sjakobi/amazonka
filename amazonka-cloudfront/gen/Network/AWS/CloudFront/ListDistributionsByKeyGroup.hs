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
-- Module      : Network.AWS.CloudFront.ListDistributionsByKeyGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of distribution IDs for distributions that have a cache behavior that references the specified key group.
--
--
-- You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the @NextMarker@ value from the current response as the @Marker@ value in the subsequent request.
module Network.AWS.CloudFront.ListDistributionsByKeyGroup
  ( -- * Creating a Request
    listDistributionsByKeyGroup,
    ListDistributionsByKeyGroup,

    -- * Request Lenses
    ldbkgMaxItems,
    ldbkgMarker,
    ldbkgKeyGroupId,

    -- * Destructuring the Response
    listDistributionsByKeyGroupResponse,
    ListDistributionsByKeyGroupResponse,

    -- * Response Lenses
    ldbkgrrsDistributionIdList,
    ldbkgrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDistributionsByKeyGroup' smart constructor.
data ListDistributionsByKeyGroup = ListDistributionsByKeyGroup'
  { _ldbkgMaxItems ::
      !(Maybe Text),
    _ldbkgMarker ::
      !(Maybe Text),
    _ldbkgKeyGroupId ::
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

-- | Creates a value of 'ListDistributionsByKeyGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldbkgMaxItems' - The maximum number of distribution IDs that you want in the response.
--
-- * 'ldbkgMarker' - Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
--
-- * 'ldbkgKeyGroupId' - The ID of the key group whose associated distribution IDs you are listing.
listDistributionsByKeyGroup ::
  -- | 'ldbkgKeyGroupId'
  Text ->
  ListDistributionsByKeyGroup
listDistributionsByKeyGroup pKeyGroupId_ =
  ListDistributionsByKeyGroup'
    { _ldbkgMaxItems =
        Nothing,
      _ldbkgMarker = Nothing,
      _ldbkgKeyGroupId = pKeyGroupId_
    }

-- | The maximum number of distribution IDs that you want in the response.
ldbkgMaxItems :: Lens' ListDistributionsByKeyGroup (Maybe Text)
ldbkgMaxItems = lens _ldbkgMaxItems (\s a -> s {_ldbkgMaxItems = a})

-- | Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
ldbkgMarker :: Lens' ListDistributionsByKeyGroup (Maybe Text)
ldbkgMarker = lens _ldbkgMarker (\s a -> s {_ldbkgMarker = a})

-- | The ID of the key group whose associated distribution IDs you are listing.
ldbkgKeyGroupId :: Lens' ListDistributionsByKeyGroup Text
ldbkgKeyGroupId = lens _ldbkgKeyGroupId (\s a -> s {_ldbkgKeyGroupId = a})

instance AWSRequest ListDistributionsByKeyGroup where
  type
    Rs ListDistributionsByKeyGroup =
      ListDistributionsByKeyGroupResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListDistributionsByKeyGroupResponse'
            <$> (parseXML x) <*> (pure (fromEnum s))
      )

instance Hashable ListDistributionsByKeyGroup

instance NFData ListDistributionsByKeyGroup

instance ToHeaders ListDistributionsByKeyGroup where
  toHeaders = const mempty

instance ToPath ListDistributionsByKeyGroup where
  toPath ListDistributionsByKeyGroup' {..} =
    mconcat
      [ "/2020-05-31/distributionsByKeyGroupId/",
        toBS _ldbkgKeyGroupId
      ]

instance ToQuery ListDistributionsByKeyGroup where
  toQuery ListDistributionsByKeyGroup' {..} =
    mconcat
      [ "MaxItems" =: _ldbkgMaxItems,
        "Marker" =: _ldbkgMarker
      ]

-- | /See:/ 'listDistributionsByKeyGroupResponse' smart constructor.
data ListDistributionsByKeyGroupResponse = ListDistributionsByKeyGroupResponse'
  { _ldbkgrrsDistributionIdList ::
      !( Maybe
           DistributionIdList
       ),
    _ldbkgrrsResponseStatus ::
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

-- | Creates a value of 'ListDistributionsByKeyGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldbkgrrsDistributionIdList' - Undocumented member.
--
-- * 'ldbkgrrsResponseStatus' - -- | The response status code.
listDistributionsByKeyGroupResponse ::
  -- | 'ldbkgrrsResponseStatus'
  Int ->
  ListDistributionsByKeyGroupResponse
listDistributionsByKeyGroupResponse pResponseStatus_ =
  ListDistributionsByKeyGroupResponse'
    { _ldbkgrrsDistributionIdList =
        Nothing,
      _ldbkgrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
ldbkgrrsDistributionIdList :: Lens' ListDistributionsByKeyGroupResponse (Maybe DistributionIdList)
ldbkgrrsDistributionIdList = lens _ldbkgrrsDistributionIdList (\s a -> s {_ldbkgrrsDistributionIdList = a})

-- | -- | The response status code.
ldbkgrrsResponseStatus :: Lens' ListDistributionsByKeyGroupResponse Int
ldbkgrrsResponseStatus = lens _ldbkgrrsResponseStatus (\s a -> s {_ldbkgrrsResponseStatus = a})

instance NFData ListDistributionsByKeyGroupResponse
