{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Auto,
        Hdmi,
        Sdi
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The source to activate (use) from the input device.
data InputDeviceConfiguredInput
  = InputDeviceConfiguredInput'
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

pattern Auto :: InputDeviceConfiguredInput
pattern Auto = InputDeviceConfiguredInput' "AUTO"

pattern Hdmi :: InputDeviceConfiguredInput
pattern Hdmi = InputDeviceConfiguredInput' "HDMI"

pattern Sdi :: InputDeviceConfiguredInput
pattern Sdi = InputDeviceConfiguredInput' "SDI"

{-# COMPLETE
  Auto,
  Hdmi,
  Sdi,
  InputDeviceConfiguredInput'
  #-}

instance FromText InputDeviceConfiguredInput where
  parser = (InputDeviceConfiguredInput' . mk) <$> takeText

instance ToText InputDeviceConfiguredInput where
  toText (InputDeviceConfiguredInput' ci) = original ci

instance Hashable InputDeviceConfiguredInput

instance NFData InputDeviceConfiguredInput

instance ToByteString InputDeviceConfiguredInput

instance ToQuery InputDeviceConfiguredInput

instance ToHeader InputDeviceConfiguredInput

instance ToJSON InputDeviceConfiguredInput where
  toJSON = toJSONText

instance FromJSON InputDeviceConfiguredInput where
  parseJSON = parseJSONText "InputDeviceConfiguredInput"
