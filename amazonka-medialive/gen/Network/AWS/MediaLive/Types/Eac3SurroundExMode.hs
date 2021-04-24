{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3SurroundExMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3SurroundExMode
  ( Eac3SurroundExMode
      ( ..,
        ESEMDisabled,
        ESEMEnabled,
        ESEMNotIndicated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Eac3 Surround Ex Mode
data Eac3SurroundExMode
  = Eac3SurroundExMode'
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

pattern ESEMDisabled :: Eac3SurroundExMode
pattern ESEMDisabled = Eac3SurroundExMode' "DISABLED"

pattern ESEMEnabled :: Eac3SurroundExMode
pattern ESEMEnabled = Eac3SurroundExMode' "ENABLED"

pattern ESEMNotIndicated :: Eac3SurroundExMode
pattern ESEMNotIndicated = Eac3SurroundExMode' "NOT_INDICATED"

{-# COMPLETE
  ESEMDisabled,
  ESEMEnabled,
  ESEMNotIndicated,
  Eac3SurroundExMode'
  #-}

instance FromText Eac3SurroundExMode where
  parser = (Eac3SurroundExMode' . mk) <$> takeText

instance ToText Eac3SurroundExMode where
  toText (Eac3SurroundExMode' ci) = original ci

instance Hashable Eac3SurroundExMode

instance NFData Eac3SurroundExMode

instance ToByteString Eac3SurroundExMode

instance ToQuery Eac3SurroundExMode

instance ToHeader Eac3SurroundExMode

instance ToJSON Eac3SurroundExMode where
  toJSON = toJSONText

instance FromJSON Eac3SurroundExMode where
  parseJSON = parseJSONText "Eac3SurroundExMode"
