{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceConnectionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceConnectionState
  ( InputDeviceConnectionState
      ( ..,
        Connected,
        Disconnected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The state of the connection between the input device and AWS.
data InputDeviceConnectionState
  = InputDeviceConnectionState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Connected :: InputDeviceConnectionState
pattern Connected = InputDeviceConnectionState' "CONNECTED"

pattern Disconnected :: InputDeviceConnectionState
pattern Disconnected = InputDeviceConnectionState' "DISCONNECTED"

{-# COMPLETE
  Connected,
  Disconnected,
  InputDeviceConnectionState'
  #-}

instance FromText InputDeviceConnectionState where
  parser = (InputDeviceConnectionState' . mk) <$> takeText

instance ToText InputDeviceConnectionState where
  toText (InputDeviceConnectionState' ci) = original ci

instance Hashable InputDeviceConnectionState

instance NFData InputDeviceConnectionState

instance ToByteString InputDeviceConnectionState

instance ToQuery InputDeviceConnectionState

instance ToHeader InputDeviceConnectionState

instance FromJSON InputDeviceConnectionState where
  parseJSON = parseJSONText "InputDeviceConnectionState"
