{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsInitializationVectorInManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsInitializationVectorInManifest
  ( HlsInitializationVectorInManifest
      ( ..,
        HIVIMExclude,
        HIVIMInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.
data HlsInitializationVectorInManifest
  = HlsInitializationVectorInManifest'
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

pattern HIVIMExclude :: HlsInitializationVectorInManifest
pattern HIVIMExclude = HlsInitializationVectorInManifest' "EXCLUDE"

pattern HIVIMInclude :: HlsInitializationVectorInManifest
pattern HIVIMInclude = HlsInitializationVectorInManifest' "INCLUDE"

{-# COMPLETE
  HIVIMExclude,
  HIVIMInclude,
  HlsInitializationVectorInManifest'
  #-}

instance FromText HlsInitializationVectorInManifest where
  parser = (HlsInitializationVectorInManifest' . mk) <$> takeText

instance ToText HlsInitializationVectorInManifest where
  toText (HlsInitializationVectorInManifest' ci) = original ci

instance Hashable HlsInitializationVectorInManifest

instance NFData HlsInitializationVectorInManifest

instance ToByteString HlsInitializationVectorInManifest

instance ToQuery HlsInitializationVectorInManifest

instance ToHeader HlsInitializationVectorInManifest

instance ToJSON HlsInitializationVectorInManifest where
  toJSON = toJSONText

instance FromJSON HlsInitializationVectorInManifest where
  parseJSON = parseJSONText "HlsInitializationVectorInManifest"
