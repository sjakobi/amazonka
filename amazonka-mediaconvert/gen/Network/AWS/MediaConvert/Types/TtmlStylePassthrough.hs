{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TtmlStylePassthrough
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TtmlStylePassthrough
  ( TtmlStylePassthrough
      ( ..,
        TSPDisabled,
        TSPEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT) to the TTML output.
data TtmlStylePassthrough
  = TtmlStylePassthrough'
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

pattern TSPDisabled :: TtmlStylePassthrough
pattern TSPDisabled = TtmlStylePassthrough' "DISABLED"

pattern TSPEnabled :: TtmlStylePassthrough
pattern TSPEnabled = TtmlStylePassthrough' "ENABLED"

{-# COMPLETE
  TSPDisabled,
  TSPEnabled,
  TtmlStylePassthrough'
  #-}

instance FromText TtmlStylePassthrough where
  parser = (TtmlStylePassthrough' . mk) <$> takeText

instance ToText TtmlStylePassthrough where
  toText (TtmlStylePassthrough' ci) = original ci

instance Hashable TtmlStylePassthrough

instance NFData TtmlStylePassthrough

instance ToByteString TtmlStylePassthrough

instance ToQuery TtmlStylePassthrough

instance ToHeader TtmlStylePassthrough

instance ToJSON TtmlStylePassthrough where
  toJSON = toJSONText

instance FromJSON TtmlStylePassthrough where
  parseJSON = parseJSONText "TtmlStylePassthrough"
