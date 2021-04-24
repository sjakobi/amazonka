{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceType
  ( InputDeviceType
      ( ..,
        IDTHD
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of the input device. For an AWS Elemental Link device that outputs resolutions up to 1080, choose "HD".
data InputDeviceType = InputDeviceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IDTHD :: InputDeviceType
pattern IDTHD = InputDeviceType' "HD"

{-# COMPLETE
  IDTHD,
  InputDeviceType'
  #-}

instance FromText InputDeviceType where
  parser = (InputDeviceType' . mk) <$> takeText

instance ToText InputDeviceType where
  toText (InputDeviceType' ci) = original ci

instance Hashable InputDeviceType

instance NFData InputDeviceType

instance ToByteString InputDeviceType

instance ToQuery InputDeviceType

instance ToHeader InputDeviceType

instance FromJSON InputDeviceType where
  parseJSON = parseJSONText "InputDeviceType"
