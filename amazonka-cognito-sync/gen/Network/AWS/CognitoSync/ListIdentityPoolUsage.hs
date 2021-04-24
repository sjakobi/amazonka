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
-- Module      : Network.AWS.CognitoSync.ListIdentityPoolUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of identity pools registered with Cognito.
--
--
-- ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
module Network.AWS.CognitoSync.ListIdentityPoolUsage
  ( -- * Creating a Request
    listIdentityPoolUsage,
    ListIdentityPoolUsage,

    -- * Request Lenses
    lipuNextToken,
    lipuMaxResults,

    -- * Destructuring the Response
    listIdentityPoolUsageResponse,
    ListIdentityPoolUsageResponse,

    -- * Response Lenses
    lipurrsIdentityPoolUsages,
    lipurrsNextToken,
    lipurrsMaxResults,
    lipurrsCount,
    lipurrsResponseStatus,
  )
where

import Network.AWS.CognitoSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request for usage information on an identity pool.
--
-- /See:/ 'listIdentityPoolUsage' smart constructor.
data ListIdentityPoolUsage = ListIdentityPoolUsage'
  { _lipuNextToken ::
      !(Maybe Text),
    _lipuMaxResults ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListIdentityPoolUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipuNextToken' - A pagination token for obtaining the next page of results.
--
-- * 'lipuMaxResults' - The maximum number of results to be returned.
listIdentityPoolUsage ::
  ListIdentityPoolUsage
listIdentityPoolUsage =
  ListIdentityPoolUsage'
    { _lipuNextToken = Nothing,
      _lipuMaxResults = Nothing
    }

-- | A pagination token for obtaining the next page of results.
lipuNextToken :: Lens' ListIdentityPoolUsage (Maybe Text)
lipuNextToken = lens _lipuNextToken (\s a -> s {_lipuNextToken = a})

-- | The maximum number of results to be returned.
lipuMaxResults :: Lens' ListIdentityPoolUsage (Maybe Int)
lipuMaxResults = lens _lipuMaxResults (\s a -> s {_lipuMaxResults = a})

instance AWSRequest ListIdentityPoolUsage where
  type
    Rs ListIdentityPoolUsage =
      ListIdentityPoolUsageResponse
  request = get cognitoSync
  response =
    receiveJSON
      ( \s h x ->
          ListIdentityPoolUsageResponse'
            <$> (x .?> "IdentityPoolUsages" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "MaxResults")
            <*> (x .?> "Count")
            <*> (pure (fromEnum s))
      )

instance Hashable ListIdentityPoolUsage

instance NFData ListIdentityPoolUsage

instance ToHeaders ListIdentityPoolUsage where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListIdentityPoolUsage where
  toPath = const "/identitypools"

instance ToQuery ListIdentityPoolUsage where
  toQuery ListIdentityPoolUsage' {..} =
    mconcat
      [ "nextToken" =: _lipuNextToken,
        "maxResults" =: _lipuMaxResults
      ]

-- | Returned for a successful ListIdentityPoolUsage request.
--
-- /See:/ 'listIdentityPoolUsageResponse' smart constructor.
data ListIdentityPoolUsageResponse = ListIdentityPoolUsageResponse'
  { _lipurrsIdentityPoolUsages ::
      !( Maybe
           [IdentityPoolUsage]
       ),
    _lipurrsNextToken ::
      !( Maybe
           Text
       ),
    _lipurrsMaxResults ::
      !( Maybe
           Int
       ),
    _lipurrsCount ::
      !( Maybe
           Int
       ),
    _lipurrsResponseStatus ::
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

-- | Creates a value of 'ListIdentityPoolUsageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipurrsIdentityPoolUsages' - Usage information for the identity pools.
--
-- * 'lipurrsNextToken' - A pagination token for obtaining the next page of results.
--
-- * 'lipurrsMaxResults' - The maximum number of results to be returned.
--
-- * 'lipurrsCount' - Total number of identities for the identity pool.
--
-- * 'lipurrsResponseStatus' - -- | The response status code.
listIdentityPoolUsageResponse ::
  -- | 'lipurrsResponseStatus'
  Int ->
  ListIdentityPoolUsageResponse
listIdentityPoolUsageResponse pResponseStatus_ =
  ListIdentityPoolUsageResponse'
    { _lipurrsIdentityPoolUsages =
        Nothing,
      _lipurrsNextToken = Nothing,
      _lipurrsMaxResults = Nothing,
      _lipurrsCount = Nothing,
      _lipurrsResponseStatus = pResponseStatus_
    }

-- | Usage information for the identity pools.
lipurrsIdentityPoolUsages :: Lens' ListIdentityPoolUsageResponse [IdentityPoolUsage]
lipurrsIdentityPoolUsages = lens _lipurrsIdentityPoolUsages (\s a -> s {_lipurrsIdentityPoolUsages = a}) . _Default . _Coerce

-- | A pagination token for obtaining the next page of results.
lipurrsNextToken :: Lens' ListIdentityPoolUsageResponse (Maybe Text)
lipurrsNextToken = lens _lipurrsNextToken (\s a -> s {_lipurrsNextToken = a})

-- | The maximum number of results to be returned.
lipurrsMaxResults :: Lens' ListIdentityPoolUsageResponse (Maybe Int)
lipurrsMaxResults = lens _lipurrsMaxResults (\s a -> s {_lipurrsMaxResults = a})

-- | Total number of identities for the identity pool.
lipurrsCount :: Lens' ListIdentityPoolUsageResponse (Maybe Int)
lipurrsCount = lens _lipurrsCount (\s a -> s {_lipurrsCount = a})

-- | -- | The response status code.
lipurrsResponseStatus :: Lens' ListIdentityPoolUsageResponse Int
lipurrsResponseStatus = lens _lipurrsResponseStatus (\s a -> s {_lipurrsResponseStatus = a})

instance NFData ListIdentityPoolUsageResponse
