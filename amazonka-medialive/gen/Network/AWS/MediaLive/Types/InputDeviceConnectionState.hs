{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        InputDeviceConnectionStateCONNECTED,
        InputDeviceConnectionStateDISCONNECTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The state of the connection between the input device and AWS.
newtype InputDeviceConnectionState = InputDeviceConnectionState'
  { fromInputDeviceConnectionState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern InputDeviceConnectionStateCONNECTED :: InputDeviceConnectionState
pattern InputDeviceConnectionStateCONNECTED = InputDeviceConnectionState' "CONNECTED"

pattern InputDeviceConnectionStateDISCONNECTED :: InputDeviceConnectionState
pattern InputDeviceConnectionStateDISCONNECTED = InputDeviceConnectionState' "DISCONNECTED"

{-# COMPLETE
  InputDeviceConnectionStateCONNECTED,
  InputDeviceConnectionStateDISCONNECTED,
  InputDeviceConnectionState'
  #-}

instance Prelude.FromText InputDeviceConnectionState where
  parser = InputDeviceConnectionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceConnectionState where
  toText (InputDeviceConnectionState' x) = x

instance Prelude.Hashable InputDeviceConnectionState

instance Prelude.NFData InputDeviceConnectionState

instance Prelude.ToByteString InputDeviceConnectionState

instance Prelude.ToQuery InputDeviceConnectionState

instance Prelude.ToHeader InputDeviceConnectionState

instance Prelude.FromJSON InputDeviceConnectionState where
  parseJSON = Prelude.parseJSONText "InputDeviceConnectionState"
