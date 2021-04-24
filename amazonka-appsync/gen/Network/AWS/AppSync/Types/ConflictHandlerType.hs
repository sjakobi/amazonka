{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.ConflictHandlerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.ConflictHandlerType
  ( ConflictHandlerType
      ( ..,
        Automerge,
        Lambda,
        None,
        OptimisticConcurrency
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConflictHandlerType
  = ConflictHandlerType'
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

pattern Automerge :: ConflictHandlerType
pattern Automerge = ConflictHandlerType' "AUTOMERGE"

pattern Lambda :: ConflictHandlerType
pattern Lambda = ConflictHandlerType' "LAMBDA"

pattern None :: ConflictHandlerType
pattern None = ConflictHandlerType' "NONE"

pattern OptimisticConcurrency :: ConflictHandlerType
pattern OptimisticConcurrency = ConflictHandlerType' "OPTIMISTIC_CONCURRENCY"

{-# COMPLETE
  Automerge,
  Lambda,
  None,
  OptimisticConcurrency,
  ConflictHandlerType'
  #-}

instance FromText ConflictHandlerType where
  parser = (ConflictHandlerType' . mk) <$> takeText

instance ToText ConflictHandlerType where
  toText (ConflictHandlerType' ci) = original ci

instance Hashable ConflictHandlerType

instance NFData ConflictHandlerType

instance ToByteString ConflictHandlerType

instance ToQuery ConflictHandlerType

instance ToHeader ConflictHandlerType

instance ToJSON ConflictHandlerType where
  toJSON = toJSONText

instance FromJSON ConflictHandlerType where
  parseJSON = parseJSONText "ConflictHandlerType"
