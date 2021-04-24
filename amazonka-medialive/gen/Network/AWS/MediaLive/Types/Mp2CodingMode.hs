{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mp2CodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mp2CodingMode
  ( Mp2CodingMode
      ( ..,
        MCMCodingMode10,
        MCMCodingMode20
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mp2 Coding Mode
data Mp2CodingMode = Mp2CodingMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MCMCodingMode10 :: Mp2CodingMode
pattern MCMCodingMode10 = Mp2CodingMode' "CODING_MODE_1_0"

pattern MCMCodingMode20 :: Mp2CodingMode
pattern MCMCodingMode20 = Mp2CodingMode' "CODING_MODE_2_0"

{-# COMPLETE
  MCMCodingMode10,
  MCMCodingMode20,
  Mp2CodingMode'
  #-}

instance FromText Mp2CodingMode where
  parser = (Mp2CodingMode' . mk) <$> takeText

instance ToText Mp2CodingMode where
  toText (Mp2CodingMode' ci) = original ci

instance Hashable Mp2CodingMode

instance NFData Mp2CodingMode

instance ToByteString Mp2CodingMode

instance ToQuery Mp2CodingMode

instance ToHeader Mp2CodingMode

instance ToJSON Mp2CodingMode where
  toJSON = toJSONText

instance FromJSON Mp2CodingMode where
  parseJSON = parseJSONText "Mp2CodingMode"
