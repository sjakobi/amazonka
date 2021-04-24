{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OutputDestinationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.OutputDestinationSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Placeholder documentation for OutputDestinationSettings
--
-- /See:/ 'outputDestinationSettings' smart constructor.
data OutputDestinationSettings = OutputDestinationSettings'
  { _odsPasswordParam ::
      !(Maybe Text),
    _odsUsername ::
      !(Maybe Text),
    _odsStreamName ::
      !(Maybe Text),
    _odsURL ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OutputDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odsPasswordParam' - key used to extract the password from EC2 Parameter store
--
-- * 'odsUsername' - username for destination
--
-- * 'odsStreamName' - Stream name for RTMP destinations (URLs of type rtmp://)
--
-- * 'odsURL' - A URL specifying a destination
outputDestinationSettings ::
  OutputDestinationSettings
outputDestinationSettings =
  OutputDestinationSettings'
    { _odsPasswordParam =
        Nothing,
      _odsUsername = Nothing,
      _odsStreamName = Nothing,
      _odsURL = Nothing
    }

-- | key used to extract the password from EC2 Parameter store
odsPasswordParam :: Lens' OutputDestinationSettings (Maybe Text)
odsPasswordParam = lens _odsPasswordParam (\s a -> s {_odsPasswordParam = a})

-- | username for destination
odsUsername :: Lens' OutputDestinationSettings (Maybe Text)
odsUsername = lens _odsUsername (\s a -> s {_odsUsername = a})

-- | Stream name for RTMP destinations (URLs of type rtmp://)
odsStreamName :: Lens' OutputDestinationSettings (Maybe Text)
odsStreamName = lens _odsStreamName (\s a -> s {_odsStreamName = a})

-- | A URL specifying a destination
odsURL :: Lens' OutputDestinationSettings (Maybe Text)
odsURL = lens _odsURL (\s a -> s {_odsURL = a})

instance FromJSON OutputDestinationSettings where
  parseJSON =
    withObject
      "OutputDestinationSettings"
      ( \x ->
          OutputDestinationSettings'
            <$> (x .:? "passwordParam")
            <*> (x .:? "username")
            <*> (x .:? "streamName")
            <*> (x .:? "url")
      )

instance Hashable OutputDestinationSettings

instance NFData OutputDestinationSettings

instance ToJSON OutputDestinationSettings where
  toJSON OutputDestinationSettings' {..} =
    object
      ( catMaybes
          [ ("passwordParam" .=) <$> _odsPasswordParam,
            ("username" .=) <$> _odsUsername,
            ("streamName" .=) <$> _odsStreamName,
            ("url" .=) <$> _odsURL
          ]
      )
