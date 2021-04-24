{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.Fragment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.Fragment where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a segment of video or other time-delimited data.
--
--
--
-- /See:/ 'fragment' smart constructor.
data Fragment = Fragment'
  { _fProducerTimestamp ::
      !(Maybe POSIX),
    _fFragmentNumber :: !(Maybe Text),
    _fFragmentSizeInBytes :: !(Maybe Integer),
    _fServerTimestamp :: !(Maybe POSIX),
    _fFragmentLengthInMilliseconds :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Fragment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fProducerTimestamp' - The timestamp from the producer corresponding to the fragment.
--
-- * 'fFragmentNumber' - The unique identifier of the fragment. This value monotonically increases based on the ingestion order.
--
-- * 'fFragmentSizeInBytes' - The total fragment size, including information about the fragment and contained media data.
--
-- * 'fServerTimestamp' - The timestamp from the AWS server corresponding to the fragment.
--
-- * 'fFragmentLengthInMilliseconds' - The playback duration or other time value associated with the fragment.
fragment ::
  Fragment
fragment =
  Fragment'
    { _fProducerTimestamp = Nothing,
      _fFragmentNumber = Nothing,
      _fFragmentSizeInBytes = Nothing,
      _fServerTimestamp = Nothing,
      _fFragmentLengthInMilliseconds = Nothing
    }

-- | The timestamp from the producer corresponding to the fragment.
fProducerTimestamp :: Lens' Fragment (Maybe UTCTime)
fProducerTimestamp = lens _fProducerTimestamp (\s a -> s {_fProducerTimestamp = a}) . mapping _Time

-- | The unique identifier of the fragment. This value monotonically increases based on the ingestion order.
fFragmentNumber :: Lens' Fragment (Maybe Text)
fFragmentNumber = lens _fFragmentNumber (\s a -> s {_fFragmentNumber = a})

-- | The total fragment size, including information about the fragment and contained media data.
fFragmentSizeInBytes :: Lens' Fragment (Maybe Integer)
fFragmentSizeInBytes = lens _fFragmentSizeInBytes (\s a -> s {_fFragmentSizeInBytes = a})

-- | The timestamp from the AWS server corresponding to the fragment.
fServerTimestamp :: Lens' Fragment (Maybe UTCTime)
fServerTimestamp = lens _fServerTimestamp (\s a -> s {_fServerTimestamp = a}) . mapping _Time

-- | The playback duration or other time value associated with the fragment.
fFragmentLengthInMilliseconds :: Lens' Fragment (Maybe Integer)
fFragmentLengthInMilliseconds = lens _fFragmentLengthInMilliseconds (\s a -> s {_fFragmentLengthInMilliseconds = a})

instance FromJSON Fragment where
  parseJSON =
    withObject
      "Fragment"
      ( \x ->
          Fragment'
            <$> (x .:? "ProducerTimestamp")
            <*> (x .:? "FragmentNumber")
            <*> (x .:? "FragmentSizeInBytes")
            <*> (x .:? "ServerTimestamp")
            <*> (x .:? "FragmentLengthInMilliseconds")
      )

instance Hashable Fragment

instance NFData Fragment
