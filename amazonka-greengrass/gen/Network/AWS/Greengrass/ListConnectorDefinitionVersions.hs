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
-- Module      : Network.AWS.Greengrass.ListConnectorDefinitionVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListConnectorDefinitionVersions
  ( -- * Creating a Request
    listConnectorDefinitionVersions,
    ListConnectorDefinitionVersions,

    -- * Request Lenses
    lNextToken,
    lMaxResults,
    lConnectorDefinitionId,

    -- * Destructuring the Response
    listConnectorDefinitionVersionsResponse,
    ListConnectorDefinitionVersionsResponse,

    -- * Response Lenses
    lcdvrrsNextToken,
    lcdvrrsVersions,
    lcdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listConnectorDefinitionVersions' smart constructor.
data ListConnectorDefinitionVersions = ListConnectorDefinitionVersions'
  { _lNextToken ::
      !( Maybe
           Text
       ),
    _lMaxResults ::
      !( Maybe
           Text
       ),
    _lConnectorDefinitionId ::
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

-- | Creates a value of 'ListConnectorDefinitionVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lMaxResults' - The maximum number of results to be returned per request.
--
-- * 'lConnectorDefinitionId' - The ID of the connector definition.
listConnectorDefinitionVersions ::
  -- | 'lConnectorDefinitionId'
  Text ->
  ListConnectorDefinitionVersions
listConnectorDefinitionVersions
  pConnectorDefinitionId_ =
    ListConnectorDefinitionVersions'
      { _lNextToken =
          Nothing,
        _lMaxResults = Nothing,
        _lConnectorDefinitionId =
          pConnectorDefinitionId_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lNextToken :: Lens' ListConnectorDefinitionVersions (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | The maximum number of results to be returned per request.
lMaxResults :: Lens' ListConnectorDefinitionVersions (Maybe Text)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a})

-- | The ID of the connector definition.
lConnectorDefinitionId :: Lens' ListConnectorDefinitionVersions Text
lConnectorDefinitionId = lens _lConnectorDefinitionId (\s a -> s {_lConnectorDefinitionId = a})

instance AWSPager ListConnectorDefinitionVersions where
  page rq rs
    | stop (rs ^. lcdvrrsNextToken) = Nothing
    | stop (rs ^. lcdvrrsVersions) = Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. lcdvrrsNextToken

instance AWSRequest ListConnectorDefinitionVersions where
  type
    Rs ListConnectorDefinitionVersions =
      ListConnectorDefinitionVersionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListConnectorDefinitionVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Versions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListConnectorDefinitionVersions

instance NFData ListConnectorDefinitionVersions

instance ToHeaders ListConnectorDefinitionVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListConnectorDefinitionVersions where
  toPath ListConnectorDefinitionVersions' {..} =
    mconcat
      [ "/greengrass/definition/connectors/",
        toBS _lConnectorDefinitionId,
        "/versions"
      ]

instance ToQuery ListConnectorDefinitionVersions where
  toQuery ListConnectorDefinitionVersions' {..} =
    mconcat
      [ "NextToken" =: _lNextToken,
        "MaxResults" =: _lMaxResults
      ]

-- | /See:/ 'listConnectorDefinitionVersionsResponse' smart constructor.
data ListConnectorDefinitionVersionsResponse = ListConnectorDefinitionVersionsResponse'
  { _lcdvrrsNextToken ::
      !( Maybe
           Text
       ),
    _lcdvrrsVersions ::
      !( Maybe
           [VersionInformation]
       ),
    _lcdvrrsResponseStatus ::
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

-- | Creates a value of 'ListConnectorDefinitionVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lcdvrrsVersions' - Information about a version.
--
-- * 'lcdvrrsResponseStatus' - -- | The response status code.
listConnectorDefinitionVersionsResponse ::
  -- | 'lcdvrrsResponseStatus'
  Int ->
  ListConnectorDefinitionVersionsResponse
listConnectorDefinitionVersionsResponse
  pResponseStatus_ =
    ListConnectorDefinitionVersionsResponse'
      { _lcdvrrsNextToken =
          Nothing,
        _lcdvrrsVersions = Nothing,
        _lcdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lcdvrrsNextToken :: Lens' ListConnectorDefinitionVersionsResponse (Maybe Text)
lcdvrrsNextToken = lens _lcdvrrsNextToken (\s a -> s {_lcdvrrsNextToken = a})

-- | Information about a version.
lcdvrrsVersions :: Lens' ListConnectorDefinitionVersionsResponse [VersionInformation]
lcdvrrsVersions = lens _lcdvrrsVersions (\s a -> s {_lcdvrrsVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lcdvrrsResponseStatus :: Lens' ListConnectorDefinitionVersionsResponse Int
lcdvrrsResponseStatus = lens _lcdvrrsResponseStatus (\s a -> s {_lcdvrrsResponseStatus = a})

instance
  NFData
    ListConnectorDefinitionVersionsResponse
