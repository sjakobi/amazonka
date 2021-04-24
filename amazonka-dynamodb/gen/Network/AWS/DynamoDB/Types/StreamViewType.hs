{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.StreamViewType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.StreamViewType
  ( StreamViewType
      ( ..,
        SVTKeysOnly,
        SVTNewAndOldImages,
        SVTNewImage,
        SVTOldImage
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StreamViewType = StreamViewType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SVTKeysOnly :: StreamViewType
pattern SVTKeysOnly = StreamViewType' "KEYS_ONLY"

pattern SVTNewAndOldImages :: StreamViewType
pattern SVTNewAndOldImages = StreamViewType' "NEW_AND_OLD_IMAGES"

pattern SVTNewImage :: StreamViewType
pattern SVTNewImage = StreamViewType' "NEW_IMAGE"

pattern SVTOldImage :: StreamViewType
pattern SVTOldImage = StreamViewType' "OLD_IMAGE"

{-# COMPLETE
  SVTKeysOnly,
  SVTNewAndOldImages,
  SVTNewImage,
  SVTOldImage,
  StreamViewType'
  #-}

instance FromText StreamViewType where
  parser = (StreamViewType' . mk) <$> takeText

instance ToText StreamViewType where
  toText (StreamViewType' ci) = original ci

instance Hashable StreamViewType

instance NFData StreamViewType

instance ToByteString StreamViewType

instance ToQuery StreamViewType

instance ToHeader StreamViewType

instance ToJSON StreamViewType where
  toJSON = toJSONText

instance FromJSON StreamViewType where
  parseJSON = parseJSONText "StreamViewType"
