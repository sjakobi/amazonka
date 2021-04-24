{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CommandFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandFilterKey
  ( CommandFilterKey
      ( ..,
        CommandDocumentName,
        CommandExecutionStage,
        CommandInvokedAfter,
        CommandInvokedBefore,
        CommandStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CommandFilterKey = CommandFilterKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CommandDocumentName :: CommandFilterKey
pattern CommandDocumentName = CommandFilterKey' "DocumentName"

pattern CommandExecutionStage :: CommandFilterKey
pattern CommandExecutionStage = CommandFilterKey' "ExecutionStage"

pattern CommandInvokedAfter :: CommandFilterKey
pattern CommandInvokedAfter = CommandFilterKey' "InvokedAfter"

pattern CommandInvokedBefore :: CommandFilterKey
pattern CommandInvokedBefore = CommandFilterKey' "InvokedBefore"

pattern CommandStatus :: CommandFilterKey
pattern CommandStatus = CommandFilterKey' "Status"

{-# COMPLETE
  CommandDocumentName,
  CommandExecutionStage,
  CommandInvokedAfter,
  CommandInvokedBefore,
  CommandStatus,
  CommandFilterKey'
  #-}

instance FromText CommandFilterKey where
  parser = (CommandFilterKey' . mk) <$> takeText

instance ToText CommandFilterKey where
  toText (CommandFilterKey' ci) = original ci

instance Hashable CommandFilterKey

instance NFData CommandFilterKey

instance ToByteString CommandFilterKey

instance ToQuery CommandFilterKey

instance ToHeader CommandFilterKey

instance ToJSON CommandFilterKey where
  toJSON = toJSONText
