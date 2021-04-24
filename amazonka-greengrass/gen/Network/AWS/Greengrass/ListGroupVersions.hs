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
-- Module      : Network.AWS.Greengrass.ListGroupVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a group.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListGroupVersions
  ( -- * Creating a Request
    listGroupVersions,
    ListGroupVersions,

    -- * Request Lenses
    lgvNextToken,
    lgvMaxResults,
    lgvGroupId,

    -- * Destructuring the Response
    listGroupVersionsResponse,
    ListGroupVersionsResponse,

    -- * Response Lenses
    lgvrrsNextToken,
    lgvrrsVersions,
    lgvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listGroupVersions' smart constructor.
data ListGroupVersions = ListGroupVersions'
  { _lgvNextToken ::
      !(Maybe Text),
    _lgvMaxResults :: !(Maybe Text),
    _lgvGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lgvMaxResults' - The maximum number of results to be returned per request.
--
-- * 'lgvGroupId' - The ID of the Greengrass group.
listGroupVersions ::
  -- | 'lgvGroupId'
  Text ->
  ListGroupVersions
listGroupVersions pGroupId_ =
  ListGroupVersions'
    { _lgvNextToken = Nothing,
      _lgvMaxResults = Nothing,
      _lgvGroupId = pGroupId_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lgvNextToken :: Lens' ListGroupVersions (Maybe Text)
lgvNextToken = lens _lgvNextToken (\s a -> s {_lgvNextToken = a})

-- | The maximum number of results to be returned per request.
lgvMaxResults :: Lens' ListGroupVersions (Maybe Text)
lgvMaxResults = lens _lgvMaxResults (\s a -> s {_lgvMaxResults = a})

-- | The ID of the Greengrass group.
lgvGroupId :: Lens' ListGroupVersions Text
lgvGroupId = lens _lgvGroupId (\s a -> s {_lgvGroupId = a})

instance AWSPager ListGroupVersions where
  page rq rs
    | stop (rs ^. lgvrrsNextToken) = Nothing
    | stop (rs ^. lgvrrsVersions) = Nothing
    | otherwise =
      Just $ rq & lgvNextToken .~ rs ^. lgvrrsNextToken

instance AWSRequest ListGroupVersions where
  type Rs ListGroupVersions = ListGroupVersionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListGroupVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Versions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListGroupVersions

instance NFData ListGroupVersions

instance ToHeaders ListGroupVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListGroupVersions where
  toPath ListGroupVersions' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _lgvGroupId,
        "/versions"
      ]

instance ToQuery ListGroupVersions where
  toQuery ListGroupVersions' {..} =
    mconcat
      [ "NextToken" =: _lgvNextToken,
        "MaxResults" =: _lgvMaxResults
      ]

-- | /See:/ 'listGroupVersionsResponse' smart constructor.
data ListGroupVersionsResponse = ListGroupVersionsResponse'
  { _lgvrrsNextToken ::
      !(Maybe Text),
    _lgvrrsVersions ::
      !( Maybe
           [VersionInformation]
       ),
    _lgvrrsResponseStatus ::
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

-- | Creates a value of 'ListGroupVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lgvrrsVersions' - Information about a version.
--
-- * 'lgvrrsResponseStatus' - -- | The response status code.
listGroupVersionsResponse ::
  -- | 'lgvrrsResponseStatus'
  Int ->
  ListGroupVersionsResponse
listGroupVersionsResponse pResponseStatus_ =
  ListGroupVersionsResponse'
    { _lgvrrsNextToken =
        Nothing,
      _lgvrrsVersions = Nothing,
      _lgvrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lgvrrsNextToken :: Lens' ListGroupVersionsResponse (Maybe Text)
lgvrrsNextToken = lens _lgvrrsNextToken (\s a -> s {_lgvrrsNextToken = a})

-- | Information about a version.
lgvrrsVersions :: Lens' ListGroupVersionsResponse [VersionInformation]
lgvrrsVersions = lens _lgvrrsVersions (\s a -> s {_lgvrrsVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lgvrrsResponseStatus :: Lens' ListGroupVersionsResponse Int
lgvrrsResponseStatus = lens _lgvrrsResponseStatus (\s a -> s {_lgvrrsResponseStatus = a})

instance NFData ListGroupVersionsResponse
