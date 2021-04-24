{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.ManifestLayout
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.ManifestLayout
  ( ManifestLayout
      ( ..,
        Compact,
        Full
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ManifestLayout = ManifestLayout' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Compact :: ManifestLayout
pattern Compact = ManifestLayout' "COMPACT"

pattern Full :: ManifestLayout
pattern Full = ManifestLayout' "FULL"

{-# COMPLETE
  Compact,
  Full,
  ManifestLayout'
  #-}

instance FromText ManifestLayout where
  parser = (ManifestLayout' . mk) <$> takeText

instance ToText ManifestLayout where
  toText (ManifestLayout' ci) = original ci

instance Hashable ManifestLayout

instance NFData ManifestLayout

instance ToByteString ManifestLayout

instance ToQuery ManifestLayout

instance ToHeader ManifestLayout

instance ToJSON ManifestLayout where
  toJSON = toJSONText

instance FromJSON ManifestLayout where
  parseJSON = parseJSONText "ManifestLayout"
