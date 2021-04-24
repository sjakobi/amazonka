{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Ac3CodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3CodingMode
  ( Ac3CodingMode
      ( ..,
        CodingMode10,
        CodingMode11,
        CodingMode20,
        CodingMode32Lfe
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ac3 Coding Mode
data Ac3CodingMode = Ac3CodingMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CodingMode10 :: Ac3CodingMode
pattern CodingMode10 = Ac3CodingMode' "CODING_MODE_1_0"

pattern CodingMode11 :: Ac3CodingMode
pattern CodingMode11 = Ac3CodingMode' "CODING_MODE_1_1"

pattern CodingMode20 :: Ac3CodingMode
pattern CodingMode20 = Ac3CodingMode' "CODING_MODE_2_0"

pattern CodingMode32Lfe :: Ac3CodingMode
pattern CodingMode32Lfe = Ac3CodingMode' "CODING_MODE_3_2_LFE"

{-# COMPLETE
  CodingMode10,
  CodingMode11,
  CodingMode20,
  CodingMode32Lfe,
  Ac3CodingMode'
  #-}

instance FromText Ac3CodingMode where
  parser = (Ac3CodingMode' . mk) <$> takeText

instance ToText Ac3CodingMode where
  toText (Ac3CodingMode' ci) = original ci

instance Hashable Ac3CodingMode

instance NFData Ac3CodingMode

instance ToByteString Ac3CodingMode

instance ToQuery Ac3CodingMode

instance ToHeader Ac3CodingMode

instance ToJSON Ac3CodingMode where
  toJSON = toJSONText

instance FromJSON Ac3CodingMode where
  parseJSON = parseJSONText "Ac3CodingMode"
