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
-- Module      : Network.AWS.Greengrass.ListCoreDefinitionVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a core definition.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListCoreDefinitionVersions
  ( -- * Creating a Request
    listCoreDefinitionVersions,
    ListCoreDefinitionVersions,

    -- * Request Lenses
    lcdvNextToken,
    lcdvMaxResults,
    lcdvCoreDefinitionId,

    -- * Destructuring the Response
    listCoreDefinitionVersionsResponse,
    ListCoreDefinitionVersionsResponse,

    -- * Response Lenses
    lisrsNextToken,
    lisrsVersions,
    lisrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCoreDefinitionVersions' smart constructor.
data ListCoreDefinitionVersions = ListCoreDefinitionVersions'
  { _lcdvNextToken ::
      !(Maybe Text),
    _lcdvMaxResults ::
      !(Maybe Text),
    _lcdvCoreDefinitionId ::
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

-- | Creates a value of 'ListCoreDefinitionVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lcdvMaxResults' - The maximum number of results to be returned per request.
--
-- * 'lcdvCoreDefinitionId' - The ID of the core definition.
listCoreDefinitionVersions ::
  -- | 'lcdvCoreDefinitionId'
  Text ->
  ListCoreDefinitionVersions
listCoreDefinitionVersions pCoreDefinitionId_ =
  ListCoreDefinitionVersions'
    { _lcdvNextToken =
        Nothing,
      _lcdvMaxResults = Nothing,
      _lcdvCoreDefinitionId = pCoreDefinitionId_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lcdvNextToken :: Lens' ListCoreDefinitionVersions (Maybe Text)
lcdvNextToken = lens _lcdvNextToken (\s a -> s {_lcdvNextToken = a})

-- | The maximum number of results to be returned per request.
lcdvMaxResults :: Lens' ListCoreDefinitionVersions (Maybe Text)
lcdvMaxResults = lens _lcdvMaxResults (\s a -> s {_lcdvMaxResults = a})

-- | The ID of the core definition.
lcdvCoreDefinitionId :: Lens' ListCoreDefinitionVersions Text
lcdvCoreDefinitionId = lens _lcdvCoreDefinitionId (\s a -> s {_lcdvCoreDefinitionId = a})

instance AWSPager ListCoreDefinitionVersions where
  page rq rs
    | stop (rs ^. lisrsNextToken) = Nothing
    | stop (rs ^. lisrsVersions) = Nothing
    | otherwise =
      Just $ rq & lcdvNextToken .~ rs ^. lisrsNextToken

instance AWSRequest ListCoreDefinitionVersions where
  type
    Rs ListCoreDefinitionVersions =
      ListCoreDefinitionVersionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListCoreDefinitionVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Versions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCoreDefinitionVersions

instance NFData ListCoreDefinitionVersions

instance ToHeaders ListCoreDefinitionVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListCoreDefinitionVersions where
  toPath ListCoreDefinitionVersions' {..} =
    mconcat
      [ "/greengrass/definition/cores/",
        toBS _lcdvCoreDefinitionId,
        "/versions"
      ]

instance ToQuery ListCoreDefinitionVersions where
  toQuery ListCoreDefinitionVersions' {..} =
    mconcat
      [ "NextToken" =: _lcdvNextToken,
        "MaxResults" =: _lcdvMaxResults
      ]

-- | /See:/ 'listCoreDefinitionVersionsResponse' smart constructor.
data ListCoreDefinitionVersionsResponse = ListCoreDefinitionVersionsResponse'
  { _lisrsNextToken ::
      !( Maybe
           Text
       ),
    _lisrsVersions ::
      !( Maybe
           [VersionInformation]
       ),
    _lisrsResponseStatus ::
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

-- | Creates a value of 'ListCoreDefinitionVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lisrsVersions' - Information about a version.
--
-- * 'lisrsResponseStatus' - -- | The response status code.
listCoreDefinitionVersionsResponse ::
  -- | 'lisrsResponseStatus'
  Int ->
  ListCoreDefinitionVersionsResponse
listCoreDefinitionVersionsResponse pResponseStatus_ =
  ListCoreDefinitionVersionsResponse'
    { _lisrsNextToken =
        Nothing,
      _lisrsVersions = Nothing,
      _lisrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lisrsNextToken :: Lens' ListCoreDefinitionVersionsResponse (Maybe Text)
lisrsNextToken = lens _lisrsNextToken (\s a -> s {_lisrsNextToken = a})

-- | Information about a version.
lisrsVersions :: Lens' ListCoreDefinitionVersionsResponse [VersionInformation]
lisrsVersions = lens _lisrsVersions (\s a -> s {_lisrsVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lisrsResponseStatus :: Lens' ListCoreDefinitionVersionsResponse Int
lisrsResponseStatus = lens _lisrsResponseStatus (\s a -> s {_lisrsResponseStatus = a})

instance NFData ListCoreDefinitionVersionsResponse
