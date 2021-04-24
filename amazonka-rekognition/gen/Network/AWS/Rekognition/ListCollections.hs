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
-- Module      : Network.AWS.Rekognition.ListCollections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns list of collection IDs in your account. If the result is truncated, the response also provides a @NextToken@ that you can use in the subsequent request to fetch the next set of collection IDs.
--
--
-- For an example, see Listing Collections in the Amazon Rekognition Developer Guide.
--
-- This operation requires permissions to perform the @rekognition:ListCollections@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.Rekognition.ListCollections
  ( -- * Creating a Request
    listCollections,
    ListCollections,

    -- * Request Lenses
    lcNextToken,
    lcMaxResults,

    -- * Destructuring the Response
    listCollectionsResponse,
    ListCollectionsResponse,

    -- * Response Lenses
    lcrrsFaceModelVersions,
    lcrrsNextToken,
    lcrrsCollectionIds,
    lcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCollections' smart constructor.
data ListCollections = ListCollections'
  { _lcNextToken ::
      !(Maybe Text),
    _lcMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCollections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcNextToken' - Pagination token from the previous response.
--
-- * 'lcMaxResults' - Maximum number of collection IDs to return.
listCollections ::
  ListCollections
listCollections =
  ListCollections'
    { _lcNextToken = Nothing,
      _lcMaxResults = Nothing
    }

-- | Pagination token from the previous response.
lcNextToken :: Lens' ListCollections (Maybe Text)
lcNextToken = lens _lcNextToken (\s a -> s {_lcNextToken = a})

-- | Maximum number of collection IDs to return.
lcMaxResults :: Lens' ListCollections (Maybe Natural)
lcMaxResults = lens _lcMaxResults (\s a -> s {_lcMaxResults = a}) . mapping _Nat

instance AWSPager ListCollections where
  page rq rs
    | stop (rs ^. lcrrsNextToken) = Nothing
    | stop (rs ^. lcrrsCollectionIds) = Nothing
    | stop (rs ^. lcrrsFaceModelVersions) = Nothing
    | otherwise =
      Just $ rq & lcNextToken .~ rs ^. lcrrsNextToken

instance AWSRequest ListCollections where
  type Rs ListCollections = ListCollectionsResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          ListCollectionsResponse'
            <$> (x .?> "FaceModelVersions" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "CollectionIds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCollections

instance NFData ListCollections

instance ToHeaders ListCollections where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("RekognitionService.ListCollections" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCollections where
  toJSON ListCollections' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcNextToken,
            ("MaxResults" .=) <$> _lcMaxResults
          ]
      )

instance ToPath ListCollections where
  toPath = const "/"

instance ToQuery ListCollections where
  toQuery = const mempty

-- | /See:/ 'listCollectionsResponse' smart constructor.
data ListCollectionsResponse = ListCollectionsResponse'
  { _lcrrsFaceModelVersions ::
      !(Maybe [Text]),
    _lcrrsNextToken ::
      !(Maybe Text),
    _lcrrsCollectionIds ::
      !(Maybe [Text]),
    _lcrrsResponseStatus ::
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

-- | Creates a value of 'ListCollectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsFaceModelVersions' - Version numbers of the face detection models associated with the collections in the array @CollectionIds@ . For example, the value of @FaceModelVersions[2]@ is the version number for the face detection model used by the collection in @CollectionId[2]@ .
--
-- * 'lcrrsNextToken' - If the result is truncated, the response provides a @NextToken@ that you can use in the subsequent request to fetch the next set of collection IDs.
--
-- * 'lcrrsCollectionIds' - An array of collection IDs.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listCollectionsResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListCollectionsResponse
listCollectionsResponse pResponseStatus_ =
  ListCollectionsResponse'
    { _lcrrsFaceModelVersions =
        Nothing,
      _lcrrsNextToken = Nothing,
      _lcrrsCollectionIds = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | Version numbers of the face detection models associated with the collections in the array @CollectionIds@ . For example, the value of @FaceModelVersions[2]@ is the version number for the face detection model used by the collection in @CollectionId[2]@ .
lcrrsFaceModelVersions :: Lens' ListCollectionsResponse [Text]
lcrrsFaceModelVersions = lens _lcrrsFaceModelVersions (\s a -> s {_lcrrsFaceModelVersions = a}) . _Default . _Coerce

-- | If the result is truncated, the response provides a @NextToken@ that you can use in the subsequent request to fetch the next set of collection IDs.
lcrrsNextToken :: Lens' ListCollectionsResponse (Maybe Text)
lcrrsNextToken = lens _lcrrsNextToken (\s a -> s {_lcrrsNextToken = a})

-- | An array of collection IDs.
lcrrsCollectionIds :: Lens' ListCollectionsResponse [Text]
lcrrsCollectionIds = lens _lcrrsCollectionIds (\s a -> s {_lcrrsCollectionIds = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListCollectionsResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListCollectionsResponse
