{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.LabelDetectionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.LabelDetectionSortBy
  ( LabelDetectionSortBy
      ( ..,
        Name,
        Timestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LabelDetectionSortBy
  = LabelDetectionSortBy'
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

pattern Name :: LabelDetectionSortBy
pattern Name = LabelDetectionSortBy' "NAME"

pattern Timestamp :: LabelDetectionSortBy
pattern Timestamp = LabelDetectionSortBy' "TIMESTAMP"

{-# COMPLETE
  Name,
  Timestamp,
  LabelDetectionSortBy'
  #-}

instance FromText LabelDetectionSortBy where
  parser = (LabelDetectionSortBy' . mk) <$> takeText

instance ToText LabelDetectionSortBy where
  toText (LabelDetectionSortBy' ci) = original ci

instance Hashable LabelDetectionSortBy

instance NFData LabelDetectionSortBy

instance ToByteString LabelDetectionSortBy

instance ToQuery LabelDetectionSortBy

instance ToHeader LabelDetectionSortBy

instance ToJSON LabelDetectionSortBy where
  toJSON = toJSONText
