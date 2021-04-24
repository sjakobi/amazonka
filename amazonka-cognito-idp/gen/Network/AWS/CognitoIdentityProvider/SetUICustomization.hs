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
-- Module      : Network.AWS.CognitoIdentityProvider.SetUICustomization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the UI customization information for a user pool's built-in app UI.
--
--
-- You can specify app UI customization settings for a single client (with a specific @clientId@ ) or for all clients (by setting the @clientId@ to @ALL@ ). If you specify @ALL@ , the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the @ALL@ configuration.
module Network.AWS.CognitoIdentityProvider.SetUICustomization
  ( -- * Creating a Request
    setUICustomization,
    SetUICustomization,

    -- * Request Lenses
    suicClientId,
    suicImageFile,
    suicCSS,
    suicUserPoolId,

    -- * Destructuring the Response
    setUICustomizationResponse,
    SetUICustomizationResponse,

    -- * Response Lenses
    suicrrsResponseStatus,
    suicrrsUICustomization,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setUICustomization' smart constructor.
data SetUICustomization = SetUICustomization'
  { _suicClientId ::
      !(Maybe (Sensitive Text)),
    _suicImageFile :: !(Maybe Base64),
    _suicCSS :: !(Maybe Text),
    _suicUserPoolId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetUICustomization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suicClientId' - The client ID for the client app.
--
-- * 'suicImageFile' - The uploaded logo image for the UI customization.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'suicCSS' - The CSS values in the UI customization.
--
-- * 'suicUserPoolId' - The user pool ID for the user pool.
setUICustomization ::
  -- | 'suicUserPoolId'
  Text ->
  SetUICustomization
setUICustomization pUserPoolId_ =
  SetUICustomization'
    { _suicClientId = Nothing,
      _suicImageFile = Nothing,
      _suicCSS = Nothing,
      _suicUserPoolId = pUserPoolId_
    }

-- | The client ID for the client app.
suicClientId :: Lens' SetUICustomization (Maybe Text)
suicClientId = lens _suicClientId (\s a -> s {_suicClientId = a}) . mapping _Sensitive

-- | The uploaded logo image for the UI customization.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
suicImageFile :: Lens' SetUICustomization (Maybe ByteString)
suicImageFile = lens _suicImageFile (\s a -> s {_suicImageFile = a}) . mapping _Base64

-- | The CSS values in the UI customization.
suicCSS :: Lens' SetUICustomization (Maybe Text)
suicCSS = lens _suicCSS (\s a -> s {_suicCSS = a})

-- | The user pool ID for the user pool.
suicUserPoolId :: Lens' SetUICustomization Text
suicUserPoolId = lens _suicUserPoolId (\s a -> s {_suicUserPoolId = a})

instance AWSRequest SetUICustomization where
  type
    Rs SetUICustomization =
      SetUICustomizationResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          SetUICustomizationResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "UICustomization")
      )

instance Hashable SetUICustomization

instance NFData SetUICustomization

instance ToHeaders SetUICustomization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.SetUICustomization" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetUICustomization where
  toJSON SetUICustomization' {..} =
    object
      ( catMaybes
          [ ("ClientId" .=) <$> _suicClientId,
            ("ImageFile" .=) <$> _suicImageFile,
            ("CSS" .=) <$> _suicCSS,
            Just ("UserPoolId" .= _suicUserPoolId)
          ]
      )

instance ToPath SetUICustomization where
  toPath = const "/"

instance ToQuery SetUICustomization where
  toQuery = const mempty

-- | /See:/ 'setUICustomizationResponse' smart constructor.
data SetUICustomizationResponse = SetUICustomizationResponse'
  { _suicrrsResponseStatus ::
      !Int,
    _suicrrsUICustomization ::
      !UICustomizationType
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetUICustomizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suicrrsResponseStatus' - -- | The response status code.
--
-- * 'suicrrsUICustomization' - The UI customization information.
setUICustomizationResponse ::
  -- | 'suicrrsResponseStatus'
  Int ->
  -- | 'suicrrsUICustomization'
  UICustomizationType ->
  SetUICustomizationResponse
setUICustomizationResponse
  pResponseStatus_
  pUICustomization_ =
    SetUICustomizationResponse'
      { _suicrrsResponseStatus =
          pResponseStatus_,
        _suicrrsUICustomization = pUICustomization_
      }

-- | -- | The response status code.
suicrrsResponseStatus :: Lens' SetUICustomizationResponse Int
suicrrsResponseStatus = lens _suicrrsResponseStatus (\s a -> s {_suicrrsResponseStatus = a})

-- | The UI customization information.
suicrrsUICustomization :: Lens' SetUICustomizationResponse UICustomizationType
suicrrsUICustomization = lens _suicrrsUICustomization (\s a -> s {_suicrrsUICustomization = a})

instance NFData SetUICustomizationResponse
