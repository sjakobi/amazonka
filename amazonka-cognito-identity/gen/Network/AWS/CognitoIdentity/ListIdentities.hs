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
-- Module      : Network.AWS.CognitoIdentity.ListIdentities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the identities in an identity pool.
--
--
-- You must use AWS Developer credentials to call this API.
module Network.AWS.CognitoIdentity.ListIdentities
  ( -- * Creating a Request
    listIdentities,
    ListIdentities,

    -- * Request Lenses
    liNextToken,
    liHideDisabled,
    liIdentityPoolId,
    liMaxResults,

    -- * Destructuring the Response
    listIdentitiesResponse,
    ListIdentitiesResponse,

    -- * Response Lenses
    lirrsIdentityPoolId,
    lirrsNextToken,
    lirrsIdentities,
    lirrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the ListIdentities action.
--
--
--
-- /See:/ 'listIdentities' smart constructor.
data ListIdentities = ListIdentities'
  { _liNextToken ::
      !(Maybe Text),
    _liHideDisabled :: !(Maybe Bool),
    _liIdentityPoolId :: !Text,
    _liMaxResults :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIdentities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - A pagination token.
--
-- * 'liHideDisabled' - An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response.
--
-- * 'liIdentityPoolId' - An identity pool ID in the format REGION:GUID.
--
-- * 'liMaxResults' - The maximum number of identities to return.
listIdentities ::
  -- | 'liIdentityPoolId'
  Text ->
  -- | 'liMaxResults'
  Natural ->
  ListIdentities
listIdentities pIdentityPoolId_ pMaxResults_ =
  ListIdentities'
    { _liNextToken = Nothing,
      _liHideDisabled = Nothing,
      _liIdentityPoolId = pIdentityPoolId_,
      _liMaxResults = _Nat # pMaxResults_
    }

-- | A pagination token.
liNextToken :: Lens' ListIdentities (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response.
liHideDisabled :: Lens' ListIdentities (Maybe Bool)
liHideDisabled = lens _liHideDisabled (\s a -> s {_liHideDisabled = a})

-- | An identity pool ID in the format REGION:GUID.
liIdentityPoolId :: Lens' ListIdentities Text
liIdentityPoolId = lens _liIdentityPoolId (\s a -> s {_liIdentityPoolId = a})

-- | The maximum number of identities to return.
liMaxResults :: Lens' ListIdentities Natural
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . _Nat

instance AWSRequest ListIdentities where
  type Rs ListIdentities = ListIdentitiesResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          ListIdentitiesResponse'
            <$> (x .?> "IdentityPoolId")
            <*> (x .?> "NextToken")
            <*> (x .?> "Identities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListIdentities

instance NFData ListIdentities

instance ToHeaders ListIdentities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.ListIdentities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListIdentities where
  toJSON ListIdentities' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _liNextToken,
            ("HideDisabled" .=) <$> _liHideDisabled,
            Just ("IdentityPoolId" .= _liIdentityPoolId),
            Just ("MaxResults" .= _liMaxResults)
          ]
      )

instance ToPath ListIdentities where
  toPath = const "/"

instance ToQuery ListIdentities where
  toQuery = const mempty

-- | The response to a ListIdentities request.
--
--
--
-- /See:/ 'listIdentitiesResponse' smart constructor.
data ListIdentitiesResponse = ListIdentitiesResponse'
  { _lirrsIdentityPoolId ::
      !(Maybe Text),
    _lirrsNextToken ::
      !(Maybe Text),
    _lirrsIdentities ::
      !( Maybe
           [IdentityDescription]
       ),
    _lirrsResponseStatus ::
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

-- | Creates a value of 'ListIdentitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsIdentityPoolId' - An identity pool ID in the format REGION:GUID.
--
-- * 'lirrsNextToken' - A pagination token.
--
-- * 'lirrsIdentities' - An object containing a set of identities and associated mappings.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listIdentitiesResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListIdentitiesResponse
listIdentitiesResponse pResponseStatus_ =
  ListIdentitiesResponse'
    { _lirrsIdentityPoolId =
        Nothing,
      _lirrsNextToken = Nothing,
      _lirrsIdentities = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | An identity pool ID in the format REGION:GUID.
lirrsIdentityPoolId :: Lens' ListIdentitiesResponse (Maybe Text)
lirrsIdentityPoolId = lens _lirrsIdentityPoolId (\s a -> s {_lirrsIdentityPoolId = a})

-- | A pagination token.
lirrsNextToken :: Lens' ListIdentitiesResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | An object containing a set of identities and associated mappings.
lirrsIdentities :: Lens' ListIdentitiesResponse [IdentityDescription]
lirrsIdentities = lens _lirrsIdentities (\s a -> s {_lirrsIdentities = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListIdentitiesResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListIdentitiesResponse
