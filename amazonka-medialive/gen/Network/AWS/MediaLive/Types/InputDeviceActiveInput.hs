{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        IDAIHdmi,
        IDAISdi
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The source at the input device that is currently active.
data InputDeviceActiveInput
  = InputDeviceActiveInput'
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

pattern IDAIHdmi :: InputDeviceActiveInput
pattern IDAIHdmi = InputDeviceActiveInput' "HDMI"

pattern IDAISdi :: InputDeviceActiveInput
pattern IDAISdi = InputDeviceActiveInput' "SDI"

{-# COMPLETE
  IDAIHdmi,
  IDAISdi,
  InputDeviceActiveInput'
  #-}

instance FromText InputDeviceActiveInput where
  parser = (InputDeviceActiveInput' . mk) <$> takeText

instance ToText InputDeviceActiveInput where
  toText (InputDeviceActiveInput' ci) = original ci

instance Hashable InputDeviceActiveInput

instance NFData InputDeviceActiveInput

instance ToByteString InputDeviceActiveInput

instance ToQuery InputDeviceActiveInput

instance ToHeader InputDeviceActiveInput

instance FromJSON InputDeviceActiveInput where
  parseJSON = parseJSONText "InputDeviceActiveInput"
