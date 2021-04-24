{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
  ( HlsTimedMetadataId3Frame
      ( ..,
        HTMIFNone,
        HTMIFPriv,
        HTMIFTdrl
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Indicates ID3 frame that has the timecode.
data HlsTimedMetadataId3Frame
  = HlsTimedMetadataId3Frame'
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

pattern HTMIFNone :: HlsTimedMetadataId3Frame
pattern HTMIFNone = HlsTimedMetadataId3Frame' "NONE"

pattern HTMIFPriv :: HlsTimedMetadataId3Frame
pattern HTMIFPriv = HlsTimedMetadataId3Frame' "PRIV"

pattern HTMIFTdrl :: HlsTimedMetadataId3Frame
pattern HTMIFTdrl = HlsTimedMetadataId3Frame' "TDRL"

{-# COMPLETE
  HTMIFNone,
  HTMIFPriv,
  HTMIFTdrl,
  HlsTimedMetadataId3Frame'
  #-}

instance FromText HlsTimedMetadataId3Frame where
  parser = (HlsTimedMetadataId3Frame' . mk) <$> takeText

instance ToText HlsTimedMetadataId3Frame where
  toText (HlsTimedMetadataId3Frame' ci) = original ci

instance Hashable HlsTimedMetadataId3Frame

instance NFData HlsTimedMetadataId3Frame

instance ToByteString HlsTimedMetadataId3Frame

instance ToQuery HlsTimedMetadataId3Frame

instance ToHeader HlsTimedMetadataId3Frame

instance ToJSON HlsTimedMetadataId3Frame where
  toJSON = toJSONText

instance FromJSON HlsTimedMetadataId3Frame where
  parseJSON = parseJSONText "HlsTimedMetadataId3Frame"
