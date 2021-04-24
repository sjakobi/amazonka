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
-- Module      : Network.AWS.CognitoIdentity.GetOpenIdToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by 'GetId' . You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.
--
--
-- The OpenID token is valid for 10 minutes.
--
-- This is a public API. You do not need any credentials to call this API.
module Network.AWS.CognitoIdentity.GetOpenIdToken
  ( -- * Creating a Request
    getOpenIdToken,
    GetOpenIdToken,

    -- * Request Lenses
    goitLogins,
    goitIdentityId,

    -- * Destructuring the Response
    getOpenIdTokenResponse,
    GetOpenIdTokenResponse,

    -- * Response Lenses
    goitrrsIdentityId,
    goitrrsToken,
    goitrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the GetOpenIdToken action.
--
--
--
-- /See:/ 'getOpenIdToken' smart constructor.
data GetOpenIdToken = GetOpenIdToken'
  { _goitLogins ::
      !(Maybe (Map Text Text)),
    _goitIdentityId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetOpenIdToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goitLogins' - A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access_token returned from the provider's authflow. For accounts.google.com, an Amazon Cognito user pool provider, or any other OpenID Connect provider, always include the @id_token@ .
--
-- * 'goitIdentityId' - A unique identifier in the format REGION:GUID.
getOpenIdToken ::
  -- | 'goitIdentityId'
  Text ->
  GetOpenIdToken
getOpenIdToken pIdentityId_ =
  GetOpenIdToken'
    { _goitLogins = Nothing,
      _goitIdentityId = pIdentityId_
    }

-- | A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access_token returned from the provider's authflow. For accounts.google.com, an Amazon Cognito user pool provider, or any other OpenID Connect provider, always include the @id_token@ .
goitLogins :: Lens' GetOpenIdToken (HashMap Text Text)
goitLogins = lens _goitLogins (\s a -> s {_goitLogins = a}) . _Default . _Map

-- | A unique identifier in the format REGION:GUID.
goitIdentityId :: Lens' GetOpenIdToken Text
goitIdentityId = lens _goitIdentityId (\s a -> s {_goitIdentityId = a})

instance AWSRequest GetOpenIdToken where
  type Rs GetOpenIdToken = GetOpenIdTokenResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          GetOpenIdTokenResponse'
            <$> (x .?> "IdentityId")
            <*> (x .?> "Token")
            <*> (pure (fromEnum s))
      )

instance Hashable GetOpenIdToken

instance NFData GetOpenIdToken

instance ToHeaders GetOpenIdToken where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.GetOpenIdToken" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetOpenIdToken where
  toJSON GetOpenIdToken' {..} =
    object
      ( catMaybes
          [ ("Logins" .=) <$> _goitLogins,
            Just ("IdentityId" .= _goitIdentityId)
          ]
      )

instance ToPath GetOpenIdToken where
  toPath = const "/"

instance ToQuery GetOpenIdToken where
  toQuery = const mempty

-- | Returned in response to a successful GetOpenIdToken request.
--
--
--
-- /See:/ 'getOpenIdTokenResponse' smart constructor.
data GetOpenIdTokenResponse = GetOpenIdTokenResponse'
  { _goitrrsIdentityId ::
      !(Maybe Text),
    _goitrrsToken ::
      !(Maybe Text),
    _goitrrsResponseStatus ::
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

-- | Creates a value of 'GetOpenIdTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goitrrsIdentityId' - A unique identifier in the format REGION:GUID. Note that the IdentityId returned may not match the one passed on input.
--
-- * 'goitrrsToken' - An OpenID token, valid for 10 minutes.
--
-- * 'goitrrsResponseStatus' - -- | The response status code.
getOpenIdTokenResponse ::
  -- | 'goitrrsResponseStatus'
  Int ->
  GetOpenIdTokenResponse
getOpenIdTokenResponse pResponseStatus_ =
  GetOpenIdTokenResponse'
    { _goitrrsIdentityId =
        Nothing,
      _goitrrsToken = Nothing,
      _goitrrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier in the format REGION:GUID. Note that the IdentityId returned may not match the one passed on input.
goitrrsIdentityId :: Lens' GetOpenIdTokenResponse (Maybe Text)
goitrrsIdentityId = lens _goitrrsIdentityId (\s a -> s {_goitrrsIdentityId = a})

-- | An OpenID token, valid for 10 minutes.
goitrrsToken :: Lens' GetOpenIdTokenResponse (Maybe Text)
goitrrsToken = lens _goitrrsToken (\s a -> s {_goitrrsToken = a})

-- | -- | The response status code.
goitrrsResponseStatus :: Lens' GetOpenIdTokenResponse Int
goitrrsResponseStatus = lens _goitrrsResponseStatus (\s a -> s {_goitrrsResponseStatus = a})

instance NFData GetOpenIdTokenResponse
