{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3SurroundMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3SurroundMode
  ( Eac3SurroundMode
      ( ..,
        ESMDisabled,
        ESMEnabled,
        ESMNotIndicated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
data Eac3SurroundMode = Eac3SurroundMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ESMDisabled :: Eac3SurroundMode
pattern ESMDisabled = Eac3SurroundMode' "DISABLED"

pattern ESMEnabled :: Eac3SurroundMode
pattern ESMEnabled = Eac3SurroundMode' "ENABLED"

pattern ESMNotIndicated :: Eac3SurroundMode
pattern ESMNotIndicated = Eac3SurroundMode' "NOT_INDICATED"

{-# COMPLETE
  ESMDisabled,
  ESMEnabled,
  ESMNotIndicated,
  Eac3SurroundMode'
  #-}

instance FromText Eac3SurroundMode where
  parser = (Eac3SurroundMode' . mk) <$> takeText

instance ToText Eac3SurroundMode where
  toText (Eac3SurroundMode' ci) = original ci

instance Hashable Eac3SurroundMode

instance NFData Eac3SurroundMode

instance ToByteString Eac3SurroundMode

instance ToQuery Eac3SurroundMode

instance ToHeader Eac3SurroundMode

instance ToJSON Eac3SurroundMode where
  toJSON = toJSONText

instance FromJSON Eac3SurroundMode where
  parseJSON = parseJSONText "Eac3SurroundMode"
