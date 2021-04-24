{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.RepositoryTriggerEventEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.RepositoryTriggerEventEnum
  ( RepositoryTriggerEventEnum
      ( ..,
        All,
        CreateReference,
        DeleteReference,
        UpdateReference
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RepositoryTriggerEventEnum
  = RepositoryTriggerEventEnum'
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

pattern All :: RepositoryTriggerEventEnum
pattern All = RepositoryTriggerEventEnum' "all"

pattern CreateReference :: RepositoryTriggerEventEnum
pattern CreateReference = RepositoryTriggerEventEnum' "createReference"

pattern DeleteReference :: RepositoryTriggerEventEnum
pattern DeleteReference = RepositoryTriggerEventEnum' "deleteReference"

pattern UpdateReference :: RepositoryTriggerEventEnum
pattern UpdateReference = RepositoryTriggerEventEnum' "updateReference"

{-# COMPLETE
  All,
  CreateReference,
  DeleteReference,
  UpdateReference,
  RepositoryTriggerEventEnum'
  #-}

instance FromText RepositoryTriggerEventEnum where
  parser = (RepositoryTriggerEventEnum' . mk) <$> takeText

instance ToText RepositoryTriggerEventEnum where
  toText (RepositoryTriggerEventEnum' ci) = original ci

instance Hashable RepositoryTriggerEventEnum

instance NFData RepositoryTriggerEventEnum

instance ToByteString RepositoryTriggerEventEnum

instance ToQuery RepositoryTriggerEventEnum

instance ToHeader RepositoryTriggerEventEnum

instance ToJSON RepositoryTriggerEventEnum where
  toJSON = toJSONText

instance FromJSON RepositoryTriggerEventEnum where
  parseJSON = parseJSONText "RepositoryTriggerEventEnum"
