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
-- Module      : Network.AWS.CognitoIdentityProvider.ListResourceServers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the resource servers for a user pool.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.ListResourceServers
  ( -- * Creating a Request
    listResourceServers,
    ListResourceServers,

    -- * Request Lenses
    lrsNextToken,
    lrsMaxResults,
    lrsUserPoolId,

    -- * Destructuring the Response
    listResourceServersResponse,
    ListResourceServersResponse,

    -- * Response Lenses
    lrsrrsNextToken,
    lrsrrsResponseStatus,
    lrsrrsResourceServers,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listResourceServers' smart constructor.
data ListResourceServers = ListResourceServers'
  { _lrsNextToken ::
      !(Maybe Text),
    _lrsMaxResults :: !(Maybe Nat),
    _lrsUserPoolId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListResourceServers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - A pagination token.
--
-- * 'lrsMaxResults' - The maximum number of resource servers to return.
--
-- * 'lrsUserPoolId' - The user pool ID for the user pool.
listResourceServers ::
  -- | 'lrsUserPoolId'
  Text ->
  ListResourceServers
listResourceServers pUserPoolId_ =
  ListResourceServers'
    { _lrsNextToken = Nothing,
      _lrsMaxResults = Nothing,
      _lrsUserPoolId = pUserPoolId_
    }

-- | A pagination token.
lrsNextToken :: Lens' ListResourceServers (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | The maximum number of resource servers to return.
lrsMaxResults :: Lens' ListResourceServers (Maybe Natural)
lrsMaxResults = lens _lrsMaxResults (\s a -> s {_lrsMaxResults = a}) . mapping _Nat

-- | The user pool ID for the user pool.
lrsUserPoolId :: Lens' ListResourceServers Text
lrsUserPoolId = lens _lrsUserPoolId (\s a -> s {_lrsUserPoolId = a})

instance AWSPager ListResourceServers where
  page rq rs
    | stop (rs ^. lrsrrsNextToken) = Nothing
    | stop (rs ^. lrsrrsResourceServers) = Nothing
    | otherwise =
      Just $ rq & lrsNextToken .~ rs ^. lrsrrsNextToken

instance AWSRequest ListResourceServers where
  type
    Rs ListResourceServers =
      ListResourceServersResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          ListResourceServersResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "ResourceServers" .!@ mempty)
      )

instance Hashable ListResourceServers

instance NFData ListResourceServers

instance ToHeaders ListResourceServers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.ListResourceServers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListResourceServers where
  toJSON ListResourceServers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lrsNextToken,
            ("MaxResults" .=) <$> _lrsMaxResults,
            Just ("UserPoolId" .= _lrsUserPoolId)
          ]
      )

instance ToPath ListResourceServers where
  toPath = const "/"

instance ToQuery ListResourceServers where
  toQuery = const mempty

-- | /See:/ 'listResourceServersResponse' smart constructor.
data ListResourceServersResponse = ListResourceServersResponse'
  { _lrsrrsNextToken ::
      !(Maybe Text),
    _lrsrrsResponseStatus ::
      !Int,
    _lrsrrsResourceServers ::
      ![ResourceServerType]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListResourceServersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsrrsNextToken' - A pagination token.
--
-- * 'lrsrrsResponseStatus' - -- | The response status code.
--
-- * 'lrsrrsResourceServers' - The resource servers.
listResourceServersResponse ::
  -- | 'lrsrrsResponseStatus'
  Int ->
  ListResourceServersResponse
listResourceServersResponse pResponseStatus_ =
  ListResourceServersResponse'
    { _lrsrrsNextToken =
        Nothing,
      _lrsrrsResponseStatus = pResponseStatus_,
      _lrsrrsResourceServers = mempty
    }

-- | A pagination token.
lrsrrsNextToken :: Lens' ListResourceServersResponse (Maybe Text)
lrsrrsNextToken = lens _lrsrrsNextToken (\s a -> s {_lrsrrsNextToken = a})

-- | -- | The response status code.
lrsrrsResponseStatus :: Lens' ListResourceServersResponse Int
lrsrrsResponseStatus = lens _lrsrrsResponseStatus (\s a -> s {_lrsrrsResponseStatus = a})

-- | The resource servers.
lrsrrsResourceServers :: Lens' ListResourceServersResponse [ResourceServerType]
lrsrrsResourceServers = lens _lrsrrsResourceServers (\s a -> s {_lrsrrsResourceServers = a}) . _Coerce

instance NFData ListResourceServersResponse
