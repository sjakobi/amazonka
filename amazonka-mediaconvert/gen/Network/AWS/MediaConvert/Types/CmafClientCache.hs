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
-- Module      : Network.AWS.MediaConvert.Types.CmafClientCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafClientCache
  ( CmafClientCache
      ( ..,
        CmafClientCacheDISABLED,
        CmafClientCacheENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Disable this setting only when your workflow requires the
-- #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled
-- (ENABLED) and control caching in your video distribution set up. For
-- example, use the Cache-Control http header.
newtype CmafClientCache = CmafClientCache'
  { fromCmafClientCache ::
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

pattern CmafClientCacheDISABLED :: CmafClientCache
pattern CmafClientCacheDISABLED = CmafClientCache' "DISABLED"

pattern CmafClientCacheENABLED :: CmafClientCache
pattern CmafClientCacheENABLED = CmafClientCache' "ENABLED"

{-# COMPLETE
  CmafClientCacheDISABLED,
  CmafClientCacheENABLED,
  CmafClientCache'
  #-}

instance Prelude.FromText CmafClientCache where
  parser = CmafClientCache' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafClientCache where
  toText (CmafClientCache' x) = x

instance Prelude.Hashable CmafClientCache

instance Prelude.NFData CmafClientCache

instance Prelude.ToByteString CmafClientCache

instance Prelude.ToQuery CmafClientCache

instance Prelude.ToHeader CmafClientCache

instance Prelude.ToJSON CmafClientCache where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafClientCache where
  parseJSON = Prelude.parseJSONText "CmafClientCache"
