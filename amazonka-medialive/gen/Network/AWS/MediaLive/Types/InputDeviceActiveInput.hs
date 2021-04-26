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
-- Module      : Network.AWS.MediaLive.Types.InputDeviceActiveInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceActiveInput
  ( InputDeviceActiveInput
      ( ..,
        InputDeviceActiveInputHDMI,
        InputDeviceActiveInputSDI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The source at the input device that is currently active.
newtype InputDeviceActiveInput = InputDeviceActiveInput'
  { fromInputDeviceActiveInput ::
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

pattern InputDeviceActiveInputHDMI :: InputDeviceActiveInput
pattern InputDeviceActiveInputHDMI = InputDeviceActiveInput' "HDMI"

pattern InputDeviceActiveInputSDI :: InputDeviceActiveInput
pattern InputDeviceActiveInputSDI = InputDeviceActiveInput' "SDI"

{-# COMPLETE
  InputDeviceActiveInputHDMI,
  InputDeviceActiveInputSDI,
  InputDeviceActiveInput'
  #-}

instance Prelude.FromText InputDeviceActiveInput where
  parser = InputDeviceActiveInput' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceActiveInput where
  toText (InputDeviceActiveInput' x) = x

instance Prelude.Hashable InputDeviceActiveInput

instance Prelude.NFData InputDeviceActiveInput

instance Prelude.ToByteString InputDeviceActiveInput

instance Prelude.ToQuery InputDeviceActiveInput

instance Prelude.ToHeader InputDeviceActiveInput

instance Prelude.FromJSON InputDeviceActiveInput where
  parseJSON = Prelude.parseJSONText "InputDeviceActiveInput"
