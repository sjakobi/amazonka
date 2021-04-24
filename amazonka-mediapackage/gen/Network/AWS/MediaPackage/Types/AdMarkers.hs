{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.AdMarkers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.AdMarkers
  ( AdMarkers
      ( ..,
        Daterange,
        None,
        Passthrough,
        SCTE35Enhanced
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AdMarkers = AdMarkers' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Daterange :: AdMarkers
pattern Daterange = AdMarkers' "DATERANGE"

pattern None :: AdMarkers
pattern None = AdMarkers' "NONE"

pattern Passthrough :: AdMarkers
pattern Passthrough = AdMarkers' "PASSTHROUGH"

pattern SCTE35Enhanced :: AdMarkers
pattern SCTE35Enhanced = AdMarkers' "SCTE35_ENHANCED"

{-# COMPLETE
  Daterange,
  None,
  Passthrough,
  SCTE35Enhanced,
  AdMarkers'
  #-}

instance FromText AdMarkers where
  parser = (AdMarkers' . mk) <$> takeText

instance ToText AdMarkers where
  toText (AdMarkers' ci) = original ci

instance Hashable AdMarkers

instance NFData AdMarkers

instance ToByteString AdMarkers

instance ToQuery AdMarkers

instance ToHeader AdMarkers

instance ToJSON AdMarkers where
  toJSON = toJSONText

instance FromJSON AdMarkers where
  parseJSON = parseJSONText "AdMarkers"
