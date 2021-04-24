{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsOfflineEncrypted
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsOfflineEncrypted
  ( HlsOfflineEncrypted
      ( ..,
        HOEDisabled,
        HOEEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection.
data HlsOfflineEncrypted
  = HlsOfflineEncrypted'
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

pattern HOEDisabled :: HlsOfflineEncrypted
pattern HOEDisabled = HlsOfflineEncrypted' "DISABLED"

pattern HOEEnabled :: HlsOfflineEncrypted
pattern HOEEnabled = HlsOfflineEncrypted' "ENABLED"

{-# COMPLETE
  HOEDisabled,
  HOEEnabled,
  HlsOfflineEncrypted'
  #-}

instance FromText HlsOfflineEncrypted where
  parser = (HlsOfflineEncrypted' . mk) <$> takeText

instance ToText HlsOfflineEncrypted where
  toText (HlsOfflineEncrypted' ci) = original ci

instance Hashable HlsOfflineEncrypted

instance NFData HlsOfflineEncrypted

instance ToByteString HlsOfflineEncrypted

instance ToQuery HlsOfflineEncrypted

instance ToHeader HlsOfflineEncrypted

instance ToJSON HlsOfflineEncrypted where
  toJSON = toJSONText

instance FromJSON HlsOfflineEncrypted where
  parseJSON = parseJSONText "HlsOfflineEncrypted"
