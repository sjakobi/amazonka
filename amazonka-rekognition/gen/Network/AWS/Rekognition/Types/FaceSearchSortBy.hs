{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.FaceSearchSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.FaceSearchSortBy
  ( FaceSearchSortBy
      ( ..,
        FSSBIndex,
        FSSBTimestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FaceSearchSortBy = FaceSearchSortBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FSSBIndex :: FaceSearchSortBy
pattern FSSBIndex = FaceSearchSortBy' "INDEX"

pattern FSSBTimestamp :: FaceSearchSortBy
pattern FSSBTimestamp = FaceSearchSortBy' "TIMESTAMP"

{-# COMPLETE
  FSSBIndex,
  FSSBTimestamp,
  FaceSearchSortBy'
  #-}

instance FromText FaceSearchSortBy where
  parser = (FaceSearchSortBy' . mk) <$> takeText

instance ToText FaceSearchSortBy where
  toText (FaceSearchSortBy' ci) = original ci

instance Hashable FaceSearchSortBy

instance NFData FaceSearchSortBy

instance ToByteString FaceSearchSortBy

instance ToQuery FaceSearchSortBy

instance ToHeader FaceSearchSortBy

instance ToJSON FaceSearchSortBy where
  toJSON = toJSONText
