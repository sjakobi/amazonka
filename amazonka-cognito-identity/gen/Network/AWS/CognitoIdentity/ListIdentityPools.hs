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
-- Module      : Network.AWS.CognitoIdentity.ListIdentityPools
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the Cognito identity pools registered for your account.
--
--
-- You must use AWS Developer credentials to call this API.
--
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentity.ListIdentityPools
  ( -- * Creating a Request
    listIdentityPools,
    ListIdentityPools,

    -- * Request Lenses
    lipNextToken,
    lipMaxResults,

    -- * Destructuring the Response
    listIdentityPoolsResponse,
    ListIdentityPoolsResponse,

    -- * Response Lenses
    liprrsNextToken,
    liprrsIdentityPools,
    liprrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the ListIdentityPools action.
--
--
--
-- /See:/ 'listIdentityPools' smart constructor.
data ListIdentityPools = ListIdentityPools'
  { _lipNextToken ::
      !(Maybe Text),
    _lipMaxResults :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIdentityPools' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipNextToken' - A pagination token.
--
-- * 'lipMaxResults' - The maximum number of identities to return.
listIdentityPools ::
  -- | 'lipMaxResults'
  Natural ->
  ListIdentityPools
listIdentityPools pMaxResults_ =
  ListIdentityPools'
    { _lipNextToken = Nothing,
      _lipMaxResults = _Nat # pMaxResults_
    }

-- | A pagination token.
lipNextToken :: Lens' ListIdentityPools (Maybe Text)
lipNextToken = lens _lipNextToken (\s a -> s {_lipNextToken = a})

-- | The maximum number of identities to return.
lipMaxResults :: Lens' ListIdentityPools Natural
lipMaxResults = lens _lipMaxResults (\s a -> s {_lipMaxResults = a}) . _Nat

instance AWSPager ListIdentityPools where
  page rq rs
    | stop (rs ^. liprrsNextToken) = Nothing
    | stop (rs ^. liprrsIdentityPools) = Nothing
    | otherwise =
      Just $ rq & lipNextToken .~ rs ^. liprrsNextToken

instance AWSRequest ListIdentityPools where
  type Rs ListIdentityPools = ListIdentityPoolsResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          ListIdentityPoolsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "IdentityPools" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListIdentityPools

instance NFData ListIdentityPools

instance ToHeaders ListIdentityPools where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.ListIdentityPools" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListIdentityPools where
  toJSON ListIdentityPools' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lipNextToken,
            Just ("MaxResults" .= _lipMaxResults)
          ]
      )

instance ToPath ListIdentityPools where
  toPath = const "/"

instance ToQuery ListIdentityPools where
  toQuery = const mempty

-- | The result of a successful ListIdentityPools action.
--
--
--
-- /See:/ 'listIdentityPoolsResponse' smart constructor.
data ListIdentityPoolsResponse = ListIdentityPoolsResponse'
  { _liprrsNextToken ::
      !(Maybe Text),
    _liprrsIdentityPools ::
      !( Maybe
           [IdentityPoolShortDescription]
       ),
    _liprrsResponseStatus ::
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

-- | Creates a value of 'ListIdentityPoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liprrsNextToken' - A pagination token.
--
-- * 'liprrsIdentityPools' - The identity pools returned by the ListIdentityPools action.
--
-- * 'liprrsResponseStatus' - -- | The response status code.
listIdentityPoolsResponse ::
  -- | 'liprrsResponseStatus'
  Int ->
  ListIdentityPoolsResponse
listIdentityPoolsResponse pResponseStatus_ =
  ListIdentityPoolsResponse'
    { _liprrsNextToken =
        Nothing,
      _liprrsIdentityPools = Nothing,
      _liprrsResponseStatus = pResponseStatus_
    }

-- | A pagination token.
liprrsNextToken :: Lens' ListIdentityPoolsResponse (Maybe Text)
liprrsNextToken = lens _liprrsNextToken (\s a -> s {_liprrsNextToken = a})

-- | The identity pools returned by the ListIdentityPools action.
liprrsIdentityPools :: Lens' ListIdentityPoolsResponse [IdentityPoolShortDescription]
liprrsIdentityPools = lens _liprrsIdentityPools (\s a -> s {_liprrsIdentityPools = a}) . _Default . _Coerce

-- | -- | The response status code.
liprrsResponseStatus :: Lens' ListIdentityPoolsResponse Int
liprrsResponseStatus = lens _liprrsResponseStatus (\s a -> s {_liprrsResponseStatus = a})

instance NFData ListIdentityPoolsResponse
