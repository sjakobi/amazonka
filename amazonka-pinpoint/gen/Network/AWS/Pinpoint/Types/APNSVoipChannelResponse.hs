{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSVoipChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.
--
--
--
-- /See:/ 'apnsVoipChannelResponse' smart constructor.
data APNSVoipChannelResponse = APNSVoipChannelResponse'
  { _apnsvcrLastModifiedDate ::
      !(Maybe Text),
    _apnsvcrApplicationId ::
      !(Maybe Text),
    _apnsvcrDefaultAuthenticationMethod ::
      !(Maybe Text),
    _apnsvcrHasCredential ::
      !(Maybe Bool),
    _apnsvcrHasTokenKey ::
      !(Maybe Bool),
    _apnsvcrId ::
      !(Maybe Text),
    _apnsvcrCreationDate ::
      !(Maybe Text),
    _apnsvcrEnabled ::
      !(Maybe Bool),
    _apnsvcrVersion ::
      !(Maybe Int),
    _apnsvcrIsArchived ::
      !(Maybe Bool),
    _apnsvcrLastModifiedBy ::
      !(Maybe Text),
    _apnsvcrPlatform ::
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

-- | Creates a value of 'APNSVoipChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apnsvcrLastModifiedDate' - The date and time when the APNs VoIP channel was last modified.
--
-- * 'apnsvcrApplicationId' - The unique identifier for the application that the APNs VoIP channel applies to.
--
-- * 'apnsvcrDefaultAuthenticationMethod' - The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.
--
-- * 'apnsvcrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'apnsvcrHasTokenKey' - Specifies whether the APNs VoIP channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
--
-- * 'apnsvcrId' - (Deprecated) An identifier for the APNs VoIP channel. This property is retained only for backward compatibility.
--
-- * 'apnsvcrCreationDate' - The date and time when the APNs VoIP channel was enabled.
--
-- * 'apnsvcrEnabled' - Specifies whether the APNs VoIP channel is enabled for the application.
--
-- * 'apnsvcrVersion' - The current version of the APNs VoIP channel.
--
-- * 'apnsvcrIsArchived' - Specifies whether the APNs VoIP channel is archived.
--
-- * 'apnsvcrLastModifiedBy' - The user who last modified the APNs VoIP channel.
--
-- * 'apnsvcrPlatform' - The type of messaging or notification platform for the channel. For the APNs VoIP channel, this value is APNS_VOIP.
apnsVoipChannelResponse ::
  -- | 'apnsvcrPlatform'
  Text ->
  APNSVoipChannelResponse
apnsVoipChannelResponse pPlatform_ =
  APNSVoipChannelResponse'
    { _apnsvcrLastModifiedDate =
        Nothing,
      _apnsvcrApplicationId = Nothing,
      _apnsvcrDefaultAuthenticationMethod = Nothing,
      _apnsvcrHasCredential = Nothing,
      _apnsvcrHasTokenKey = Nothing,
      _apnsvcrId = Nothing,
      _apnsvcrCreationDate = Nothing,
      _apnsvcrEnabled = Nothing,
      _apnsvcrVersion = Nothing,
      _apnsvcrIsArchived = Nothing,
      _apnsvcrLastModifiedBy = Nothing,
      _apnsvcrPlatform = pPlatform_
    }

-- | The date and time when the APNs VoIP channel was last modified.
apnsvcrLastModifiedDate :: Lens' APNSVoipChannelResponse (Maybe Text)
apnsvcrLastModifiedDate = lens _apnsvcrLastModifiedDate (\s a -> s {_apnsvcrLastModifiedDate = a})

-- | The unique identifier for the application that the APNs VoIP channel applies to.
apnsvcrApplicationId :: Lens' APNSVoipChannelResponse (Maybe Text)
apnsvcrApplicationId = lens _apnsvcrApplicationId (\s a -> s {_apnsvcrApplicationId = a})

-- | The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.
apnsvcrDefaultAuthenticationMethod :: Lens' APNSVoipChannelResponse (Maybe Text)
apnsvcrDefaultAuthenticationMethod = lens _apnsvcrDefaultAuthenticationMethod (\s a -> s {_apnsvcrDefaultAuthenticationMethod = a})

-- | (Not used) This property is retained only for backward compatibility.
apnsvcrHasCredential :: Lens' APNSVoipChannelResponse (Maybe Bool)
apnsvcrHasCredential = lens _apnsvcrHasCredential (\s a -> s {_apnsvcrHasCredential = a})

-- | Specifies whether the APNs VoIP channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
apnsvcrHasTokenKey :: Lens' APNSVoipChannelResponse (Maybe Bool)
apnsvcrHasTokenKey = lens _apnsvcrHasTokenKey (\s a -> s {_apnsvcrHasTokenKey = a})

-- | (Deprecated) An identifier for the APNs VoIP channel. This property is retained only for backward compatibility.
apnsvcrId :: Lens' APNSVoipChannelResponse (Maybe Text)
apnsvcrId = lens _apnsvcrId (\s a -> s {_apnsvcrId = a})

-- | The date and time when the APNs VoIP channel was enabled.
apnsvcrCreationDate :: Lens' APNSVoipChannelResponse (Maybe Text)
apnsvcrCreationDate = lens _apnsvcrCreationDate (\s a -> s {_apnsvcrCreationDate = a})

-- | Specifies whether the APNs VoIP channel is enabled for the application.
apnsvcrEnabled :: Lens' APNSVoipChannelResponse (Maybe Bool)
apnsvcrEnabled = lens _apnsvcrEnabled (\s a -> s {_apnsvcrEnabled = a})

-- | The current version of the APNs VoIP channel.
apnsvcrVersion :: Lens' APNSVoipChannelResponse (Maybe Int)
apnsvcrVersion = lens _apnsvcrVersion (\s a -> s {_apnsvcrVersion = a})

-- | Specifies whether the APNs VoIP channel is archived.
apnsvcrIsArchived :: Lens' APNSVoipChannelResponse (Maybe Bool)
apnsvcrIsArchived = lens _apnsvcrIsArchived (\s a -> s {_apnsvcrIsArchived = a})

-- | The user who last modified the APNs VoIP channel.
apnsvcrLastModifiedBy :: Lens' APNSVoipChannelResponse (Maybe Text)
apnsvcrLastModifiedBy = lens _apnsvcrLastModifiedBy (\s a -> s {_apnsvcrLastModifiedBy = a})

-- | The type of messaging or notification platform for the channel. For the APNs VoIP channel, this value is APNS_VOIP.
apnsvcrPlatform :: Lens' APNSVoipChannelResponse Text
apnsvcrPlatform = lens _apnsvcrPlatform (\s a -> s {_apnsvcrPlatform = a})

instance FromJSON APNSVoipChannelResponse where
  parseJSON =
    withObject
      "APNSVoipChannelResponse"
      ( \x ->
          APNSVoipChannelResponse'
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

instance Hashable APNSVoipChannelResponse

instance NFData APNSVoipChannelResponse
