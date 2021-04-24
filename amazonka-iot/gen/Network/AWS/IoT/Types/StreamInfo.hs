{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.StreamInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.StreamInfo where

import Network.AWS.IoT.Types.StreamFile
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a stream.
--
--
--
-- /See:/ 'streamInfo' smart constructor.
data StreamInfo = StreamInfo'
  { _siRoleARN ::
      !(Maybe Text),
    _siStreamVersion :: !(Maybe Nat),
    _siCreatedAt :: !(Maybe POSIX),
    _siStreamId :: !(Maybe Text),
    _siStreamARN :: !(Maybe Text),
    _siDescription :: !(Maybe Text),
    _siFiles :: !(Maybe (List1 StreamFile)),
    _siLastUpdatedAt :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StreamInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siRoleARN' - An IAM role AWS IoT assumes to access your S3 files.
--
-- * 'siStreamVersion' - The stream version.
--
-- * 'siCreatedAt' - The date when the stream was created.
--
-- * 'siStreamId' - The stream ID.
--
-- * 'siStreamARN' - The stream ARN.
--
-- * 'siDescription' - The description of the stream.
--
-- * 'siFiles' - The files to stream.
--
-- * 'siLastUpdatedAt' - The date when the stream was last updated.
streamInfo ::
  StreamInfo
streamInfo =
  StreamInfo'
    { _siRoleARN = Nothing,
      _siStreamVersion = Nothing,
      _siCreatedAt = Nothing,
      _siStreamId = Nothing,
      _siStreamARN = Nothing,
      _siDescription = Nothing,
      _siFiles = Nothing,
      _siLastUpdatedAt = Nothing
    }

-- | An IAM role AWS IoT assumes to access your S3 files.
siRoleARN :: Lens' StreamInfo (Maybe Text)
siRoleARN = lens _siRoleARN (\s a -> s {_siRoleARN = a})

-- | The stream version.
siStreamVersion :: Lens' StreamInfo (Maybe Natural)
siStreamVersion = lens _siStreamVersion (\s a -> s {_siStreamVersion = a}) . mapping _Nat

-- | The date when the stream was created.
siCreatedAt :: Lens' StreamInfo (Maybe UTCTime)
siCreatedAt = lens _siCreatedAt (\s a -> s {_siCreatedAt = a}) . mapping _Time

-- | The stream ID.
siStreamId :: Lens' StreamInfo (Maybe Text)
siStreamId = lens _siStreamId (\s a -> s {_siStreamId = a})

-- | The stream ARN.
siStreamARN :: Lens' StreamInfo (Maybe Text)
siStreamARN = lens _siStreamARN (\s a -> s {_siStreamARN = a})

-- | The description of the stream.
siDescription :: Lens' StreamInfo (Maybe Text)
siDescription = lens _siDescription (\s a -> s {_siDescription = a})

-- | The files to stream.
siFiles :: Lens' StreamInfo (Maybe (NonEmpty StreamFile))
siFiles = lens _siFiles (\s a -> s {_siFiles = a}) . mapping _List1

-- | The date when the stream was last updated.
siLastUpdatedAt :: Lens' StreamInfo (Maybe UTCTime)
siLastUpdatedAt = lens _siLastUpdatedAt (\s a -> s {_siLastUpdatedAt = a}) . mapping _Time

instance FromJSON StreamInfo where
  parseJSON =
    withObject
      "StreamInfo"
      ( \x ->
          StreamInfo'
            <$> (x .:? "roleArn")
            <*> (x .:? "streamVersion")
            <*> (x .:? "createdAt")
            <*> (x .:? "streamId")
            <*> (x .:? "streamArn")
            <*> (x .:? "description")
            <*> (x .:? "files")
            <*> (x .:? "lastUpdatedAt")
      )

instance Hashable StreamInfo

instance NFData StreamInfo
