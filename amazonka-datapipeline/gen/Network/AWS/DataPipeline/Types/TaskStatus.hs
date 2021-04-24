{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataPipeline.Types.TaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.TaskStatus
  ( TaskStatus
      ( ..,
        Failed,
        False',
        Finished
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskStatus = TaskStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: TaskStatus
pattern Failed = TaskStatus' "FAILED"

pattern False' :: TaskStatus
pattern False' = TaskStatus' "FALSE"

pattern Finished :: TaskStatus
pattern Finished = TaskStatus' "FINISHED"

{-# COMPLETE
  Failed,
  False',
  Finished,
  TaskStatus'
  #-}

instance FromText TaskStatus where
  parser = (TaskStatus' . mk) <$> takeText

instance ToText TaskStatus where
  toText (TaskStatus' ci) = original ci

instance Hashable TaskStatus

instance NFData TaskStatus

instance ToByteString TaskStatus

instance ToQuery TaskStatus

instance ToHeader TaskStatus

instance ToJSON TaskStatus where
  toJSON = toJSONText
