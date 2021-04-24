{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TaskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskType
  ( TaskType
      ( ..,
        TTEvaluation,
        TTExportLabels,
        TTFindMatches,
        TTImportLabels,
        TTLabelingSetGeneration
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskType = TaskType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TTEvaluation :: TaskType
pattern TTEvaluation = TaskType' "EVALUATION"

pattern TTExportLabels :: TaskType
pattern TTExportLabels = TaskType' "EXPORT_LABELS"

pattern TTFindMatches :: TaskType
pattern TTFindMatches = TaskType' "FIND_MATCHES"

pattern TTImportLabels :: TaskType
pattern TTImportLabels = TaskType' "IMPORT_LABELS"

pattern TTLabelingSetGeneration :: TaskType
pattern TTLabelingSetGeneration = TaskType' "LABELING_SET_GENERATION"

{-# COMPLETE
  TTEvaluation,
  TTExportLabels,
  TTFindMatches,
  TTImportLabels,
  TTLabelingSetGeneration,
  TaskType'
  #-}

instance FromText TaskType where
  parser = (TaskType' . mk) <$> takeText

instance ToText TaskType where
  toText (TaskType' ci) = original ci

instance Hashable TaskType

instance NFData TaskType

instance ToByteString TaskType

instance ToQuery TaskType

instance ToHeader TaskType

instance ToJSON TaskType where
  toJSON = toJSONText

instance FromJSON TaskType where
  parseJSON = parseJSONText "TaskType"
