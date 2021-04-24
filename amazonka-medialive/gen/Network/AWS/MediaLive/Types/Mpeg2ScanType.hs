{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2ScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2ScanType
  ( Mpeg2ScanType
      ( ..,
        Interlaced,
        Progressive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mpeg2 Scan Type
data Mpeg2ScanType = Mpeg2ScanType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Interlaced :: Mpeg2ScanType
pattern Interlaced = Mpeg2ScanType' "INTERLACED"

pattern Progressive :: Mpeg2ScanType
pattern Progressive = Mpeg2ScanType' "PROGRESSIVE"

{-# COMPLETE
  Interlaced,
  Progressive,
  Mpeg2ScanType'
  #-}

instance FromText Mpeg2ScanType where
  parser = (Mpeg2ScanType' . mk) <$> takeText

instance ToText Mpeg2ScanType where
  toText (Mpeg2ScanType' ci) = original ci

instance Hashable Mpeg2ScanType

instance NFData Mpeg2ScanType

instance ToByteString Mpeg2ScanType

instance ToQuery Mpeg2ScanType

instance ToHeader Mpeg2ScanType

instance ToJSON Mpeg2ScanType where
  toJSON = toJSONText

instance FromJSON Mpeg2ScanType where
  parseJSON = parseJSONText "Mpeg2ScanType"
