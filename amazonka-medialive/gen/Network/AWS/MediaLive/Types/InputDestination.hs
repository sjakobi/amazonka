{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDestination where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputDestinationVPC
import Network.AWS.Prelude

-- | The settings for a PUSH type input.
--
-- /See:/ 'inputDestination' smart constructor.
data InputDestination = InputDestination'
  { _idIP ::
      !(Maybe Text),
    _idPort :: !(Maybe Text),
    _idURL :: !(Maybe Text),
    _idVPC ::
      !(Maybe InputDestinationVPC)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idIP' - The system-generated static IP address of endpoint. It remains fixed for the lifetime of the input.
--
-- * 'idPort' - The port number for the input.
--
-- * 'idURL' - This represents the endpoint that the customer stream will be pushed to.
--
-- * 'idVPC' - Undocumented member.
inputDestination ::
  InputDestination
inputDestination =
  InputDestination'
    { _idIP = Nothing,
      _idPort = Nothing,
      _idURL = Nothing,
      _idVPC = Nothing
    }

-- | The system-generated static IP address of endpoint. It remains fixed for the lifetime of the input.
idIP :: Lens' InputDestination (Maybe Text)
idIP = lens _idIP (\s a -> s {_idIP = a})

-- | The port number for the input.
idPort :: Lens' InputDestination (Maybe Text)
idPort = lens _idPort (\s a -> s {_idPort = a})

-- | This represents the endpoint that the customer stream will be pushed to.
idURL :: Lens' InputDestination (Maybe Text)
idURL = lens _idURL (\s a -> s {_idURL = a})

-- | Undocumented member.
idVPC :: Lens' InputDestination (Maybe InputDestinationVPC)
idVPC = lens _idVPC (\s a -> s {_idVPC = a})

instance FromJSON InputDestination where
  parseJSON =
    withObject
      "InputDestination"
      ( \x ->
          InputDestination'
            <$> (x .:? "ip")
            <*> (x .:? "port")
            <*> (x .:? "url")
            <*> (x .:? "vpc")
      )

instance Hashable InputDestination

instance NFData InputDestination
