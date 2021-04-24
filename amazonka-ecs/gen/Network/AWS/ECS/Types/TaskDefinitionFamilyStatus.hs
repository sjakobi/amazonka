{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskDefinitionFamilyStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionFamilyStatus
  ( TaskDefinitionFamilyStatus
      ( ..,
        TDFSActive,
        TDFSAll,
        TDFSInactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskDefinitionFamilyStatus
  = TaskDefinitionFamilyStatus'
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

pattern TDFSActive :: TaskDefinitionFamilyStatus
pattern TDFSActive = TaskDefinitionFamilyStatus' "ACTIVE"

pattern TDFSAll :: TaskDefinitionFamilyStatus
pattern TDFSAll = TaskDefinitionFamilyStatus' "ALL"

pattern TDFSInactive :: TaskDefinitionFamilyStatus
pattern TDFSInactive = TaskDefinitionFamilyStatus' "INACTIVE"

{-# COMPLETE
  TDFSActive,
  TDFSAll,
  TDFSInactive,
  TaskDefinitionFamilyStatus'
  #-}

instance FromText TaskDefinitionFamilyStatus where
  parser = (TaskDefinitionFamilyStatus' . mk) <$> takeText

instance ToText TaskDefinitionFamilyStatus where
  toText (TaskDefinitionFamilyStatus' ci) = original ci

instance Hashable TaskDefinitionFamilyStatus

instance NFData TaskDefinitionFamilyStatus

instance ToByteString TaskDefinitionFamilyStatus

instance ToQuery TaskDefinitionFamilyStatus

instance ToHeader TaskDefinitionFamilyStatus

instance ToJSON TaskDefinitionFamilyStatus where
  toJSON = toJSONText
