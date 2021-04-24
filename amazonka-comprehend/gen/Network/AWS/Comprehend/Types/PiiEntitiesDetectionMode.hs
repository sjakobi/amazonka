{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode
  ( PiiEntitiesDetectionMode
      ( ..,
        OnlyOffsets,
        OnlyRedaction
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PiiEntitiesDetectionMode
  = PiiEntitiesDetectionMode'
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

pattern OnlyOffsets :: PiiEntitiesDetectionMode
pattern OnlyOffsets = PiiEntitiesDetectionMode' "ONLY_OFFSETS"

pattern OnlyRedaction :: PiiEntitiesDetectionMode
pattern OnlyRedaction = PiiEntitiesDetectionMode' "ONLY_REDACTION"

{-# COMPLETE
  OnlyOffsets,
  OnlyRedaction,
  PiiEntitiesDetectionMode'
  #-}

instance FromText PiiEntitiesDetectionMode where
  parser = (PiiEntitiesDetectionMode' . mk) <$> takeText

instance ToText PiiEntitiesDetectionMode where
  toText (PiiEntitiesDetectionMode' ci) = original ci

instance Hashable PiiEntitiesDetectionMode

instance NFData PiiEntitiesDetectionMode

instance ToByteString PiiEntitiesDetectionMode

instance ToQuery PiiEntitiesDetectionMode

instance ToHeader PiiEntitiesDetectionMode

instance ToJSON PiiEntitiesDetectionMode where
  toJSON = toJSONText

instance FromJSON PiiEntitiesDetectionMode where
  parseJSON = parseJSONText "PiiEntitiesDetectionMode"
