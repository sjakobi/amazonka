{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsClientCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsClientCache
  ( HlsClientCache
      ( ..,
        HCCDisabled,
        HCCEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Client Cache
data HlsClientCache = HlsClientCache' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HCCDisabled :: HlsClientCache
pattern HCCDisabled = HlsClientCache' "DISABLED"

pattern HCCEnabled :: HlsClientCache
pattern HCCEnabled = HlsClientCache' "ENABLED"

{-# COMPLETE
  HCCDisabled,
  HCCEnabled,
  HlsClientCache'
  #-}

instance FromText HlsClientCache where
  parser = (HlsClientCache' . mk) <$> takeText

instance ToText HlsClientCache where
  toText (HlsClientCache' ci) = original ci

instance Hashable HlsClientCache

instance NFData HlsClientCache

instance ToByteString HlsClientCache

instance ToQuery HlsClientCache

instance ToHeader HlsClientCache

instance ToJSON HlsClientCache where
  toJSON = toJSONText

instance FromJSON HlsClientCache where
  parseJSON = parseJSONText "HlsClientCache"
