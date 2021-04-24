{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CCCDisabled,
        CCCEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header.
data CmafClientCache = CmafClientCache' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CCCDisabled :: CmafClientCache
pattern CCCDisabled = CmafClientCache' "DISABLED"

pattern CCCEnabled :: CmafClientCache
pattern CCCEnabled = CmafClientCache' "ENABLED"

{-# COMPLETE
  CCCDisabled,
  CCCEnabled,
  CmafClientCache'
  #-}

instance FromText CmafClientCache where
  parser = (CmafClientCache' . mk) <$> takeText

instance ToText CmafClientCache where
  toText (CmafClientCache' ci) = original ci

instance Hashable CmafClientCache

instance NFData CmafClientCache

instance ToByteString CmafClientCache

instance ToQuery CmafClientCache

instance ToHeader CmafClientCache

instance ToJSON CmafClientCache where
  toJSON = toJSONText

instance FromJSON CmafClientCache where
  parseJSON = parseJSONText "CmafClientCache"
