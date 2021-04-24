{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.CelebrityRecognitionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.CelebrityRecognitionSortBy
  ( CelebrityRecognitionSortBy
      ( ..,
        CRSBId,
        CRSBTimestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CelebrityRecognitionSortBy
  = CelebrityRecognitionSortBy'
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

pattern CRSBId :: CelebrityRecognitionSortBy
pattern CRSBId = CelebrityRecognitionSortBy' "ID"

pattern CRSBTimestamp :: CelebrityRecognitionSortBy
pattern CRSBTimestamp = CelebrityRecognitionSortBy' "TIMESTAMP"

{-# COMPLETE
  CRSBId,
  CRSBTimestamp,
  CelebrityRecognitionSortBy'
  #-}

instance FromText CelebrityRecognitionSortBy where
  parser = (CelebrityRecognitionSortBy' . mk) <$> takeText

instance ToText CelebrityRecognitionSortBy where
  toText (CelebrityRecognitionSortBy' ci) = original ci

instance Hashable CelebrityRecognitionSortBy

instance NFData CelebrityRecognitionSortBy

instance ToByteString CelebrityRecognitionSortBy

instance ToQuery CelebrityRecognitionSortBy

instance ToHeader CelebrityRecognitionSortBy

instance ToJSON CelebrityRecognitionSortBy where
  toJSON = toJSONText
