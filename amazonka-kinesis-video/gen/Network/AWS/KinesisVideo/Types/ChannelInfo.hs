{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.ChannelInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.ChannelInfo where

import Network.AWS.KinesisVideo.Types.ChannelType
import Network.AWS.KinesisVideo.Types.SingleMasterConfiguration
import Network.AWS.KinesisVideo.Types.StreamStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure that encapsulates a signaling channel's metadata and properties.
--
--
--
-- /See:/ 'channelInfo' smart constructor.
data ChannelInfo = ChannelInfo'
  { _ciChannelName ::
      !(Maybe Text),
    _ciCreationTime :: !(Maybe POSIX),
    _ciSingleMasterConfiguration ::
      !(Maybe SingleMasterConfiguration),
    _ciChannelType :: !(Maybe ChannelType),
    _ciVersion :: !(Maybe Text),
    _ciChannelStatus :: !(Maybe StreamStatus),
    _ciChannelARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChannelInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciChannelName' - The name of the signaling channel.
--
-- * 'ciCreationTime' - The time at which the signaling channel was created.
--
-- * 'ciSingleMasterConfiguration' - A structure that contains the configuration for the @SINGLE_MASTER@ channel type.
--
-- * 'ciChannelType' - The type of the signaling channel.
--
-- * 'ciVersion' - The current version of the signaling channel.
--
-- * 'ciChannelStatus' - Current status of the signaling channel.
--
-- * 'ciChannelARN' - The Amazon Resource Name (ARN) of the signaling channel.
channelInfo ::
  ChannelInfo
channelInfo =
  ChannelInfo'
    { _ciChannelName = Nothing,
      _ciCreationTime = Nothing,
      _ciSingleMasterConfiguration = Nothing,
      _ciChannelType = Nothing,
      _ciVersion = Nothing,
      _ciChannelStatus = Nothing,
      _ciChannelARN = Nothing
    }

-- | The name of the signaling channel.
ciChannelName :: Lens' ChannelInfo (Maybe Text)
ciChannelName = lens _ciChannelName (\s a -> s {_ciChannelName = a})

-- | The time at which the signaling channel was created.
ciCreationTime :: Lens' ChannelInfo (Maybe UTCTime)
ciCreationTime = lens _ciCreationTime (\s a -> s {_ciCreationTime = a}) . mapping _Time

-- | A structure that contains the configuration for the @SINGLE_MASTER@ channel type.
ciSingleMasterConfiguration :: Lens' ChannelInfo (Maybe SingleMasterConfiguration)
ciSingleMasterConfiguration = lens _ciSingleMasterConfiguration (\s a -> s {_ciSingleMasterConfiguration = a})

-- | The type of the signaling channel.
ciChannelType :: Lens' ChannelInfo (Maybe ChannelType)
ciChannelType = lens _ciChannelType (\s a -> s {_ciChannelType = a})

-- | The current version of the signaling channel.
ciVersion :: Lens' ChannelInfo (Maybe Text)
ciVersion = lens _ciVersion (\s a -> s {_ciVersion = a})

-- | Current status of the signaling channel.
ciChannelStatus :: Lens' ChannelInfo (Maybe StreamStatus)
ciChannelStatus = lens _ciChannelStatus (\s a -> s {_ciChannelStatus = a})

-- | The Amazon Resource Name (ARN) of the signaling channel.
ciChannelARN :: Lens' ChannelInfo (Maybe Text)
ciChannelARN = lens _ciChannelARN (\s a -> s {_ciChannelARN = a})

instance FromJSON ChannelInfo where
  parseJSON =
    withObject
      "ChannelInfo"
      ( \x ->
          ChannelInfo'
            <$> (x .:? "ChannelName")
            <*> (x .:? "CreationTime")
            <*> (x .:? "SingleMasterConfiguration")
            <*> (x .:? "ChannelType")
            <*> (x .:? "Version")
            <*> (x .:? "ChannelStatus")
            <*> (x .:? "ChannelARN")
      )

instance Hashable ChannelInfo

instance NFData ChannelInfo
