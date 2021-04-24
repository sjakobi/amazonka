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
-- Module      : Network.AWS.Greengrass.ListLoggerDefinitionVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a logger definition.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListLoggerDefinitionVersions
  ( -- * Creating a Request
    listLoggerDefinitionVersions,
    ListLoggerDefinitionVersions,

    -- * Request Lenses
    lldvNextToken,
    lldvMaxResults,
    lldvLoggerDefinitionId,

    -- * Destructuring the Response
    listLoggerDefinitionVersionsResponse,
    ListLoggerDefinitionVersionsResponse,

    -- * Response Lenses
    lldvrrsNextToken,
    lldvrrsVersions,
    lldvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listLoggerDefinitionVersions' smart constructor.
data ListLoggerDefinitionVersions = ListLoggerDefinitionVersions'
  { _lldvNextToken ::
      !(Maybe Text),
    _lldvMaxResults ::
      !(Maybe Text),
    _lldvLoggerDefinitionId ::
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

-- | Creates a value of 'ListLoggerDefinitionVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lldvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lldvMaxResults' - The maximum number of results to be returned per request.
--
-- * 'lldvLoggerDefinitionId' - The ID of the logger definition.
listLoggerDefinitionVersions ::
  -- | 'lldvLoggerDefinitionId'
  Text ->
  ListLoggerDefinitionVersions
listLoggerDefinitionVersions pLoggerDefinitionId_ =
  ListLoggerDefinitionVersions'
    { _lldvNextToken =
        Nothing,
      _lldvMaxResults = Nothing,
      _lldvLoggerDefinitionId =
        pLoggerDefinitionId_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lldvNextToken :: Lens' ListLoggerDefinitionVersions (Maybe Text)
lldvNextToken = lens _lldvNextToken (\s a -> s {_lldvNextToken = a})

-- | The maximum number of results to be returned per request.
lldvMaxResults :: Lens' ListLoggerDefinitionVersions (Maybe Text)
lldvMaxResults = lens _lldvMaxResults (\s a -> s {_lldvMaxResults = a})

-- | The ID of the logger definition.
lldvLoggerDefinitionId :: Lens' ListLoggerDefinitionVersions Text
lldvLoggerDefinitionId = lens _lldvLoggerDefinitionId (\s a -> s {_lldvLoggerDefinitionId = a})

instance AWSPager ListLoggerDefinitionVersions where
  page rq rs
    | stop (rs ^. lldvrrsNextToken) = Nothing
    | stop (rs ^. lldvrrsVersions) = Nothing
    | otherwise =
      Just $ rq & lldvNextToken .~ rs ^. lldvrrsNextToken

instance AWSRequest ListLoggerDefinitionVersions where
  type
    Rs ListLoggerDefinitionVersions =
      ListLoggerDefinitionVersionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListLoggerDefinitionVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Versions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListLoggerDefinitionVersions

instance NFData ListLoggerDefinitionVersions

instance ToHeaders ListLoggerDefinitionVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListLoggerDefinitionVersions where
  toPath ListLoggerDefinitionVersions' {..} =
    mconcat
      [ "/greengrass/definition/loggers/",
        toBS _lldvLoggerDefinitionId,
        "/versions"
      ]

instance ToQuery ListLoggerDefinitionVersions where
  toQuery ListLoggerDefinitionVersions' {..} =
    mconcat
      [ "NextToken" =: _lldvNextToken,
        "MaxResults" =: _lldvMaxResults
      ]

-- | /See:/ 'listLoggerDefinitionVersionsResponse' smart constructor.
data ListLoggerDefinitionVersionsResponse = ListLoggerDefinitionVersionsResponse'
  { _lldvrrsNextToken ::
      !( Maybe
           Text
       ),
    _lldvrrsVersions ::
      !( Maybe
           [VersionInformation]
       ),
    _lldvrrsResponseStatus ::
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

-- | Creates a value of 'ListLoggerDefinitionVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lldvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lldvrrsVersions' - Information about a version.
--
-- * 'lldvrrsResponseStatus' - -- | The response status code.
listLoggerDefinitionVersionsResponse ::
  -- | 'lldvrrsResponseStatus'
  Int ->
  ListLoggerDefinitionVersionsResponse
listLoggerDefinitionVersionsResponse pResponseStatus_ =
  ListLoggerDefinitionVersionsResponse'
    { _lldvrrsNextToken =
        Nothing,
      _lldvrrsVersions = Nothing,
      _lldvrrsResponseStatus =
        pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lldvrrsNextToken :: Lens' ListLoggerDefinitionVersionsResponse (Maybe Text)
lldvrrsNextToken = lens _lldvrrsNextToken (\s a -> s {_lldvrrsNextToken = a})

-- | Information about a version.
lldvrrsVersions :: Lens' ListLoggerDefinitionVersionsResponse [VersionInformation]
lldvrrsVersions = lens _lldvrrsVersions (\s a -> s {_lldvrrsVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lldvrrsResponseStatus :: Lens' ListLoggerDefinitionVersionsResponse Int
lldvrrsResponseStatus = lens _lldvrrsResponseStatus (\s a -> s {_lldvrrsResponseStatus = a})

instance NFData ListLoggerDefinitionVersionsResponse
