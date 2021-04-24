{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.Listener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.Listener where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the properties of a Listener for the LoadBalancer.
--
--
--
-- /See:/ 'listener' smart constructor.
data Listener = Listener'
  { _lPort :: !(Maybe Int),
    _lProtocol :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Listener' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lPort' - The port that is used by the Listener.
--
-- * 'lProtocol' - The protocol that is used by the Listener.
listener ::
  Listener
listener =
  Listener' {_lPort = Nothing, _lProtocol = Nothing}

-- | The port that is used by the Listener.
lPort :: Lens' Listener (Maybe Int)
lPort = lens _lPort (\s a -> s {_lPort = a})

-- | The protocol that is used by the Listener.
lProtocol :: Lens' Listener (Maybe Text)
lProtocol = lens _lProtocol (\s a -> s {_lProtocol = a})

instance FromXML Listener where
  parseXML x =
    Listener' <$> (x .@? "Port") <*> (x .@? "Protocol")

instance Hashable Listener

instance NFData Listener
