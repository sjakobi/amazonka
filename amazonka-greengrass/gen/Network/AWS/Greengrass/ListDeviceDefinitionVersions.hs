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
-- Module      : Network.AWS.Greengrass.ListDeviceDefinitionVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a device definition.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListDeviceDefinitionVersions
  ( -- * Creating a Request
    listDeviceDefinitionVersions,
    ListDeviceDefinitionVersions,

    -- * Request Lenses
    lddvNextToken,
    lddvMaxResults,
    lddvDeviceDefinitionId,

    -- * Destructuring the Response
    listDeviceDefinitionVersionsResponse,
    ListDeviceDefinitionVersionsResponse,

    -- * Response Lenses
    lddvrrsNextToken,
    lddvrrsVersions,
    lddvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDeviceDefinitionVersions' smart constructor.
data ListDeviceDefinitionVersions = ListDeviceDefinitionVersions'
  { _lddvNextToken ::
      !(Maybe Text),
    _lddvMaxResults ::
      !(Maybe Text),
    _lddvDeviceDefinitionId ::
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

-- | Creates a value of 'ListDeviceDefinitionVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lddvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lddvMaxResults' - The maximum number of results to be returned per request.
--
-- * 'lddvDeviceDefinitionId' - The ID of the device definition.
listDeviceDefinitionVersions ::
  -- | 'lddvDeviceDefinitionId'
  Text ->
  ListDeviceDefinitionVersions
listDeviceDefinitionVersions pDeviceDefinitionId_ =
  ListDeviceDefinitionVersions'
    { _lddvNextToken =
        Nothing,
      _lddvMaxResults = Nothing,
      _lddvDeviceDefinitionId =
        pDeviceDefinitionId_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lddvNextToken :: Lens' ListDeviceDefinitionVersions (Maybe Text)
lddvNextToken = lens _lddvNextToken (\s a -> s {_lddvNextToken = a})

-- | The maximum number of results to be returned per request.
lddvMaxResults :: Lens' ListDeviceDefinitionVersions (Maybe Text)
lddvMaxResults = lens _lddvMaxResults (\s a -> s {_lddvMaxResults = a})

-- | The ID of the device definition.
lddvDeviceDefinitionId :: Lens' ListDeviceDefinitionVersions Text
lddvDeviceDefinitionId = lens _lddvDeviceDefinitionId (\s a -> s {_lddvDeviceDefinitionId = a})

instance AWSPager ListDeviceDefinitionVersions where
  page rq rs
    | stop (rs ^. lddvrrsNextToken) = Nothing
    | stop (rs ^. lddvrrsVersions) = Nothing
    | otherwise =
      Just $ rq & lddvNextToken .~ rs ^. lddvrrsNextToken

instance AWSRequest ListDeviceDefinitionVersions where
  type
    Rs ListDeviceDefinitionVersions =
      ListDeviceDefinitionVersionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListDeviceDefinitionVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Versions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeviceDefinitionVersions

instance NFData ListDeviceDefinitionVersions

instance ToHeaders ListDeviceDefinitionVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListDeviceDefinitionVersions where
  toPath ListDeviceDefinitionVersions' {..} =
    mconcat
      [ "/greengrass/definition/devices/",
        toBS _lddvDeviceDefinitionId,
        "/versions"
      ]

instance ToQuery ListDeviceDefinitionVersions where
  toQuery ListDeviceDefinitionVersions' {..} =
    mconcat
      [ "NextToken" =: _lddvNextToken,
        "MaxResults" =: _lddvMaxResults
      ]

-- | /See:/ 'listDeviceDefinitionVersionsResponse' smart constructor.
data ListDeviceDefinitionVersionsResponse = ListDeviceDefinitionVersionsResponse'
  { _lddvrrsNextToken ::
      !( Maybe
           Text
       ),
    _lddvrrsVersions ::
      !( Maybe
           [VersionInformation]
       ),
    _lddvrrsResponseStatus ::
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

-- | Creates a value of 'ListDeviceDefinitionVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lddvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lddvrrsVersions' - Information about a version.
--
-- * 'lddvrrsResponseStatus' - -- | The response status code.
listDeviceDefinitionVersionsResponse ::
  -- | 'lddvrrsResponseStatus'
  Int ->
  ListDeviceDefinitionVersionsResponse
listDeviceDefinitionVersionsResponse pResponseStatus_ =
  ListDeviceDefinitionVersionsResponse'
    { _lddvrrsNextToken =
        Nothing,
      _lddvrrsVersions = Nothing,
      _lddvrrsResponseStatus =
        pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lddvrrsNextToken :: Lens' ListDeviceDefinitionVersionsResponse (Maybe Text)
lddvrrsNextToken = lens _lddvrrsNextToken (\s a -> s {_lddvrrsNextToken = a})

-- | Information about a version.
lddvrrsVersions :: Lens' ListDeviceDefinitionVersionsResponse [VersionInformation]
lddvrrsVersions = lens _lddvrrsVersions (\s a -> s {_lddvrrsVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lddvrrsResponseStatus :: Lens' ListDeviceDefinitionVersionsResponse Int
lddvrrsResponseStatus = lens _lddvrrsResponseStatus (\s a -> s {_lddvrrsResponseStatus = a})

instance NFData ListDeviceDefinitionVersionsResponse
