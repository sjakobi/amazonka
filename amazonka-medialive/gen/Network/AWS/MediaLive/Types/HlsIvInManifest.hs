{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsIvInManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsIvInManifest
  ( HlsIvInManifest
      ( ..,
        HIIMExclude,
        HIIMInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Iv In Manifest
data HlsIvInManifest = HlsIvInManifest' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HIIMExclude :: HlsIvInManifest
pattern HIIMExclude = HlsIvInManifest' "EXCLUDE"

pattern HIIMInclude :: HlsIvInManifest
pattern HIIMInclude = HlsIvInManifest' "INCLUDE"

{-# COMPLETE
  HIIMExclude,
  HIIMInclude,
  HlsIvInManifest'
  #-}

instance FromText HlsIvInManifest where
  parser = (HlsIvInManifest' . mk) <$> takeText

instance ToText HlsIvInManifest where
  toText (HlsIvInManifest' ci) = original ci

instance Hashable HlsIvInManifest

instance NFData HlsIvInManifest

instance ToByteString HlsIvInManifest

instance ToQuery HlsIvInManifest

instance ToHeader HlsIvInManifest

instance ToJSON HlsIvInManifest where
  toJSON = toJSONText

instance FromJSON HlsIvInManifest where
  parseJSON = parseJSONText "HlsIvInManifest"
