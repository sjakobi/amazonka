{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceState
  ( InputDeviceState
      ( ..,
        Idle,
        Streaming
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The state of the input device.
data InputDeviceState = InputDeviceState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Idle :: InputDeviceState
pattern Idle = InputDeviceState' "IDLE"

pattern Streaming :: InputDeviceState
pattern Streaming = InputDeviceState' "STREAMING"

{-# COMPLETE
  Idle,
  Streaming,
  InputDeviceState'
  #-}

instance FromText InputDeviceState where
  parser = (InputDeviceState' . mk) <$> takeText

instance ToText InputDeviceState where
  toText (InputDeviceState' ci) = original ci

instance Hashable InputDeviceState

instance NFData InputDeviceState

instance ToByteString InputDeviceState

instance ToQuery InputDeviceState

instance ToHeader InputDeviceState

instance FromJSON InputDeviceState where
  parseJSON = parseJSONText "InputDeviceState"
