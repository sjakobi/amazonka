{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AiffSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AiffSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF.
--
-- /See:/ 'aiffSettings' smart constructor.
data AiffSettings = AiffSettings'
  { _assChannels ::
      !(Maybe Nat),
    _assBitDepth :: !(Maybe Nat),
    _assSampleRate :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AiffSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assChannels' - Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
--
-- * 'assBitDepth' - Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
--
-- * 'assSampleRate' - Sample rate in hz.
aiffSettings ::
  AiffSettings
aiffSettings =
  AiffSettings'
    { _assChannels = Nothing,
      _assBitDepth = Nothing,
      _assSampleRate = Nothing
    }

-- | Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64.
assChannels :: Lens' AiffSettings (Maybe Natural)
assChannels = lens _assChannels (\s a -> s {_assChannels = a}) . mapping _Nat

-- | Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
assBitDepth :: Lens' AiffSettings (Maybe Natural)
assBitDepth = lens _assBitDepth (\s a -> s {_assBitDepth = a}) . mapping _Nat

-- | Sample rate in hz.
assSampleRate :: Lens' AiffSettings (Maybe Natural)
assSampleRate = lens _assSampleRate (\s a -> s {_assSampleRate = a}) . mapping _Nat

instance FromJSON AiffSettings where
  parseJSON =
    withObject
      "AiffSettings"
      ( \x ->
          AiffSettings'
            <$> (x .:? "channels")
            <*> (x .:? "bitDepth")
            <*> (x .:? "sampleRate")
      )

instance Hashable AiffSettings

instance NFData AiffSettings

instance ToJSON AiffSettings where
  toJSON AiffSettings' {..} =
    object
      ( catMaybes
          [ ("channels" .=) <$> _assChannels,
            ("bitDepth" .=) <$> _assBitDepth,
            ("sampleRate" .=) <$> _assSampleRate
          ]
      )
