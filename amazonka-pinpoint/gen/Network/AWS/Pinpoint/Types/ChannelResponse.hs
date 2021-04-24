{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the general settings and status of a channel for an application.
--
--
--
-- /See:/ 'channelResponse' smart constructor.
data ChannelResponse = ChannelResponse'
  { _cLastModifiedDate ::
      !(Maybe Text),
    _cApplicationId :: !(Maybe Text),
    _cHasCredential :: !(Maybe Bool),
    _cId :: !(Maybe Text),
    _cCreationDate :: !(Maybe Text),
    _cEnabled :: !(Maybe Bool),
    _cVersion :: !(Maybe Int),
    _cIsArchived :: !(Maybe Bool),
    _cLastModifiedBy :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cLastModifiedDate' - The date and time, in ISO 8601 format, when the channel was last modified.
--
-- * 'cApplicationId' - The unique identifier for the application.
--
-- * 'cHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'cId' - (Deprecated) An identifier for the channel. This property is retained only for backward compatibility.
--
-- * 'cCreationDate' - The date and time, in ISO 8601 format, when the channel was enabled.
--
-- * 'cEnabled' - Specifies whether the channel is enabled for the application.
--
-- * 'cVersion' - The current version of the channel.
--
-- * 'cIsArchived' - Specifies whether the channel is archived.
--
-- * 'cLastModifiedBy' - The user who last modified the channel.
channelResponse ::
  ChannelResponse
channelResponse =
  ChannelResponse'
    { _cLastModifiedDate = Nothing,
      _cApplicationId = Nothing,
      _cHasCredential = Nothing,
      _cId = Nothing,
      _cCreationDate = Nothing,
      _cEnabled = Nothing,
      _cVersion = Nothing,
      _cIsArchived = Nothing,
      _cLastModifiedBy = Nothing
    }

-- | The date and time, in ISO 8601 format, when the channel was last modified.
cLastModifiedDate :: Lens' ChannelResponse (Maybe Text)
cLastModifiedDate = lens _cLastModifiedDate (\s a -> s {_cLastModifiedDate = a})

-- | The unique identifier for the application.
cApplicationId :: Lens' ChannelResponse (Maybe Text)
cApplicationId = lens _cApplicationId (\s a -> s {_cApplicationId = a})

-- | (Not used) This property is retained only for backward compatibility.
cHasCredential :: Lens' ChannelResponse (Maybe Bool)
cHasCredential = lens _cHasCredential (\s a -> s {_cHasCredential = a})

-- | (Deprecated) An identifier for the channel. This property is retained only for backward compatibility.
cId :: Lens' ChannelResponse (Maybe Text)
cId = lens _cId (\s a -> s {_cId = a})

-- | The date and time, in ISO 8601 format, when the channel was enabled.
cCreationDate :: Lens' ChannelResponse (Maybe Text)
cCreationDate = lens _cCreationDate (\s a -> s {_cCreationDate = a})

-- | Specifies whether the channel is enabled for the application.
cEnabled :: Lens' ChannelResponse (Maybe Bool)
cEnabled = lens _cEnabled (\s a -> s {_cEnabled = a})

-- | The current version of the channel.
cVersion :: Lens' ChannelResponse (Maybe Int)
cVersion = lens _cVersion (\s a -> s {_cVersion = a})

-- | Specifies whether the channel is archived.
cIsArchived :: Lens' ChannelResponse (Maybe Bool)
cIsArchived = lens _cIsArchived (\s a -> s {_cIsArchived = a})

-- | The user who last modified the channel.
cLastModifiedBy :: Lens' ChannelResponse (Maybe Text)
cLastModifiedBy = lens _cLastModifiedBy (\s a -> s {_cLastModifiedBy = a})

instance FromJSON ChannelResponse where
  parseJSON =
    withObject
      "ChannelResponse"
      ( \x ->
          ChannelResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "HasCredential")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "Enabled")
            <*> (x .:? "Version")
            <*> (x .:? "IsArchived")
            <*> (x .:? "LastModifiedBy")
      )

instance Hashable ChannelResponse

instance NFData ChannelResponse
