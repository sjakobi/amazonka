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
-- Module      : Network.AWS.MediaLive.Types.InputDeviceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceState
  ( InputDeviceState
      ( ..,
        InputDeviceStateIDLE,
        InputDeviceStateSTREAMING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The state of the input device.
newtype InputDeviceState = InputDeviceState'
  { fromInputDeviceState ::
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

pattern InputDeviceStateIDLE :: InputDeviceState
pattern InputDeviceStateIDLE = InputDeviceState' "IDLE"

pattern InputDeviceStateSTREAMING :: InputDeviceState
pattern InputDeviceStateSTREAMING = InputDeviceState' "STREAMING"

{-# COMPLETE
  InputDeviceStateIDLE,
  InputDeviceStateSTREAMING,
  InputDeviceState'
  #-}

instance Prelude.FromText InputDeviceState where
  parser = InputDeviceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceState where
  toText (InputDeviceState' x) = x

instance Prelude.Hashable InputDeviceState

instance Prelude.NFData InputDeviceState

instance Prelude.ToByteString InputDeviceState

instance Prelude.ToQuery InputDeviceState

instance Prelude.ToHeader InputDeviceState

instance Prelude.FromJSON InputDeviceState where
  parseJSON = Prelude.parseJSONText "InputDeviceState"
