{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.DetectedProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.DetectedProperties where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The detected properties of the input file. Elastic Transcoder identifies these values from the input file.
--
--
--
-- /See:/ 'detectedProperties' smart constructor.
data DetectedProperties = DetectedProperties'
  { _dpHeight ::
      !(Maybe Int),
    _dpWidth :: !(Maybe Int),
    _dpFileSize :: !(Maybe Integer),
    _dpFrameRate :: !(Maybe Text),
    _dpDurationMillis ::
      !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetectedProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpHeight' - The detected height of the input file, in pixels.
--
-- * 'dpWidth' - The detected width of the input file, in pixels.
--
-- * 'dpFileSize' - The detected file size of the input file, in bytes.
--
-- * 'dpFrameRate' - The detected frame rate of the input file, in frames per second.
--
-- * 'dpDurationMillis' - The detected duration of the input file, in milliseconds.
detectedProperties ::
  DetectedProperties
detectedProperties =
  DetectedProperties'
    { _dpHeight = Nothing,
      _dpWidth = Nothing,
      _dpFileSize = Nothing,
      _dpFrameRate = Nothing,
      _dpDurationMillis = Nothing
    }

-- | The detected height of the input file, in pixels.
dpHeight :: Lens' DetectedProperties (Maybe Int)
dpHeight = lens _dpHeight (\s a -> s {_dpHeight = a})

-- | The detected width of the input file, in pixels.
dpWidth :: Lens' DetectedProperties (Maybe Int)
dpWidth = lens _dpWidth (\s a -> s {_dpWidth = a})

-- | The detected file size of the input file, in bytes.
dpFileSize :: Lens' DetectedProperties (Maybe Integer)
dpFileSize = lens _dpFileSize (\s a -> s {_dpFileSize = a})

-- | The detected frame rate of the input file, in frames per second.
dpFrameRate :: Lens' DetectedProperties (Maybe Text)
dpFrameRate = lens _dpFrameRate (\s a -> s {_dpFrameRate = a})

-- | The detected duration of the input file, in milliseconds.
dpDurationMillis :: Lens' DetectedProperties (Maybe Integer)
dpDurationMillis = lens _dpDurationMillis (\s a -> s {_dpDurationMillis = a})

instance FromJSON DetectedProperties where
  parseJSON =
    withObject
      "DetectedProperties"
      ( \x ->
          DetectedProperties'
            <$> (x .:? "Height")
            <*> (x .:? "Width")
            <*> (x .:? "FileSize")
            <*> (x .:? "FrameRate")
            <*> (x .:? "DurationMillis")
      )

instance Hashable DetectedProperties

instance NFData DetectedProperties

instance ToJSON DetectedProperties where
  toJSON DetectedProperties' {..} =
    object
      ( catMaybes
          [ ("Height" .=) <$> _dpHeight,
            ("Width" .=) <$> _dpWidth,
            ("FileSize" .=) <$> _dpFileSize,
            ("FrameRate" .=) <$> _dpFrameRate,
            ("DurationMillis" .=) <$> _dpDurationMillis
          ]
      )
