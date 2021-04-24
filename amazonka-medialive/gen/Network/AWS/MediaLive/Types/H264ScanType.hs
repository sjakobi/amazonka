{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264ScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ScanType
  ( H264ScanType
      ( ..,
        HSTInterlaced,
        HSTProgressive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Scan Type
data H264ScanType = H264ScanType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HSTInterlaced :: H264ScanType
pattern HSTInterlaced = H264ScanType' "INTERLACED"

pattern HSTProgressive :: H264ScanType
pattern HSTProgressive = H264ScanType' "PROGRESSIVE"

{-# COMPLETE
  HSTInterlaced,
  HSTProgressive,
  H264ScanType'
  #-}

instance FromText H264ScanType where
  parser = (H264ScanType' . mk) <$> takeText

instance ToText H264ScanType where
  toText (H264ScanType' ci) = original ci

instance Hashable H264ScanType

instance NFData H264ScanType

instance ToByteString H264ScanType

instance ToQuery H264ScanType

instance ToHeader H264ScanType

instance ToJSON H264ScanType where
  toJSON = toJSONText

instance FromJSON H264ScanType where
  parseJSON = parseJSONText "H264ScanType"
