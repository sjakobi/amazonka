{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264CodecProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264CodecProfile
  ( H264CodecProfile
      ( ..,
        HCPBaseline,
        HCPHigh,
        HCPHigh10BIT,
        HCPHigh422,
        HCPHigh42210BIT,
        HCPMain
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
data H264CodecProfile = H264CodecProfile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HCPBaseline :: H264CodecProfile
pattern HCPBaseline = H264CodecProfile' "BASELINE"

pattern HCPHigh :: H264CodecProfile
pattern HCPHigh = H264CodecProfile' "HIGH"

pattern HCPHigh10BIT :: H264CodecProfile
pattern HCPHigh10BIT = H264CodecProfile' "HIGH_10BIT"

pattern HCPHigh422 :: H264CodecProfile
pattern HCPHigh422 = H264CodecProfile' "HIGH_422"

pattern HCPHigh42210BIT :: H264CodecProfile
pattern HCPHigh42210BIT = H264CodecProfile' "HIGH_422_10BIT"

pattern HCPMain :: H264CodecProfile
pattern HCPMain = H264CodecProfile' "MAIN"

{-# COMPLETE
  HCPBaseline,
  HCPHigh,
  HCPHigh10BIT,
  HCPHigh422,
  HCPHigh42210BIT,
  HCPMain,
  H264CodecProfile'
  #-}

instance FromText H264CodecProfile where
  parser = (H264CodecProfile' . mk) <$> takeText

instance ToText H264CodecProfile where
  toText (H264CodecProfile' ci) = original ci

instance Hashable H264CodecProfile

instance NFData H264CodecProfile

instance ToByteString H264CodecProfile

instance ToQuery H264CodecProfile

instance ToHeader H264CodecProfile

instance ToJSON H264CodecProfile where
  toJSON = toJSONText

instance FromJSON H264CodecProfile where
  parseJSON = parseJSONText "H264CodecProfile"
