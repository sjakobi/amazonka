{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DolbyVisionLevel6Metadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DolbyVisionLevel6Metadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values.
--
-- /See:/ 'dolbyVisionLevel6Metadata' smart constructor.
data DolbyVisionLevel6Metadata = DolbyVisionLevel6Metadata'
  { _dvlmMaxCll ::
      !(Maybe Nat),
    _dvlmMaxFall ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DolbyVisionLevel6Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvlmMaxCll' - Maximum Content Light Level. Static HDR metadata that corresponds to the brightest pixel in the entire stream. Measured in nits.
--
-- * 'dvlmMaxFall' - Maximum Frame-Average Light Level. Static HDR metadata that corresponds to the highest frame-average brightness in the entire stream. Measured in nits.
dolbyVisionLevel6Metadata ::
  DolbyVisionLevel6Metadata
dolbyVisionLevel6Metadata =
  DolbyVisionLevel6Metadata'
    { _dvlmMaxCll = Nothing,
      _dvlmMaxFall = Nothing
    }

-- | Maximum Content Light Level. Static HDR metadata that corresponds to the brightest pixel in the entire stream. Measured in nits.
dvlmMaxCll :: Lens' DolbyVisionLevel6Metadata (Maybe Natural)
dvlmMaxCll = lens _dvlmMaxCll (\s a -> s {_dvlmMaxCll = a}) . mapping _Nat

-- | Maximum Frame-Average Light Level. Static HDR metadata that corresponds to the highest frame-average brightness in the entire stream. Measured in nits.
dvlmMaxFall :: Lens' DolbyVisionLevel6Metadata (Maybe Natural)
dvlmMaxFall = lens _dvlmMaxFall (\s a -> s {_dvlmMaxFall = a}) . mapping _Nat

instance FromJSON DolbyVisionLevel6Metadata where
  parseJSON =
    withObject
      "DolbyVisionLevel6Metadata"
      ( \x ->
          DolbyVisionLevel6Metadata'
            <$> (x .:? "maxCll") <*> (x .:? "maxFall")
      )

instance Hashable DolbyVisionLevel6Metadata

instance NFData DolbyVisionLevel6Metadata

instance ToJSON DolbyVisionLevel6Metadata where
  toJSON DolbyVisionLevel6Metadata' {..} =
    object
      ( catMaybes
          [ ("maxCll" .=) <$> _dvlmMaxCll,
            ("maxFall" .=) <$> _dvlmMaxFall
          ]
      )
