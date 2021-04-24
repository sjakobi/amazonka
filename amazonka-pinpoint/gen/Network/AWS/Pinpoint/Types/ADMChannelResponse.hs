{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ADMChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ADMChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the ADM (Amazon Device Messaging) channel for an application.
--
--
--
-- /See:/ 'aDMChannelResponse' smart constructor.
data ADMChannelResponse = ADMChannelResponse'
  { _admcrLastModifiedDate ::
      !(Maybe Text),
    _admcrApplicationId ::
      !(Maybe Text),
    _admcrHasCredential ::
      !(Maybe Bool),
    _admcrId :: !(Maybe Text),
    _admcrCreationDate ::
      !(Maybe Text),
    _admcrEnabled :: !(Maybe Bool),
    _admcrVersion :: !(Maybe Int),
    _admcrIsArchived :: !(Maybe Bool),
    _admcrLastModifiedBy ::
      !(Maybe Text),
    _admcrPlatform :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ADMChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admcrLastModifiedDate' - The date and time when the ADM channel was last modified.
--
-- * 'admcrApplicationId' - The unique identifier for the application that the ADM channel applies to.
--
-- * 'admcrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'admcrId' - (Deprecated) An identifier for the ADM channel. This property is retained only for backward compatibility.
--
-- * 'admcrCreationDate' - The date and time when the ADM channel was enabled.
--
-- * 'admcrEnabled' - Specifies whether the ADM channel is enabled for the application.
--
-- * 'admcrVersion' - The current version of the ADM channel.
--
-- * 'admcrIsArchived' - Specifies whether the ADM channel is archived.
--
-- * 'admcrLastModifiedBy' - The user who last modified the ADM channel.
--
-- * 'admcrPlatform' - The type of messaging or notification platform for the channel. For the ADM channel, this value is ADM.
aDMChannelResponse ::
  -- | 'admcrPlatform'
  Text ->
  ADMChannelResponse
aDMChannelResponse pPlatform_ =
  ADMChannelResponse'
    { _admcrLastModifiedDate =
        Nothing,
      _admcrApplicationId = Nothing,
      _admcrHasCredential = Nothing,
      _admcrId = Nothing,
      _admcrCreationDate = Nothing,
      _admcrEnabled = Nothing,
      _admcrVersion = Nothing,
      _admcrIsArchived = Nothing,
      _admcrLastModifiedBy = Nothing,
      _admcrPlatform = pPlatform_
    }

-- | The date and time when the ADM channel was last modified.
admcrLastModifiedDate :: Lens' ADMChannelResponse (Maybe Text)
admcrLastModifiedDate = lens _admcrLastModifiedDate (\s a -> s {_admcrLastModifiedDate = a})

-- | The unique identifier for the application that the ADM channel applies to.
admcrApplicationId :: Lens' ADMChannelResponse (Maybe Text)
admcrApplicationId = lens _admcrApplicationId (\s a -> s {_admcrApplicationId = a})

-- | (Not used) This property is retained only for backward compatibility.
admcrHasCredential :: Lens' ADMChannelResponse (Maybe Bool)
admcrHasCredential = lens _admcrHasCredential (\s a -> s {_admcrHasCredential = a})

-- | (Deprecated) An identifier for the ADM channel. This property is retained only for backward compatibility.
admcrId :: Lens' ADMChannelResponse (Maybe Text)
admcrId = lens _admcrId (\s a -> s {_admcrId = a})

-- | The date and time when the ADM channel was enabled.
admcrCreationDate :: Lens' ADMChannelResponse (Maybe Text)
admcrCreationDate = lens _admcrCreationDate (\s a -> s {_admcrCreationDate = a})

-- | Specifies whether the ADM channel is enabled for the application.
admcrEnabled :: Lens' ADMChannelResponse (Maybe Bool)
admcrEnabled = lens _admcrEnabled (\s a -> s {_admcrEnabled = a})

-- | The current version of the ADM channel.
admcrVersion :: Lens' ADMChannelResponse (Maybe Int)
admcrVersion = lens _admcrVersion (\s a -> s {_admcrVersion = a})

-- | Specifies whether the ADM channel is archived.
admcrIsArchived :: Lens' ADMChannelResponse (Maybe Bool)
admcrIsArchived = lens _admcrIsArchived (\s a -> s {_admcrIsArchived = a})

-- | The user who last modified the ADM channel.
admcrLastModifiedBy :: Lens' ADMChannelResponse (Maybe Text)
admcrLastModifiedBy = lens _admcrLastModifiedBy (\s a -> s {_admcrLastModifiedBy = a})

-- | The type of messaging or notification platform for the channel. For the ADM channel, this value is ADM.
admcrPlatform :: Lens' ADMChannelResponse Text
admcrPlatform = lens _admcrPlatform (\s a -> s {_admcrPlatform = a})

instance FromJSON ADMChannelResponse where
  parseJSON =
    withObject
      "ADMChannelResponse"
      ( \x ->
          ADMChannelResponse'
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

instance Hashable ADMChannelResponse

instance NFData ADMChannelResponse
