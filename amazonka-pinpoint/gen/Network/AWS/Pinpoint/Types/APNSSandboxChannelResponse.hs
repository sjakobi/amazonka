{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.
--
--
--
-- /See:/ 'apnsSandboxChannelResponse' smart constructor.
data APNSSandboxChannelResponse = APNSSandboxChannelResponse'
  { _ascrLastModifiedDate ::
      !(Maybe Text),
    _ascrApplicationId ::
      !(Maybe Text),
    _ascrDefaultAuthenticationMethod ::
      !(Maybe Text),
    _ascrHasCredential ::
      !(Maybe Bool),
    _ascrHasTokenKey ::
      !(Maybe Bool),
    _ascrId ::
      !(Maybe Text),
    _ascrCreationDate ::
      !(Maybe Text),
    _ascrEnabled ::
      !(Maybe Bool),
    _ascrVersion ::
      !(Maybe Int),
    _ascrIsArchived ::
      !(Maybe Bool),
    _ascrLastModifiedBy ::
      !(Maybe Text),
    _ascrPlatform ::
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

-- | Creates a value of 'APNSSandboxChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascrLastModifiedDate' - The date and time when the APNs sandbox channel was last modified.
--
-- * 'ascrApplicationId' - The unique identifier for the application that the APNs sandbox channel applies to.
--
-- * 'ascrDefaultAuthenticationMethod' - The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.
--
-- * 'ascrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'ascrHasTokenKey' - Specifies whether the APNs sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
--
-- * 'ascrId' - (Deprecated) An identifier for the APNs sandbox channel. This property is retained only for backward compatibility.
--
-- * 'ascrCreationDate' - The date and time when the APNs sandbox channel was enabled.
--
-- * 'ascrEnabled' - Specifies whether the APNs sandbox channel is enabled for the application.
--
-- * 'ascrVersion' - The current version of the APNs sandbox channel.
--
-- * 'ascrIsArchived' - Specifies whether the APNs sandbox channel is archived.
--
-- * 'ascrLastModifiedBy' - The user who last modified the APNs sandbox channel.
--
-- * 'ascrPlatform' - The type of messaging or notification platform for the channel. For the APNs sandbox channel, this value is APNS_SANDBOX.
apnsSandboxChannelResponse ::
  -- | 'ascrPlatform'
  Text ->
  APNSSandboxChannelResponse
apnsSandboxChannelResponse pPlatform_ =
  APNSSandboxChannelResponse'
    { _ascrLastModifiedDate =
        Nothing,
      _ascrApplicationId = Nothing,
      _ascrDefaultAuthenticationMethod = Nothing,
      _ascrHasCredential = Nothing,
      _ascrHasTokenKey = Nothing,
      _ascrId = Nothing,
      _ascrCreationDate = Nothing,
      _ascrEnabled = Nothing,
      _ascrVersion = Nothing,
      _ascrIsArchived = Nothing,
      _ascrLastModifiedBy = Nothing,
      _ascrPlatform = pPlatform_
    }

-- | The date and time when the APNs sandbox channel was last modified.
ascrLastModifiedDate :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascrLastModifiedDate = lens _ascrLastModifiedDate (\s a -> s {_ascrLastModifiedDate = a})

-- | The unique identifier for the application that the APNs sandbox channel applies to.
ascrApplicationId :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascrApplicationId = lens _ascrApplicationId (\s a -> s {_ascrApplicationId = a})

-- | The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.
ascrDefaultAuthenticationMethod :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascrDefaultAuthenticationMethod = lens _ascrDefaultAuthenticationMethod (\s a -> s {_ascrDefaultAuthenticationMethod = a})

-- | (Not used) This property is retained only for backward compatibility.
ascrHasCredential :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascrHasCredential = lens _ascrHasCredential (\s a -> s {_ascrHasCredential = a})

-- | Specifies whether the APNs sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
ascrHasTokenKey :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascrHasTokenKey = lens _ascrHasTokenKey (\s a -> s {_ascrHasTokenKey = a})

-- | (Deprecated) An identifier for the APNs sandbox channel. This property is retained only for backward compatibility.
ascrId :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascrId = lens _ascrId (\s a -> s {_ascrId = a})

-- | The date and time when the APNs sandbox channel was enabled.
ascrCreationDate :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascrCreationDate = lens _ascrCreationDate (\s a -> s {_ascrCreationDate = a})

-- | Specifies whether the APNs sandbox channel is enabled for the application.
ascrEnabled :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascrEnabled = lens _ascrEnabled (\s a -> s {_ascrEnabled = a})

-- | The current version of the APNs sandbox channel.
ascrVersion :: Lens' APNSSandboxChannelResponse (Maybe Int)
ascrVersion = lens _ascrVersion (\s a -> s {_ascrVersion = a})

-- | Specifies whether the APNs sandbox channel is archived.
ascrIsArchived :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascrIsArchived = lens _ascrIsArchived (\s a -> s {_ascrIsArchived = a})

-- | The user who last modified the APNs sandbox channel.
ascrLastModifiedBy :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascrLastModifiedBy = lens _ascrLastModifiedBy (\s a -> s {_ascrLastModifiedBy = a})

-- | The type of messaging or notification platform for the channel. For the APNs sandbox channel, this value is APNS_SANDBOX.
ascrPlatform :: Lens' APNSSandboxChannelResponse Text
ascrPlatform = lens _ascrPlatform (\s a -> s {_ascrPlatform = a})

instance FromJSON APNSSandboxChannelResponse where
  parseJSON =
    withObject
      "APNSSandboxChannelResponse"
      ( \x ->
          APNSSandboxChannelResponse'
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

instance Hashable APNSSandboxChannelResponse

instance NFData APNSSandboxChannelResponse
