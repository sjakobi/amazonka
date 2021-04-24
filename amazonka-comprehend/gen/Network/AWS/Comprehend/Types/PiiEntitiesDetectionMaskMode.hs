{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
  ( PiiEntitiesDetectionMaskMode
      ( ..,
        Mask,
        ReplaceWithPiiEntityType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PiiEntitiesDetectionMaskMode
  = PiiEntitiesDetectionMaskMode'
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

pattern Mask :: PiiEntitiesDetectionMaskMode
pattern Mask = PiiEntitiesDetectionMaskMode' "MASK"

pattern ReplaceWithPiiEntityType :: PiiEntitiesDetectionMaskMode
pattern ReplaceWithPiiEntityType = PiiEntitiesDetectionMaskMode' "REPLACE_WITH_PII_ENTITY_TYPE"

{-# COMPLETE
  Mask,
  ReplaceWithPiiEntityType,
  PiiEntitiesDetectionMaskMode'
  #-}

instance FromText PiiEntitiesDetectionMaskMode where
  parser = (PiiEntitiesDetectionMaskMode' . mk) <$> takeText

instance ToText PiiEntitiesDetectionMaskMode where
  toText (PiiEntitiesDetectionMaskMode' ci) = original ci

instance Hashable PiiEntitiesDetectionMaskMode

instance NFData PiiEntitiesDetectionMaskMode

instance ToByteString PiiEntitiesDetectionMaskMode

instance ToQuery PiiEntitiesDetectionMaskMode

instance ToHeader PiiEntitiesDetectionMaskMode

instance ToJSON PiiEntitiesDetectionMaskMode where
  toJSON = toJSONText

instance FromJSON PiiEntitiesDetectionMaskMode where
  parseJSON = parseJSONText "PiiEntitiesDetectionMaskMode"
