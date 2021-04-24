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
-- Module      : Network.AWS.CognitoIdentityProvider.VerifySoftwareToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.
module Network.AWS.CognitoIdentityProvider.VerifySoftwareToken
  ( -- * Creating a Request
    verifySoftwareToken,
    VerifySoftwareToken,

    -- * Request Lenses
    vstFriendlyDeviceName,
    vstAccessToken,
    vstSession,
    vstUserCode,

    -- * Destructuring the Response
    verifySoftwareTokenResponse,
    VerifySoftwareTokenResponse,

    -- * Response Lenses
    vstrrsStatus,
    vstrrsSession,
    vstrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'verifySoftwareToken' smart constructor.
data VerifySoftwareToken = VerifySoftwareToken'
  { _vstFriendlyDeviceName ::
      !(Maybe Text),
    _vstAccessToken ::
      !(Maybe (Sensitive Text)),
    _vstSession :: !(Maybe Text),
    _vstUserCode :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'VerifySoftwareToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vstFriendlyDeviceName' - The friendly device name.
--
-- * 'vstAccessToken' - The access token.
--
-- * 'vstSession' - The session which should be passed both ways in challenge-response calls to the service.
--
-- * 'vstUserCode' - The one time password computed using the secret code returned by <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html AssociateSoftwareToken"> .
verifySoftwareToken ::
  -- | 'vstUserCode'
  Text ->
  VerifySoftwareToken
verifySoftwareToken pUserCode_ =
  VerifySoftwareToken'
    { _vstFriendlyDeviceName =
        Nothing,
      _vstAccessToken = Nothing,
      _vstSession = Nothing,
      _vstUserCode = pUserCode_
    }

-- | The friendly device name.
vstFriendlyDeviceName :: Lens' VerifySoftwareToken (Maybe Text)
vstFriendlyDeviceName = lens _vstFriendlyDeviceName (\s a -> s {_vstFriendlyDeviceName = a})

-- | The access token.
vstAccessToken :: Lens' VerifySoftwareToken (Maybe Text)
vstAccessToken = lens _vstAccessToken (\s a -> s {_vstAccessToken = a}) . mapping _Sensitive

-- | The session which should be passed both ways in challenge-response calls to the service.
vstSession :: Lens' VerifySoftwareToken (Maybe Text)
vstSession = lens _vstSession (\s a -> s {_vstSession = a})

-- | The one time password computed using the secret code returned by <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html AssociateSoftwareToken"> .
vstUserCode :: Lens' VerifySoftwareToken Text
vstUserCode = lens _vstUserCode (\s a -> s {_vstUserCode = a})

instance AWSRequest VerifySoftwareToken where
  type
    Rs VerifySoftwareToken =
      VerifySoftwareTokenResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          VerifySoftwareTokenResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Session")
            <*> (pure (fromEnum s))
      )

instance Hashable VerifySoftwareToken

instance NFData VerifySoftwareToken

instance ToHeaders VerifySoftwareToken where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.VerifySoftwareToken" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON VerifySoftwareToken where
  toJSON VerifySoftwareToken' {..} =
    object
      ( catMaybes
          [ ("FriendlyDeviceName" .=)
              <$> _vstFriendlyDeviceName,
            ("AccessToken" .=) <$> _vstAccessToken,
            ("Session" .=) <$> _vstSession,
            Just ("UserCode" .= _vstUserCode)
          ]
      )

instance ToPath VerifySoftwareToken where
  toPath = const "/"

instance ToQuery VerifySoftwareToken where
  toQuery = const mempty

-- | /See:/ 'verifySoftwareTokenResponse' smart constructor.
data VerifySoftwareTokenResponse = VerifySoftwareTokenResponse'
  { _vstrrsStatus ::
      !( Maybe
           VerifySoftwareTokenResponseType
       ),
    _vstrrsSession ::
      !(Maybe Text),
    _vstrrsResponseStatus ::
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

-- | Creates a value of 'VerifySoftwareTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vstrrsStatus' - The status of the verify software token.
--
-- * 'vstrrsSession' - The session which should be passed both ways in challenge-response calls to the service.
--
-- * 'vstrrsResponseStatus' - -- | The response status code.
verifySoftwareTokenResponse ::
  -- | 'vstrrsResponseStatus'
  Int ->
  VerifySoftwareTokenResponse
verifySoftwareTokenResponse pResponseStatus_ =
  VerifySoftwareTokenResponse'
    { _vstrrsStatus =
        Nothing,
      _vstrrsSession = Nothing,
      _vstrrsResponseStatus = pResponseStatus_
    }

-- | The status of the verify software token.
vstrrsStatus :: Lens' VerifySoftwareTokenResponse (Maybe VerifySoftwareTokenResponseType)
vstrrsStatus = lens _vstrrsStatus (\s a -> s {_vstrrsStatus = a})

-- | The session which should be passed both ways in challenge-response calls to the service.
vstrrsSession :: Lens' VerifySoftwareTokenResponse (Maybe Text)
vstrrsSession = lens _vstrrsSession (\s a -> s {_vstrrsSession = a})

-- | -- | The response status code.
vstrrsResponseStatus :: Lens' VerifySoftwareTokenResponse Int
vstrrsResponseStatus = lens _vstrrsResponseStatus (\s a -> s {_vstrrsResponseStatus = a})

instance NFData VerifySoftwareTokenResponse
