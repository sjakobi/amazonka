{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OutputDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.OutputDestination where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.MediaPackageOutputDestinationSettings
import Network.AWS.MediaLive.Types.MultiplexProgramChannelDestinationSettings
import Network.AWS.MediaLive.Types.OutputDestinationSettings
import Network.AWS.Prelude

-- | Placeholder documentation for OutputDestination
--
-- /See:/ 'outputDestination' smart constructor.
data OutputDestination = OutputDestination'
  { _odMediaPackageSettings ::
      !( Maybe
           [MediaPackageOutputDestinationSettings]
       ),
    _odId :: !(Maybe Text),
    _odMultiplexSettings ::
      !( Maybe
           MultiplexProgramChannelDestinationSettings
       ),
    _odSettings ::
      !( Maybe
           [OutputDestinationSettings]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odMediaPackageSettings' - Destination settings for a MediaPackage output; one destination for both encoders.
--
-- * 'odId' - User-specified id. This is used in an output group or an output.
--
-- * 'odMultiplexSettings' - Destination settings for a Multiplex output; one destination for both encoders.
--
-- * 'odSettings' - Destination settings for a standard output; one destination for each redundant encoder.
outputDestination ::
  OutputDestination
outputDestination =
  OutputDestination'
    { _odMediaPackageSettings =
        Nothing,
      _odId = Nothing,
      _odMultiplexSettings = Nothing,
      _odSettings = Nothing
    }

-- | Destination settings for a MediaPackage output; one destination for both encoders.
odMediaPackageSettings :: Lens' OutputDestination [MediaPackageOutputDestinationSettings]
odMediaPackageSettings = lens _odMediaPackageSettings (\s a -> s {_odMediaPackageSettings = a}) . _Default . _Coerce

-- | User-specified id. This is used in an output group or an output.
odId :: Lens' OutputDestination (Maybe Text)
odId = lens _odId (\s a -> s {_odId = a})

-- | Destination settings for a Multiplex output; one destination for both encoders.
odMultiplexSettings :: Lens' OutputDestination (Maybe MultiplexProgramChannelDestinationSettings)
odMultiplexSettings = lens _odMultiplexSettings (\s a -> s {_odMultiplexSettings = a})

-- | Destination settings for a standard output; one destination for each redundant encoder.
odSettings :: Lens' OutputDestination [OutputDestinationSettings]
odSettings = lens _odSettings (\s a -> s {_odSettings = a}) . _Default . _Coerce

instance FromJSON OutputDestination where
  parseJSON =
    withObject
      "OutputDestination"
      ( \x ->
          OutputDestination'
            <$> (x .:? "mediaPackageSettings" .!= mempty)
            <*> (x .:? "id")
            <*> (x .:? "multiplexSettings")
            <*> (x .:? "settings" .!= mempty)
      )

instance Hashable OutputDestination

instance NFData OutputDestination

instance ToJSON OutputDestination where
  toJSON OutputDestination' {..} =
    object
      ( catMaybes
          [ ("mediaPackageSettings" .=)
              <$> _odMediaPackageSettings,
            ("id" .=) <$> _odId,
            ("multiplexSettings" .=) <$> _odMultiplexSettings,
            ("settings" .=) <$> _odSettings
          ]
      )
