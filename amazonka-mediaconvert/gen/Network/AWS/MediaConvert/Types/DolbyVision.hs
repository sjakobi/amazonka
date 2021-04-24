{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DolbyVision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DolbyVision where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DolbyVisionLevel6Metadata
import Network.AWS.MediaConvert.Types.DolbyVisionLevel6Mode
import Network.AWS.MediaConvert.Types.DolbyVisionProfile
import Network.AWS.Prelude

-- | Settings for Dolby Vision
--
-- /See:/ 'dolbyVision' smart constructor.
data DolbyVision = DolbyVision'
  { _dvL6Mode ::
      !(Maybe DolbyVisionLevel6Mode),
    _dvL6Metadata ::
      !(Maybe DolbyVisionLevel6Metadata),
    _dvProfile :: !(Maybe DolbyVisionProfile)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DolbyVision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvL6Mode' - Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies.
--
-- * 'dvL6Metadata' - Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values.
--
-- * 'dvProfile' - In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data.
dolbyVision ::
  DolbyVision
dolbyVision =
  DolbyVision'
    { _dvL6Mode = Nothing,
      _dvL6Metadata = Nothing,
      _dvProfile = Nothing
    }

-- | Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies.
dvL6Mode :: Lens' DolbyVision (Maybe DolbyVisionLevel6Mode)
dvL6Mode = lens _dvL6Mode (\s a -> s {_dvL6Mode = a})

-- | Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values.
dvL6Metadata :: Lens' DolbyVision (Maybe DolbyVisionLevel6Metadata)
dvL6Metadata = lens _dvL6Metadata (\s a -> s {_dvL6Metadata = a})

-- | In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data.
dvProfile :: Lens' DolbyVision (Maybe DolbyVisionProfile)
dvProfile = lens _dvProfile (\s a -> s {_dvProfile = a})

instance FromJSON DolbyVision where
  parseJSON =
    withObject
      "DolbyVision"
      ( \x ->
          DolbyVision'
            <$> (x .:? "l6Mode")
            <*> (x .:? "l6Metadata")
            <*> (x .:? "profile")
      )

instance Hashable DolbyVision

instance NFData DolbyVision

instance ToJSON DolbyVision where
  toJSON DolbyVision' {..} =
    object
      ( catMaybes
          [ ("l6Mode" .=) <$> _dvL6Mode,
            ("l6Metadata" .=) <$> _dvL6Metadata,
            ("profile" .=) <$> _dvProfile
          ]
      )
