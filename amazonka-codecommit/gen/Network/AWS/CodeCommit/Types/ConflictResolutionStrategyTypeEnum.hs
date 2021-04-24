{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ConflictResolutionStrategyTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ConflictResolutionStrategyTypeEnum
  ( ConflictResolutionStrategyTypeEnum
      ( ..,
        AcceptDestination,
        AcceptSource,
        Automerge,
        None
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConflictResolutionStrategyTypeEnum
  = ConflictResolutionStrategyTypeEnum'
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

pattern AcceptDestination :: ConflictResolutionStrategyTypeEnum
pattern AcceptDestination = ConflictResolutionStrategyTypeEnum' "ACCEPT_DESTINATION"

pattern AcceptSource :: ConflictResolutionStrategyTypeEnum
pattern AcceptSource = ConflictResolutionStrategyTypeEnum' "ACCEPT_SOURCE"

pattern Automerge :: ConflictResolutionStrategyTypeEnum
pattern Automerge = ConflictResolutionStrategyTypeEnum' "AUTOMERGE"

pattern None :: ConflictResolutionStrategyTypeEnum
pattern None = ConflictResolutionStrategyTypeEnum' "NONE"

{-# COMPLETE
  AcceptDestination,
  AcceptSource,
  Automerge,
  None,
  ConflictResolutionStrategyTypeEnum'
  #-}

instance FromText ConflictResolutionStrategyTypeEnum where
  parser = (ConflictResolutionStrategyTypeEnum' . mk) <$> takeText

instance ToText ConflictResolutionStrategyTypeEnum where
  toText (ConflictResolutionStrategyTypeEnum' ci) = original ci

instance Hashable ConflictResolutionStrategyTypeEnum

instance NFData ConflictResolutionStrategyTypeEnum

instance ToByteString ConflictResolutionStrategyTypeEnum

instance ToQuery ConflictResolutionStrategyTypeEnum

instance ToHeader ConflictResolutionStrategyTypeEnum

instance ToJSON ConflictResolutionStrategyTypeEnum where
  toJSON = toJSONText
