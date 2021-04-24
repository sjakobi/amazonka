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
-- Module      : Network.AWS.Greengrass.ListFunctionDefinitionVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a Lambda function definition.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListFunctionDefinitionVersions
  ( -- * Creating a Request
    listFunctionDefinitionVersions,
    ListFunctionDefinitionVersions,

    -- * Request Lenses
    lfdvNextToken,
    lfdvMaxResults,
    lfdvFunctionDefinitionId,

    -- * Destructuring the Response
    listFunctionDefinitionVersionsResponse,
    ListFunctionDefinitionVersionsResponse,

    -- * Response Lenses
    lfdvrrsNextToken,
    lfdvrrsVersions,
    lfdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFunctionDefinitionVersions' smart constructor.
data ListFunctionDefinitionVersions = ListFunctionDefinitionVersions'
  { _lfdvNextToken ::
      !( Maybe
           Text
       ),
    _lfdvMaxResults ::
      !( Maybe
           Text
       ),
    _lfdvFunctionDefinitionId ::
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

-- | Creates a value of 'ListFunctionDefinitionVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfdvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lfdvMaxResults' - The maximum number of results to be returned per request.
--
-- * 'lfdvFunctionDefinitionId' - The ID of the Lambda function definition.
listFunctionDefinitionVersions ::
  -- | 'lfdvFunctionDefinitionId'
  Text ->
  ListFunctionDefinitionVersions
listFunctionDefinitionVersions pFunctionDefinitionId_ =
  ListFunctionDefinitionVersions'
    { _lfdvNextToken =
        Nothing,
      _lfdvMaxResults = Nothing,
      _lfdvFunctionDefinitionId =
        pFunctionDefinitionId_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lfdvNextToken :: Lens' ListFunctionDefinitionVersions (Maybe Text)
lfdvNextToken = lens _lfdvNextToken (\s a -> s {_lfdvNextToken = a})

-- | The maximum number of results to be returned per request.
lfdvMaxResults :: Lens' ListFunctionDefinitionVersions (Maybe Text)
lfdvMaxResults = lens _lfdvMaxResults (\s a -> s {_lfdvMaxResults = a})

-- | The ID of the Lambda function definition.
lfdvFunctionDefinitionId :: Lens' ListFunctionDefinitionVersions Text
lfdvFunctionDefinitionId = lens _lfdvFunctionDefinitionId (\s a -> s {_lfdvFunctionDefinitionId = a})

instance AWSPager ListFunctionDefinitionVersions where
  page rq rs
    | stop (rs ^. lfdvrrsNextToken) = Nothing
    | stop (rs ^. lfdvrrsVersions) = Nothing
    | otherwise =
      Just $ rq & lfdvNextToken .~ rs ^. lfdvrrsNextToken

instance AWSRequest ListFunctionDefinitionVersions where
  type
    Rs ListFunctionDefinitionVersions =
      ListFunctionDefinitionVersionsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListFunctionDefinitionVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Versions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListFunctionDefinitionVersions

instance NFData ListFunctionDefinitionVersions

instance ToHeaders ListFunctionDefinitionVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListFunctionDefinitionVersions where
  toPath ListFunctionDefinitionVersions' {..} =
    mconcat
      [ "/greengrass/definition/functions/",
        toBS _lfdvFunctionDefinitionId,
        "/versions"
      ]

instance ToQuery ListFunctionDefinitionVersions where
  toQuery ListFunctionDefinitionVersions' {..} =
    mconcat
      [ "NextToken" =: _lfdvNextToken,
        "MaxResults" =: _lfdvMaxResults
      ]

-- | /See:/ 'listFunctionDefinitionVersionsResponse' smart constructor.
data ListFunctionDefinitionVersionsResponse = ListFunctionDefinitionVersionsResponse'
  { _lfdvrrsNextToken ::
      !( Maybe
           Text
       ),
    _lfdvrrsVersions ::
      !( Maybe
           [VersionInformation]
       ),
    _lfdvrrsResponseStatus ::
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

-- | Creates a value of 'ListFunctionDefinitionVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfdvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lfdvrrsVersions' - Information about a version.
--
-- * 'lfdvrrsResponseStatus' - -- | The response status code.
listFunctionDefinitionVersionsResponse ::
  -- | 'lfdvrrsResponseStatus'
  Int ->
  ListFunctionDefinitionVersionsResponse
listFunctionDefinitionVersionsResponse
  pResponseStatus_ =
    ListFunctionDefinitionVersionsResponse'
      { _lfdvrrsNextToken =
          Nothing,
        _lfdvrrsVersions = Nothing,
        _lfdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lfdvrrsNextToken :: Lens' ListFunctionDefinitionVersionsResponse (Maybe Text)
lfdvrrsNextToken = lens _lfdvrrsNextToken (\s a -> s {_lfdvrrsNextToken = a})

-- | Information about a version.
lfdvrrsVersions :: Lens' ListFunctionDefinitionVersionsResponse [VersionInformation]
lfdvrrsVersions = lens _lfdvrrsVersions (\s a -> s {_lfdvrrsVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lfdvrrsResponseStatus :: Lens' ListFunctionDefinitionVersionsResponse Int
lfdvrrsResponseStatus = lens _lfdvrrsResponseStatus (\s a -> s {_lfdvrrsResponseStatus = a})

instance
  NFData
    ListFunctionDefinitionVersionsResponse
