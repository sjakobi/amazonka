{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsDiscontinuityTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsDiscontinuityTags
  ( HlsDiscontinuityTags
      ( ..,
        HDTInsert,
        HDTNeverInsert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Discontinuity Tags
data HlsDiscontinuityTags
  = HlsDiscontinuityTags'
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

pattern HDTInsert :: HlsDiscontinuityTags
pattern HDTInsert = HlsDiscontinuityTags' "INSERT"

pattern HDTNeverInsert :: HlsDiscontinuityTags
pattern HDTNeverInsert = HlsDiscontinuityTags' "NEVER_INSERT"

{-# COMPLETE
  HDTInsert,
  HDTNeverInsert,
  HlsDiscontinuityTags'
  #-}

instance FromText HlsDiscontinuityTags where
  parser = (HlsDiscontinuityTags' . mk) <$> takeText

instance ToText HlsDiscontinuityTags where
  toText (HlsDiscontinuityTags' ci) = original ci

instance Hashable HlsDiscontinuityTags

instance NFData HlsDiscontinuityTags

instance ToByteString HlsDiscontinuityTags

instance ToQuery HlsDiscontinuityTags

instance ToHeader HlsDiscontinuityTags

instance ToJSON HlsDiscontinuityTags where
  toJSON = toJSONText

instance FromJSON HlsDiscontinuityTags where
  parseJSON = parseJSONText "HlsDiscontinuityTags"
