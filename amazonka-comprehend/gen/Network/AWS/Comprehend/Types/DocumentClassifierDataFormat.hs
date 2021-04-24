{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.DocumentClassifierDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.DocumentClassifierDataFormat
  ( DocumentClassifierDataFormat
      ( ..,
        DCDFAugmentedManifest,
        DCDFComprehendCSV
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentClassifierDataFormat
  = DocumentClassifierDataFormat'
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

pattern DCDFAugmentedManifest :: DocumentClassifierDataFormat
pattern DCDFAugmentedManifest = DocumentClassifierDataFormat' "AUGMENTED_MANIFEST"

pattern DCDFComprehendCSV :: DocumentClassifierDataFormat
pattern DCDFComprehendCSV = DocumentClassifierDataFormat' "COMPREHEND_CSV"

{-# COMPLETE
  DCDFAugmentedManifest,
  DCDFComprehendCSV,
  DocumentClassifierDataFormat'
  #-}

instance FromText DocumentClassifierDataFormat where
  parser = (DocumentClassifierDataFormat' . mk) <$> takeText

instance ToText DocumentClassifierDataFormat where
  toText (DocumentClassifierDataFormat' ci) = original ci

instance Hashable DocumentClassifierDataFormat

instance NFData DocumentClassifierDataFormat

instance ToByteString DocumentClassifierDataFormat

instance ToQuery DocumentClassifierDataFormat

instance ToHeader DocumentClassifierDataFormat

instance ToJSON DocumentClassifierDataFormat where
  toJSON = toJSONText

instance FromJSON DocumentClassifierDataFormat where
  parseJSON = parseJSONText "DocumentClassifierDataFormat"
