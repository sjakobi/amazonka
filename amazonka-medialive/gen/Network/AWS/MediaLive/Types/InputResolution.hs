{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputResolution
  ( InputResolution
      ( ..,
        HD,
        SD,
        Uhd
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Input resolution based on lines of vertical resolution in the input; SD is less than 720 lines, HD is 720 to 1080 lines, UHD is greater than 1080 lines
data InputResolution = InputResolution' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HD :: InputResolution
pattern HD = InputResolution' "HD"

pattern SD :: InputResolution
pattern SD = InputResolution' "SD"

pattern Uhd :: InputResolution
pattern Uhd = InputResolution' "UHD"

{-# COMPLETE
  HD,
  SD,
  Uhd,
  InputResolution'
  #-}

instance FromText InputResolution where
  parser = (InputResolution' . mk) <$> takeText

instance ToText InputResolution where
  toText (InputResolution' ci) = original ci

instance Hashable InputResolution

instance NFData InputResolution

instance ToByteString InputResolution

instance ToQuery InputResolution

instance ToHeader InputResolution

instance ToJSON InputResolution where
  toJSON = toJSONText

instance FromJSON InputResolution where
  parseJSON = parseJSONText "InputResolution"
