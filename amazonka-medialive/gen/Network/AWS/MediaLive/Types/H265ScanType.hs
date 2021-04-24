{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265ScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265ScanType
  ( H265ScanType
      ( ..,
        HInterlaced,
        HProgressive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Scan Type
data H265ScanType = H265ScanType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HInterlaced :: H265ScanType
pattern HInterlaced = H265ScanType' "INTERLACED"

pattern HProgressive :: H265ScanType
pattern HProgressive = H265ScanType' "PROGRESSIVE"

{-# COMPLETE
  HInterlaced,
  HProgressive,
  H265ScanType'
  #-}

instance FromText H265ScanType where
  parser = (H265ScanType' . mk) <$> takeText

instance ToText H265ScanType where
  toText (H265ScanType' ci) = original ci

instance Hashable H265ScanType

instance NFData H265ScanType

instance ToByteString H265ScanType

instance ToQuery H265ScanType

instance ToHeader H265ScanType

instance ToJSON H265ScanType where
  toJSON = toJSONText

instance FromJSON H265ScanType where
  parseJSON = parseJSONText "H265ScanType"
