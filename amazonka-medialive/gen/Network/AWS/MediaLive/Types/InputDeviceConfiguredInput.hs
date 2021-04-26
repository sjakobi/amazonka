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
-- Module      : Network.AWS.MediaLive.Types.InputDeviceConfiguredInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceConfiguredInput
  ( InputDeviceConfiguredInput
      ( ..,
        InputDeviceConfiguredInputAUTO,
        InputDeviceConfiguredInputHDMI,
        InputDeviceConfiguredInputSDI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The source to activate (use) from the input device.
newtype InputDeviceConfiguredInput = InputDeviceConfiguredInput'
  { fromInputDeviceConfiguredInput ::
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

pattern InputDeviceConfiguredInputAUTO :: InputDeviceConfiguredInput
pattern InputDeviceConfiguredInputAUTO = InputDeviceConfiguredInput' "AUTO"

pattern InputDeviceConfiguredInputHDMI :: InputDeviceConfiguredInput
pattern InputDeviceConfiguredInputHDMI = InputDeviceConfiguredInput' "HDMI"

pattern InputDeviceConfiguredInputSDI :: InputDeviceConfiguredInput
pattern InputDeviceConfiguredInputSDI = InputDeviceConfiguredInput' "SDI"

{-# COMPLETE
  InputDeviceConfiguredInputAUTO,
  InputDeviceConfiguredInputHDMI,
  InputDeviceConfiguredInputSDI,
  InputDeviceConfiguredInput'
  #-}

instance Prelude.FromText InputDeviceConfiguredInput where
  parser = InputDeviceConfiguredInput' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceConfiguredInput where
  toText (InputDeviceConfiguredInput' x) = x

instance Prelude.Hashable InputDeviceConfiguredInput

instance Prelude.NFData InputDeviceConfiguredInput

instance Prelude.ToByteString InputDeviceConfiguredInput

instance Prelude.ToQuery InputDeviceConfiguredInput

instance Prelude.ToHeader InputDeviceConfiguredInput

instance Prelude.ToJSON InputDeviceConfiguredInput where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputDeviceConfiguredInput where
  parseJSON = Prelude.parseJSONText "InputDeviceConfiguredInput"
