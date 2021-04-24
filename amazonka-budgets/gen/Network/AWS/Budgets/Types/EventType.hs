{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.EventType
  ( EventType
      ( ..,
        CreateAction,
        DeleteAction,
        ExecuteAction,
        System,
        UpdateAction
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventType = EventType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreateAction :: EventType
pattern CreateAction = EventType' "CREATE_ACTION"

pattern DeleteAction :: EventType
pattern DeleteAction = EventType' "DELETE_ACTION"

pattern ExecuteAction :: EventType
pattern ExecuteAction = EventType' "EXECUTE_ACTION"

pattern System :: EventType
pattern System = EventType' "SYSTEM"

pattern UpdateAction :: EventType
pattern UpdateAction = EventType' "UPDATE_ACTION"

{-# COMPLETE
  CreateAction,
  DeleteAction,
  ExecuteAction,
  System,
  UpdateAction,
  EventType'
  #-}

instance FromText EventType where
  parser = (EventType' . mk) <$> takeText

instance ToText EventType where
  toText (EventType' ci) = original ci

instance Hashable EventType

instance NFData EventType

instance ToByteString EventType

instance ToQuery EventType

instance ToHeader EventType

instance FromJSON EventType where
  parseJSON = parseJSONText "EventType"
