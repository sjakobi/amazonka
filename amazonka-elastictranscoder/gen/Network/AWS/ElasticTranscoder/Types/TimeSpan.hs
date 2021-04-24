{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.TimeSpan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.TimeSpan where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Settings that determine when a clip begins and how long it lasts.
--
--
--
-- /See:/ 'timeSpan' smart constructor.
data TimeSpan = TimeSpan'
  { _tsDuration ::
      !(Maybe Text),
    _tsStartTime :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TimeSpan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsDuration' - The duration of the clip. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder creates an output file from StartTime to the end of the file. If you specify a value longer than the duration of the input file, Elastic Transcoder transcodes the file and returns a warning message.
--
-- * 'tsStartTime' - The place in the input file where you want a clip to start. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder starts at the beginning of the input file.
timeSpan ::
  TimeSpan
timeSpan =
  TimeSpan'
    { _tsDuration = Nothing,
      _tsStartTime = Nothing
    }

-- | The duration of the clip. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder creates an output file from StartTime to the end of the file. If you specify a value longer than the duration of the input file, Elastic Transcoder transcodes the file and returns a warning message.
tsDuration :: Lens' TimeSpan (Maybe Text)
tsDuration = lens _tsDuration (\s a -> s {_tsDuration = a})

-- | The place in the input file where you want a clip to start. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder starts at the beginning of the input file.
tsStartTime :: Lens' TimeSpan (Maybe Text)
tsStartTime = lens _tsStartTime (\s a -> s {_tsStartTime = a})

instance FromJSON TimeSpan where
  parseJSON =
    withObject
      "TimeSpan"
      ( \x ->
          TimeSpan'
            <$> (x .:? "Duration") <*> (x .:? "StartTime")
      )

instance Hashable TimeSpan

instance NFData TimeSpan

instance ToJSON TimeSpan where
  toJSON TimeSpan' {..} =
    object
      ( catMaybes
          [ ("Duration" .=) <$> _tsDuration,
            ("StartTime" .=) <$> _tsStartTime
          ]
      )
