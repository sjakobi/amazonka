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
-- Module      : Network.AWS.Connect.ListInstanceStorageConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Returns a paginated list of storage configs for the identified instance and resource type.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListInstanceStorageConfigs
  ( -- * Creating a Request
    listInstanceStorageConfigs,
    ListInstanceStorageConfigs,

    -- * Request Lenses
    liscNextToken,
    liscMaxResults,
    liscInstanceId,
    liscResourceType,

    -- * Destructuring the Response
    listInstanceStorageConfigsResponse,
    ListInstanceStorageConfigsResponse,

    -- * Response Lenses
    liscrrsNextToken,
    liscrrsStorageConfigs,
    liscrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInstanceStorageConfigs' smart constructor.
data ListInstanceStorageConfigs = ListInstanceStorageConfigs'
  { _liscNextToken ::
      !(Maybe Text),
    _liscMaxResults ::
      !(Maybe Nat),
    _liscInstanceId ::
      !Text,
    _liscResourceType ::
      !InstanceStorageResourceType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListInstanceStorageConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liscNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'liscMaxResults' - The maximum number of results to return per page.
--
-- * 'liscInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'liscResourceType' - A valid resource type.
listInstanceStorageConfigs ::
  -- | 'liscInstanceId'
  Text ->
  -- | 'liscResourceType'
  InstanceStorageResourceType ->
  ListInstanceStorageConfigs
listInstanceStorageConfigs
  pInstanceId_
  pResourceType_ =
    ListInstanceStorageConfigs'
      { _liscNextToken =
          Nothing,
        _liscMaxResults = Nothing,
        _liscInstanceId = pInstanceId_,
        _liscResourceType = pResourceType_
      }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
liscNextToken :: Lens' ListInstanceStorageConfigs (Maybe Text)
liscNextToken = lens _liscNextToken (\s a -> s {_liscNextToken = a})

-- | The maximum number of results to return per page.
liscMaxResults :: Lens' ListInstanceStorageConfigs (Maybe Natural)
liscMaxResults = lens _liscMaxResults (\s a -> s {_liscMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
liscInstanceId :: Lens' ListInstanceStorageConfigs Text
liscInstanceId = lens _liscInstanceId (\s a -> s {_liscInstanceId = a})

-- | A valid resource type.
liscResourceType :: Lens' ListInstanceStorageConfigs InstanceStorageResourceType
liscResourceType = lens _liscResourceType (\s a -> s {_liscResourceType = a})

instance AWSPager ListInstanceStorageConfigs where
  page rq rs
    | stop (rs ^. liscrrsNextToken) = Nothing
    | stop (rs ^. liscrrsStorageConfigs) = Nothing
    | otherwise =
      Just $ rq & liscNextToken .~ rs ^. liscrrsNextToken

instance AWSRequest ListInstanceStorageConfigs where
  type
    Rs ListInstanceStorageConfigs =
      ListInstanceStorageConfigsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListInstanceStorageConfigsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "StorageConfigs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInstanceStorageConfigs

instance NFData ListInstanceStorageConfigs

instance ToHeaders ListInstanceStorageConfigs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListInstanceStorageConfigs where
  toPath ListInstanceStorageConfigs' {..} =
    mconcat
      [ "/instance/",
        toBS _liscInstanceId,
        "/storage-configs"
      ]

instance ToQuery ListInstanceStorageConfigs where
  toQuery ListInstanceStorageConfigs' {..} =
    mconcat
      [ "nextToken" =: _liscNextToken,
        "maxResults" =: _liscMaxResults,
        "resourceType" =: _liscResourceType
      ]

-- | /See:/ 'listInstanceStorageConfigsResponse' smart constructor.
data ListInstanceStorageConfigsResponse = ListInstanceStorageConfigsResponse'
  { _liscrrsNextToken ::
      !( Maybe
           Text
       ),
    _liscrrsStorageConfigs ::
      !( Maybe
           [InstanceStorageConfig]
       ),
    _liscrrsResponseStatus ::
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

-- | Creates a value of 'ListInstanceStorageConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liscrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'liscrrsStorageConfigs' - A valid storage type.
--
-- * 'liscrrsResponseStatus' - -- | The response status code.
listInstanceStorageConfigsResponse ::
  -- | 'liscrrsResponseStatus'
  Int ->
  ListInstanceStorageConfigsResponse
listInstanceStorageConfigsResponse pResponseStatus_ =
  ListInstanceStorageConfigsResponse'
    { _liscrrsNextToken =
        Nothing,
      _liscrrsStorageConfigs = Nothing,
      _liscrrsResponseStatus =
        pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
liscrrsNextToken :: Lens' ListInstanceStorageConfigsResponse (Maybe Text)
liscrrsNextToken = lens _liscrrsNextToken (\s a -> s {_liscrrsNextToken = a})

-- | A valid storage type.
liscrrsStorageConfigs :: Lens' ListInstanceStorageConfigsResponse [InstanceStorageConfig]
liscrrsStorageConfigs = lens _liscrrsStorageConfigs (\s a -> s {_liscrrsStorageConfigs = a}) . _Default . _Coerce

-- | -- | The response status code.
liscrrsResponseStatus :: Lens' ListInstanceStorageConfigsResponse Int
liscrrsResponseStatus = lens _liscrrsResponseStatus (\s a -> s {_liscrrsResponseStatus = a})

instance NFData ListInstanceStorageConfigsResponse
