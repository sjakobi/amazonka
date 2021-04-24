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
-- Module      : Network.AWS.CognitoIdentityProvider.ListIdentityProviders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about all identity providers for a user pool.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.ListIdentityProviders
  ( -- * Creating a Request
    listIdentityProviders,
    ListIdentityProviders,

    -- * Request Lenses
    lipNextToken,
    lipMaxResults,
    lipUserPoolId,

    -- * Destructuring the Response
    listIdentityProvidersResponse,
    ListIdentityProvidersResponse,

    -- * Response Lenses
    liprrsNextToken,
    liprrsResponseStatus,
    liprrsProviders,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listIdentityProviders' smart constructor.
data ListIdentityProviders = ListIdentityProviders'
  { _lipNextToken ::
      !(Maybe Text),
    _lipMaxResults ::
      !(Maybe Nat),
    _lipUserPoolId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListIdentityProviders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipNextToken' - A pagination token.
--
-- * 'lipMaxResults' - The maximum number of identity providers to return.
--
-- * 'lipUserPoolId' - The user pool ID.
listIdentityProviders ::
  -- | 'lipUserPoolId'
  Text ->
  ListIdentityProviders
listIdentityProviders pUserPoolId_ =
  ListIdentityProviders'
    { _lipNextToken = Nothing,
      _lipMaxResults = Nothing,
      _lipUserPoolId = pUserPoolId_
    }

-- | A pagination token.
lipNextToken :: Lens' ListIdentityProviders (Maybe Text)
lipNextToken = lens _lipNextToken (\s a -> s {_lipNextToken = a})

-- | The maximum number of identity providers to return.
lipMaxResults :: Lens' ListIdentityProviders (Maybe Natural)
lipMaxResults = lens _lipMaxResults (\s a -> s {_lipMaxResults = a}) . mapping _Nat

-- | The user pool ID.
lipUserPoolId :: Lens' ListIdentityProviders Text
lipUserPoolId = lens _lipUserPoolId (\s a -> s {_lipUserPoolId = a})

instance AWSPager ListIdentityProviders where
  page rq rs
    | stop (rs ^. liprrsNextToken) = Nothing
    | stop (rs ^. liprrsProviders) = Nothing
    | otherwise =
      Just $ rq & lipNextToken .~ rs ^. liprrsNextToken

instance AWSRequest ListIdentityProviders where
  type
    Rs ListIdentityProviders =
      ListIdentityProvidersResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          ListIdentityProvidersResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Providers" .!@ mempty)
      )

instance Hashable ListIdentityProviders

instance NFData ListIdentityProviders

instance ToHeaders ListIdentityProviders where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.ListIdentityProviders" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListIdentityProviders where
  toJSON ListIdentityProviders' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lipNextToken,
            ("MaxResults" .=) <$> _lipMaxResults,
            Just ("UserPoolId" .= _lipUserPoolId)
          ]
      )

instance ToPath ListIdentityProviders where
  toPath = const "/"

instance ToQuery ListIdentityProviders where
  toQuery = const mempty

-- | /See:/ 'listIdentityProvidersResponse' smart constructor.
data ListIdentityProvidersResponse = ListIdentityProvidersResponse'
  { _liprrsNextToken ::
      !( Maybe
           Text
       ),
    _liprrsResponseStatus ::
      !Int,
    _liprrsProviders ::
      ![ProviderDescription]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListIdentityProvidersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liprrsNextToken' - A pagination token.
--
-- * 'liprrsResponseStatus' - -- | The response status code.
--
-- * 'liprrsProviders' - A list of identity provider objects.
listIdentityProvidersResponse ::
  -- | 'liprrsResponseStatus'
  Int ->
  ListIdentityProvidersResponse
listIdentityProvidersResponse pResponseStatus_ =
  ListIdentityProvidersResponse'
    { _liprrsNextToken =
        Nothing,
      _liprrsResponseStatus = pResponseStatus_,
      _liprrsProviders = mempty
    }

-- | A pagination token.
liprrsNextToken :: Lens' ListIdentityProvidersResponse (Maybe Text)
liprrsNextToken = lens _liprrsNextToken (\s a -> s {_liprrsNextToken = a})

-- | -- | The response status code.
liprrsResponseStatus :: Lens' ListIdentityProvidersResponse Int
liprrsResponseStatus = lens _liprrsResponseStatus (\s a -> s {_liprrsResponseStatus = a})

-- | A list of identity provider objects.
liprrsProviders :: Lens' ListIdentityProvidersResponse [ProviderDescription]
liprrsProviders = lens _liprrsProviders (\s a -> s {_liprrsProviders = a}) . _Coerce

instance NFData ListIdentityProvidersResponse
