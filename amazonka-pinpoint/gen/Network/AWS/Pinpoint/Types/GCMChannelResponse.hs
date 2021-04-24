{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.GCMChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.GCMChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the GCM channel for an application. The GCM channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.
--
--
--
-- /See:/ 'gcmChannelResponse' smart constructor.
data GCMChannelResponse = GCMChannelResponse'
  { _gcmcrLastModifiedDate ::
      !(Maybe Text),
    _gcmcrApplicationId ::
      !(Maybe Text),
    _gcmcrHasCredential ::
      !(Maybe Bool),
    _gcmcrId :: !(Maybe Text),
    _gcmcrCreationDate ::
      !(Maybe Text),
    _gcmcrEnabled :: !(Maybe Bool),
    _gcmcrVersion :: !(Maybe Int),
    _gcmcrIsArchived :: !(Maybe Bool),
    _gcmcrLastModifiedBy ::
      !(Maybe Text),
    _gcmcrCredential :: !Text,
    _gcmcrPlatform :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GCMChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmcrLastModifiedDate' - The date and time when the GCM channel was last modified.
--
-- * 'gcmcrApplicationId' - The unique identifier for the application that the GCM channel applies to.
--
-- * 'gcmcrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'gcmcrId' - (Deprecated) An identifier for the GCM channel. This property is retained only for backward compatibility.
--
-- * 'gcmcrCreationDate' - The date and time when the GCM channel was enabled.
--
-- * 'gcmcrEnabled' - Specifies whether the GCM channel is enabled for the application.
--
-- * 'gcmcrVersion' - The current version of the GCM channel.
--
-- * 'gcmcrIsArchived' - Specifies whether the GCM channel is archived.
--
-- * 'gcmcrLastModifiedBy' - The user who last modified the GCM channel.
--
-- * 'gcmcrCredential' - The Web API Key, also referred to as an /API_KEY/ or /server key/ , that you received from Google to communicate with Google services.
--
-- * 'gcmcrPlatform' - The type of messaging or notification platform for the channel. For the GCM channel, this value is GCM.
gcmChannelResponse ::
  -- | 'gcmcrCredential'
  Text ->
  -- | 'gcmcrPlatform'
  Text ->
  GCMChannelResponse
gcmChannelResponse pCredential_ pPlatform_ =
  GCMChannelResponse'
    { _gcmcrLastModifiedDate =
        Nothing,
      _gcmcrApplicationId = Nothing,
      _gcmcrHasCredential = Nothing,
      _gcmcrId = Nothing,
      _gcmcrCreationDate = Nothing,
      _gcmcrEnabled = Nothing,
      _gcmcrVersion = Nothing,
      _gcmcrIsArchived = Nothing,
      _gcmcrLastModifiedBy = Nothing,
      _gcmcrCredential = pCredential_,
      _gcmcrPlatform = pPlatform_
    }

-- | The date and time when the GCM channel was last modified.
gcmcrLastModifiedDate :: Lens' GCMChannelResponse (Maybe Text)
gcmcrLastModifiedDate = lens _gcmcrLastModifiedDate (\s a -> s {_gcmcrLastModifiedDate = a})

-- | The unique identifier for the application that the GCM channel applies to.
gcmcrApplicationId :: Lens' GCMChannelResponse (Maybe Text)
gcmcrApplicationId = lens _gcmcrApplicationId (\s a -> s {_gcmcrApplicationId = a})

-- | (Not used) This property is retained only for backward compatibility.
gcmcrHasCredential :: Lens' GCMChannelResponse (Maybe Bool)
gcmcrHasCredential = lens _gcmcrHasCredential (\s a -> s {_gcmcrHasCredential = a})

-- | (Deprecated) An identifier for the GCM channel. This property is retained only for backward compatibility.
gcmcrId :: Lens' GCMChannelResponse (Maybe Text)
gcmcrId = lens _gcmcrId (\s a -> s {_gcmcrId = a})

-- | The date and time when the GCM channel was enabled.
gcmcrCreationDate :: Lens' GCMChannelResponse (Maybe Text)
gcmcrCreationDate = lens _gcmcrCreationDate (\s a -> s {_gcmcrCreationDate = a})

-- | Specifies whether the GCM channel is enabled for the application.
gcmcrEnabled :: Lens' GCMChannelResponse (Maybe Bool)
gcmcrEnabled = lens _gcmcrEnabled (\s a -> s {_gcmcrEnabled = a})

-- | The current version of the GCM channel.
gcmcrVersion :: Lens' GCMChannelResponse (Maybe Int)
gcmcrVersion = lens _gcmcrVersion (\s a -> s {_gcmcrVersion = a})

-- | Specifies whether the GCM channel is archived.
gcmcrIsArchived :: Lens' GCMChannelResponse (Maybe Bool)
gcmcrIsArchived = lens _gcmcrIsArchived (\s a -> s {_gcmcrIsArchived = a})

-- | The user who last modified the GCM channel.
gcmcrLastModifiedBy :: Lens' GCMChannelResponse (Maybe Text)
gcmcrLastModifiedBy = lens _gcmcrLastModifiedBy (\s a -> s {_gcmcrLastModifiedBy = a})

-- | The Web API Key, also referred to as an /API_KEY/ or /server key/ , that you received from Google to communicate with Google services.
gcmcrCredential :: Lens' GCMChannelResponse Text
gcmcrCredential = lens _gcmcrCredential (\s a -> s {_gcmcrCredential = a})

-- | The type of messaging or notification platform for the channel. For the GCM channel, this value is GCM.
gcmcrPlatform :: Lens' GCMChannelResponse Text
gcmcrPlatform = lens _gcmcrPlatform (\s a -> s {_gcmcrPlatform = a})

instance FromJSON GCMChannelResponse where
  parseJSON =
    withObject
      "GCMChannelResponse"
      ( \x ->
          GCMChannelResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "HasCredential")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "Enabled")
            <*> (x .:? "Version")
            <*> (x .:? "IsArchived")
            <*> (x .:? "LastModifiedBy")
            <*> (x .: "Credential")
            <*> (x .: "Platform")
      )

instance Hashable GCMChannelResponse

instance NFData GCMChannelResponse
