{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EntityRecognizerDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntityRecognizerDataFormat
  ( EntityRecognizerDataFormat
      ( ..,
        AugmentedManifest,
        ComprehendCSV
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EntityRecognizerDataFormat
  = EntityRecognizerDataFormat'
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

pattern AugmentedManifest :: EntityRecognizerDataFormat
pattern AugmentedManifest = EntityRecognizerDataFormat' "AUGMENTED_MANIFEST"

pattern ComprehendCSV :: EntityRecognizerDataFormat
pattern ComprehendCSV = EntityRecognizerDataFormat' "COMPREHEND_CSV"

{-# COMPLETE
  AugmentedManifest,
  ComprehendCSV,
  EntityRecognizerDataFormat'
  #-}

instance FromText EntityRecognizerDataFormat where
  parser = (EntityRecognizerDataFormat' . mk) <$> takeText

instance ToText EntityRecognizerDataFormat where
  toText (EntityRecognizerDataFormat' ci) = original ci

instance Hashable EntityRecognizerDataFormat

instance NFData EntityRecognizerDataFormat

instance ToByteString EntityRecognizerDataFormat

instance ToQuery EntityRecognizerDataFormat

instance ToHeader EntityRecognizerDataFormat

instance ToJSON EntityRecognizerDataFormat where
  toJSON = toJSONText

instance FromJSON EntityRecognizerDataFormat where
  parseJSON = parseJSONText "EntityRecognizerDataFormat"
