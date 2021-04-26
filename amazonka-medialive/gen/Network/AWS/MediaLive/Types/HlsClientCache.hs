{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        HlsClientCacheDISABLED,
        HlsClientCacheENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Client Cache
newtype HlsClientCache = HlsClientCache'
  { fromHlsClientCache ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern HlsClientCacheDISABLED :: HlsClientCache
pattern HlsClientCacheDISABLED = HlsClientCache' "DISABLED"

pattern HlsClientCacheENABLED :: HlsClientCache
pattern HlsClientCacheENABLED = HlsClientCache' "ENABLED"

{-# COMPLETE
  HlsClientCacheDISABLED,
  HlsClientCacheENABLED,
  HlsClientCache'
  #-}

instance Prelude.FromText HlsClientCache where
  parser = HlsClientCache' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsClientCache where
  toText (HlsClientCache' x) = x

instance Prelude.Hashable HlsClientCache

instance Prelude.NFData HlsClientCache

instance Prelude.ToByteString HlsClientCache

instance Prelude.ToQuery HlsClientCache

instance Prelude.ToHeader HlsClientCache

instance Prelude.ToJSON HlsClientCache where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsClientCache where
  parseJSON = Prelude.parseJSONText "HlsClientCache"
