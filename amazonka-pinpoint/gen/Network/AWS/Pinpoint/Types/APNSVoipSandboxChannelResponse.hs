{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.
--
--
--
-- /See:/ 'apnsVoipSandboxChannelResponse' smart constructor.
data APNSVoipSandboxChannelResponse = APNSVoipSandboxChannelResponse'
  { _apnsvscrLastModifiedDate ::
      !( Maybe
           Text
       ),
    _apnsvscrApplicationId ::
      !( Maybe
           Text
       ),
    _apnsvscrDefaultAuthenticationMethod ::
      !( Maybe
           Text
       ),
    _apnsvscrHasCredential ::
      !( Maybe
           Bool
       ),
    _apnsvscrHasTokenKey ::
      !( Maybe
           Bool
       ),
    _apnsvscrId ::
      !( Maybe
           Text
       ),
    _apnsvscrCreationDate ::
      !( Maybe
           Text
       ),
    _apnsvscrEnabled ::
      !( Maybe
           Bool
       ),
    _apnsvscrVersion ::
      !( Maybe
           Int
       ),
    _apnsvscrIsArchived ::
      !( Maybe
           Bool
       ),
    _apnsvscrLastModifiedBy ::
      !( Maybe
           Text
       ),
    _apnsvscrPlatform ::
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

-- | Creates a value of 'APNSVoipSandboxChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apnsvscrLastModifiedDate' - The date and time when the APNs VoIP sandbox channel was last modified.
--
-- * 'apnsvscrApplicationId' - The unique identifier for the application that the APNs VoIP sandbox channel applies to.
--
-- * 'apnsvscrDefaultAuthenticationMethod' - The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.
--
-- * 'apnsvscrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'apnsvscrHasTokenKey' - Specifies whether the APNs VoIP sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
--
-- * 'apnsvscrId' - (Deprecated) An identifier for the APNs VoIP sandbox channel. This property is retained only for backward compatibility.
--
-- * 'apnsvscrCreationDate' - The date and time when the APNs VoIP sandbox channel was enabled.
--
-- * 'apnsvscrEnabled' - Specifies whether the APNs VoIP sandbox channel is enabled for the application.
--
-- * 'apnsvscrVersion' - The current version of the APNs VoIP sandbox channel.
--
-- * 'apnsvscrIsArchived' - Specifies whether the APNs VoIP sandbox channel is archived.
--
-- * 'apnsvscrLastModifiedBy' - The user who last modified the APNs VoIP sandbox channel.
--
-- * 'apnsvscrPlatform' - The type of messaging or notification platform for the channel. For the APNs VoIP sandbox channel, this value is APNS_VOIP_SANDBOX.
apnsVoipSandboxChannelResponse ::
  -- | 'apnsvscrPlatform'
  Text ->
  APNSVoipSandboxChannelResponse
apnsVoipSandboxChannelResponse pPlatform_ =
  APNSVoipSandboxChannelResponse'
    { _apnsvscrLastModifiedDate =
        Nothing,
      _apnsvscrApplicationId = Nothing,
      _apnsvscrDefaultAuthenticationMethod =
        Nothing,
      _apnsvscrHasCredential = Nothing,
      _apnsvscrHasTokenKey = Nothing,
      _apnsvscrId = Nothing,
      _apnsvscrCreationDate = Nothing,
      _apnsvscrEnabled = Nothing,
      _apnsvscrVersion = Nothing,
      _apnsvscrIsArchived = Nothing,
      _apnsvscrLastModifiedBy = Nothing,
      _apnsvscrPlatform = pPlatform_
    }

-- | The date and time when the APNs VoIP sandbox channel was last modified.
apnsvscrLastModifiedDate :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
apnsvscrLastModifiedDate = lens _apnsvscrLastModifiedDate (\s a -> s {_apnsvscrLastModifiedDate = a})

-- | The unique identifier for the application that the APNs VoIP sandbox channel applies to.
apnsvscrApplicationId :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
apnsvscrApplicationId = lens _apnsvscrApplicationId (\s a -> s {_apnsvscrApplicationId = a})

-- | The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.
apnsvscrDefaultAuthenticationMethod :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
apnsvscrDefaultAuthenticationMethod = lens _apnsvscrDefaultAuthenticationMethod (\s a -> s {_apnsvscrDefaultAuthenticationMethod = a})

-- | (Not used) This property is retained only for backward compatibility.
apnsvscrHasCredential :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
apnsvscrHasCredential = lens _apnsvscrHasCredential (\s a -> s {_apnsvscrHasCredential = a})

-- | Specifies whether the APNs VoIP sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
apnsvscrHasTokenKey :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
apnsvscrHasTokenKey = lens _apnsvscrHasTokenKey (\s a -> s {_apnsvscrHasTokenKey = a})

-- | (Deprecated) An identifier for the APNs VoIP sandbox channel. This property is retained only for backward compatibility.
apnsvscrId :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
apnsvscrId = lens _apnsvscrId (\s a -> s {_apnsvscrId = a})

-- | The date and time when the APNs VoIP sandbox channel was enabled.
apnsvscrCreationDate :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
apnsvscrCreationDate = lens _apnsvscrCreationDate (\s a -> s {_apnsvscrCreationDate = a})

-- | Specifies whether the APNs VoIP sandbox channel is enabled for the application.
apnsvscrEnabled :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
apnsvscrEnabled = lens _apnsvscrEnabled (\s a -> s {_apnsvscrEnabled = a})

-- | The current version of the APNs VoIP sandbox channel.
apnsvscrVersion :: Lens' APNSVoipSandboxChannelResponse (Maybe Int)
apnsvscrVersion = lens _apnsvscrVersion (\s a -> s {_apnsvscrVersion = a})

-- | Specifies whether the APNs VoIP sandbox channel is archived.
apnsvscrIsArchived :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
apnsvscrIsArchived = lens _apnsvscrIsArchived (\s a -> s {_apnsvscrIsArchived = a})

-- | The user who last modified the APNs VoIP sandbox channel.
apnsvscrLastModifiedBy :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
apnsvscrLastModifiedBy = lens _apnsvscrLastModifiedBy (\s a -> s {_apnsvscrLastModifiedBy = a})

-- | The type of messaging or notification platform for the channel. For the APNs VoIP sandbox channel, this value is APNS_VOIP_SANDBOX.
apnsvscrPlatform :: Lens' APNSVoipSandboxChannelResponse Text
apnsvscrPlatform = lens _apnsvscrPlatform (\s a -> s {_apnsvscrPlatform = a})

instance FromJSON APNSVoipSandboxChannelResponse where
  parseJSON =
    withObject
      "APNSVoipSandboxChannelResponse"
      ( \x ->
          APNSVoipSandboxChannelResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "DefaultAuthenticationMethod")
            <*> (x .:? "HasCredential")
            <*> (x .:? "HasTokenKey")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "Enabled")
            <*> (x .:? "Version")
            <*> (x .:? "IsArchived")
            <*> (x .:? "LastModifiedBy")
            <*> (x .: "Platform")
      )

instance Hashable APNSVoipSandboxChannelResponse

instance NFData APNSVoipSandboxChannelResponse
