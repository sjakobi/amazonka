{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264SpatialAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264SpatialAq
  ( H264SpatialAq
      ( ..,
        HSADisabled,
        HSAEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Spatial Aq
data H264SpatialAq = H264SpatialAq' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HSADisabled :: H264SpatialAq
pattern HSADisabled = H264SpatialAq' "DISABLED"

pattern HSAEnabled :: H264SpatialAq
pattern HSAEnabled = H264SpatialAq' "ENABLED"

{-# COMPLETE
  HSADisabled,
  HSAEnabled,
  H264SpatialAq'
  #-}

instance FromText H264SpatialAq where
  parser = (H264SpatialAq' . mk) <$> takeText

instance ToText H264SpatialAq where
  toText (H264SpatialAq' ci) = original ci

instance Hashable H264SpatialAq

instance NFData H264SpatialAq

instance ToByteString H264SpatialAq

instance ToQuery H264SpatialAq

instance ToHeader H264SpatialAq

instance ToJSON H264SpatialAq where
  toJSON = toJSONText

instance FromJSON H264SpatialAq where
  parseJSON = parseJSONText "H264SpatialAq"
