{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.VoiceChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.VoiceChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the voice channel for an application.
--
--
--
-- /See:/ 'voiceChannelResponse' smart constructor.
data VoiceChannelResponse = VoiceChannelResponse'
  { _vcrLastModifiedDate ::
      !(Maybe Text),
    _vcrApplicationId ::
      !(Maybe Text),
    _vcrHasCredential ::
      !(Maybe Bool),
    _vcrId :: !(Maybe Text),
    _vcrCreationDate ::
      !(Maybe Text),
    _vcrEnabled :: !(Maybe Bool),
    _vcrVersion :: !(Maybe Int),
    _vcrIsArchived ::
      !(Maybe Bool),
    _vcrLastModifiedBy ::
      !(Maybe Text),
    _vcrPlatform :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VoiceChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcrLastModifiedDate' - The date and time, in ISO 8601 format, when the voice channel was last modified.
--
-- * 'vcrApplicationId' - The unique identifier for the application that the voice channel applies to.
--
-- * 'vcrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'vcrId' - (Deprecated) An identifier for the voice channel. This property is retained only for backward compatibility.
--
-- * 'vcrCreationDate' - The date and time, in ISO 8601 format, when the voice channel was enabled.
--
-- * 'vcrEnabled' - Specifies whether the voice channel is enabled for the application.
--
-- * 'vcrVersion' - The current version of the voice channel.
--
-- * 'vcrIsArchived' - Specifies whether the voice channel is archived.
--
-- * 'vcrLastModifiedBy' - The user who last modified the voice channel.
--
-- * 'vcrPlatform' - The type of messaging or notification platform for the channel. For the voice channel, this value is VOICE.
voiceChannelResponse ::
  -- | 'vcrPlatform'
  Text ->
  VoiceChannelResponse
voiceChannelResponse pPlatform_ =
  VoiceChannelResponse'
    { _vcrLastModifiedDate =
        Nothing,
      _vcrApplicationId = Nothing,
      _vcrHasCredential = Nothing,
      _vcrId = Nothing,
      _vcrCreationDate = Nothing,
      _vcrEnabled = Nothing,
      _vcrVersion = Nothing,
      _vcrIsArchived = Nothing,
      _vcrLastModifiedBy = Nothing,
      _vcrPlatform = pPlatform_
    }

-- | The date and time, in ISO 8601 format, when the voice channel was last modified.
vcrLastModifiedDate :: Lens' VoiceChannelResponse (Maybe Text)
vcrLastModifiedDate = lens _vcrLastModifiedDate (\s a -> s {_vcrLastModifiedDate = a})

-- | The unique identifier for the application that the voice channel applies to.
vcrApplicationId :: Lens' VoiceChannelResponse (Maybe Text)
vcrApplicationId = lens _vcrApplicationId (\s a -> s {_vcrApplicationId = a})

-- | (Not used) This property is retained only for backward compatibility.
vcrHasCredential :: Lens' VoiceChannelResponse (Maybe Bool)
vcrHasCredential = lens _vcrHasCredential (\s a -> s {_vcrHasCredential = a})

-- | (Deprecated) An identifier for the voice channel. This property is retained only for backward compatibility.
vcrId :: Lens' VoiceChannelResponse (Maybe Text)
vcrId = lens _vcrId (\s a -> s {_vcrId = a})

-- | The date and time, in ISO 8601 format, when the voice channel was enabled.
vcrCreationDate :: Lens' VoiceChannelResponse (Maybe Text)
vcrCreationDate = lens _vcrCreationDate (\s a -> s {_vcrCreationDate = a})

-- | Specifies whether the voice channel is enabled for the application.
vcrEnabled :: Lens' VoiceChannelResponse (Maybe Bool)
vcrEnabled = lens _vcrEnabled (\s a -> s {_vcrEnabled = a})

-- | The current version of the voice channel.
vcrVersion :: Lens' VoiceChannelResponse (Maybe Int)
vcrVersion = lens _vcrVersion (\s a -> s {_vcrVersion = a})

-- | Specifies whether the voice channel is archived.
vcrIsArchived :: Lens' VoiceChannelResponse (Maybe Bool)
vcrIsArchived = lens _vcrIsArchived (\s a -> s {_vcrIsArchived = a})

-- | The user who last modified the voice channel.
vcrLastModifiedBy :: Lens' VoiceChannelResponse (Maybe Text)
vcrLastModifiedBy = lens _vcrLastModifiedBy (\s a -> s {_vcrLastModifiedBy = a})

-- | The type of messaging or notification platform for the channel. For the voice channel, this value is VOICE.
vcrPlatform :: Lens' VoiceChannelResponse Text
vcrPlatform = lens _vcrPlatform (\s a -> s {_vcrPlatform = a})

instance FromJSON VoiceChannelResponse where
  parseJSON =
    withObject
      "VoiceChannelResponse"
      ( \x ->
          VoiceChannelResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "HasCredential")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "Enabled")
            <*> (x .:? "Version")
            <*> (x .:? "IsArchived")
            <*> (x .:? "LastModifiedBy")
            <*> (x .: "Platform")
      )

instance Hashable VoiceChannelResponse

instance NFData VoiceChannelResponse
