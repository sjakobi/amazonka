{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.StreamInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.StreamInfo where

import Network.AWS.KinesisVideo.Types.StreamStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object describing a Kinesis video stream.
--
--
--
-- /See:/ 'streamInfo' smart constructor.
data StreamInfo = StreamInfo'
  { _siStatus ::
      !(Maybe StreamStatus),
    _siCreationTime :: !(Maybe POSIX),
    _siDataRetentionInHours :: !(Maybe Nat),
    _siVersion :: !(Maybe Text),
    _siKMSKeyId :: !(Maybe Text),
    _siDeviceName :: !(Maybe Text),
    _siMediaType :: !(Maybe Text),
    _siStreamARN :: !(Maybe Text),
    _siStreamName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StreamInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siStatus' - The status of the stream.
--
-- * 'siCreationTime' - A time stamp that indicates when the stream was created.
--
-- * 'siDataRetentionInHours' - How long the stream retains data, in hours.
--
-- * 'siVersion' - The version of the stream.
--
-- * 'siKMSKeyId' - The ID of the AWS Key Management Service (AWS KMS) key that Kinesis Video Streams uses to encrypt data on the stream.
--
-- * 'siDeviceName' - The name of the device that is associated with the stream.
--
-- * 'siMediaType' - The @MediaType@ of the stream.
--
-- * 'siStreamARN' - The Amazon Resource Name (ARN) of the stream.
--
-- * 'siStreamName' - The name of the stream.
streamInfo ::
  StreamInfo
streamInfo =
  StreamInfo'
    { _siStatus = Nothing,
      _siCreationTime = Nothing,
      _siDataRetentionInHours = Nothing,
      _siVersion = Nothing,
      _siKMSKeyId = Nothing,
      _siDeviceName = Nothing,
      _siMediaType = Nothing,
      _siStreamARN = Nothing,
      _siStreamName = Nothing
    }

-- | The status of the stream.
siStatus :: Lens' StreamInfo (Maybe StreamStatus)
siStatus = lens _siStatus (\s a -> s {_siStatus = a})

-- | A time stamp that indicates when the stream was created.
siCreationTime :: Lens' StreamInfo (Maybe UTCTime)
siCreationTime = lens _siCreationTime (\s a -> s {_siCreationTime = a}) . mapping _Time

-- | How long the stream retains data, in hours.
siDataRetentionInHours :: Lens' StreamInfo (Maybe Natural)
siDataRetentionInHours = lens _siDataRetentionInHours (\s a -> s {_siDataRetentionInHours = a}) . mapping _Nat

-- | The version of the stream.
siVersion :: Lens' StreamInfo (Maybe Text)
siVersion = lens _siVersion (\s a -> s {_siVersion = a})

-- | The ID of the AWS Key Management Service (AWS KMS) key that Kinesis Video Streams uses to encrypt data on the stream.
siKMSKeyId :: Lens' StreamInfo (Maybe Text)
siKMSKeyId = lens _siKMSKeyId (\s a -> s {_siKMSKeyId = a})

-- | The name of the device that is associated with the stream.
siDeviceName :: Lens' StreamInfo (Maybe Text)
siDeviceName = lens _siDeviceName (\s a -> s {_siDeviceName = a})

-- | The @MediaType@ of the stream.
siMediaType :: Lens' StreamInfo (Maybe Text)
siMediaType = lens _siMediaType (\s a -> s {_siMediaType = a})

-- | The Amazon Resource Name (ARN) of the stream.
siStreamARN :: Lens' StreamInfo (Maybe Text)
siStreamARN = lens _siStreamARN (\s a -> s {_siStreamARN = a})

-- | The name of the stream.
siStreamName :: Lens' StreamInfo (Maybe Text)
siStreamName = lens _siStreamName (\s a -> s {_siStreamName = a})

instance FromJSON StreamInfo where
  parseJSON =
    withObject
      "StreamInfo"
      ( \x ->
          StreamInfo'
            <$> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "DataRetentionInHours")
            <*> (x .:? "Version")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "DeviceName")
            <*> (x .:? "MediaType")
            <*> (x .:? "StreamARN")
            <*> (x .:? "StreamName")
      )

instance Hashable StreamInfo

instance NFData StreamInfo
