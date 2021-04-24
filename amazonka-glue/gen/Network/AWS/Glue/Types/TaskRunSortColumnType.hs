{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TaskRunSortColumnType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskRunSortColumnType
  ( TaskRunSortColumnType
      ( ..,
        TRSCTStarted,
        TRSCTStatus,
        TRSCTTaskRunType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskRunSortColumnType
  = TaskRunSortColumnType'
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

pattern TRSCTStarted :: TaskRunSortColumnType
pattern TRSCTStarted = TaskRunSortColumnType' "STARTED"

pattern TRSCTStatus :: TaskRunSortColumnType
pattern TRSCTStatus = TaskRunSortColumnType' "STATUS"

pattern TRSCTTaskRunType :: TaskRunSortColumnType
pattern TRSCTTaskRunType = TaskRunSortColumnType' "TASK_RUN_TYPE"

{-# COMPLETE
  TRSCTStarted,
  TRSCTStatus,
  TRSCTTaskRunType,
  TaskRunSortColumnType'
  #-}

instance FromText TaskRunSortColumnType where
  parser = (TaskRunSortColumnType' . mk) <$> takeText

instance ToText TaskRunSortColumnType where
  toText (TaskRunSortColumnType' ci) = original ci

instance Hashable TaskRunSortColumnType

instance NFData TaskRunSortColumnType

instance ToByteString TaskRunSortColumnType

instance ToQuery TaskRunSortColumnType

instance ToHeader TaskRunSortColumnType

instance ToJSON TaskRunSortColumnType where
  toJSON = toJSONText
