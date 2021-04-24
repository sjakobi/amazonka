{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the APNs (Apple Push Notification service) channel for an application.
--
--
--
-- /See:/ 'apnsChannelResponse' smart constructor.
data APNSChannelResponse = APNSChannelResponse'
  { _acrLastModifiedDate ::
      !(Maybe Text),
    _acrApplicationId ::
      !(Maybe Text),
    _acrDefaultAuthenticationMethod ::
      !(Maybe Text),
    _acrHasCredential ::
      !(Maybe Bool),
    _acrHasTokenKey ::
      !(Maybe Bool),
    _acrId :: !(Maybe Text),
    _acrCreationDate ::
      !(Maybe Text),
    _acrEnabled :: !(Maybe Bool),
    _acrVersion :: !(Maybe Int),
    _acrIsArchived :: !(Maybe Bool),
    _acrLastModifiedBy ::
      !(Maybe Text),
    _acrPlatform :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APNSChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrLastModifiedDate' - The date and time when the APNs channel was last modified.
--
-- * 'acrApplicationId' - The unique identifier for the application that the APNs channel applies to.
--
-- * 'acrDefaultAuthenticationMethod' - The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.
--
-- * 'acrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'acrHasTokenKey' - Specifies whether the APNs channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
--
-- * 'acrId' - (Deprecated) An identifier for the APNs channel. This property is retained only for backward compatibility.
--
-- * 'acrCreationDate' - The date and time when the APNs channel was enabled.
--
-- * 'acrEnabled' - Specifies whether the APNs channel is enabled for the application.
--
-- * 'acrVersion' - The current version of the APNs channel.
--
-- * 'acrIsArchived' - Specifies whether the APNs channel is archived.
--
-- * 'acrLastModifiedBy' - The user who last modified the APNs channel.
--
-- * 'acrPlatform' - The type of messaging or notification platform for the channel. For the APNs channel, this value is APNS.
apnsChannelResponse ::
  -- | 'acrPlatform'
  Text ->
  APNSChannelResponse
apnsChannelResponse pPlatform_ =
  APNSChannelResponse'
    { _acrLastModifiedDate =
        Nothing,
      _acrApplicationId = Nothing,
      _acrDefaultAuthenticationMethod = Nothing,
      _acrHasCredential = Nothing,
      _acrHasTokenKey = Nothing,
      _acrId = Nothing,
      _acrCreationDate = Nothing,
      _acrEnabled = Nothing,
      _acrVersion = Nothing,
      _acrIsArchived = Nothing,
      _acrLastModifiedBy = Nothing,
      _acrPlatform = pPlatform_
    }

-- | The date and time when the APNs channel was last modified.
acrLastModifiedDate :: Lens' APNSChannelResponse (Maybe Text)
acrLastModifiedDate = lens _acrLastModifiedDate (\s a -> s {_acrLastModifiedDate = a})

-- | The unique identifier for the application that the APNs channel applies to.
acrApplicationId :: Lens' APNSChannelResponse (Maybe Text)
acrApplicationId = lens _acrApplicationId (\s a -> s {_acrApplicationId = a})

-- | The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.
acrDefaultAuthenticationMethod :: Lens' APNSChannelResponse (Maybe Text)
acrDefaultAuthenticationMethod = lens _acrDefaultAuthenticationMethod (\s a -> s {_acrDefaultAuthenticationMethod = a})

-- | (Not used) This property is retained only for backward compatibility.
acrHasCredential :: Lens' APNSChannelResponse (Maybe Bool)
acrHasCredential = lens _acrHasCredential (\s a -> s {_acrHasCredential = a})

-- | Specifies whether the APNs channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.
acrHasTokenKey :: Lens' APNSChannelResponse (Maybe Bool)
acrHasTokenKey = lens _acrHasTokenKey (\s a -> s {_acrHasTokenKey = a})

-- | (Deprecated) An identifier for the APNs channel. This property is retained only for backward compatibility.
acrId :: Lens' APNSChannelResponse (Maybe Text)
acrId = lens _acrId (\s a -> s {_acrId = a})

-- | The date and time when the APNs channel was enabled.
acrCreationDate :: Lens' APNSChannelResponse (Maybe Text)
acrCreationDate = lens _acrCreationDate (\s a -> s {_acrCreationDate = a})

-- | Specifies whether the APNs channel is enabled for the application.
acrEnabled :: Lens' APNSChannelResponse (Maybe Bool)
acrEnabled = lens _acrEnabled (\s a -> s {_acrEnabled = a})

-- | The current version of the APNs channel.
acrVersion :: Lens' APNSChannelResponse (Maybe Int)
acrVersion = lens _acrVersion (\s a -> s {_acrVersion = a})

-- | Specifies whether the APNs channel is archived.
acrIsArchived :: Lens' APNSChannelResponse (Maybe Bool)
acrIsArchived = lens _acrIsArchived (\s a -> s {_acrIsArchived = a})

-- | The user who last modified the APNs channel.
acrLastModifiedBy :: Lens' APNSChannelResponse (Maybe Text)
acrLastModifiedBy = lens _acrLastModifiedBy (\s a -> s {_acrLastModifiedBy = a})

-- | The type of messaging or notification platform for the channel. For the APNs channel, this value is APNS.
acrPlatform :: Lens' APNSChannelResponse Text
acrPlatform = lens _acrPlatform (\s a -> s {_acrPlatform = a})

instance FromJSON APNSChannelResponse where
  parseJSON =
    withObject
      "APNSChannelResponse"
      ( \x ->
          APNSChannelResponse'
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

instance Hashable APNSChannelResponse

instance NFData APNSChannelResponse
