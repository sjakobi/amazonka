{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ExecutionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ExecutionType
  ( ExecutionType
      ( ..,
        ApproveBudgetAction,
        ResetBudgetAction,
        RetryBudgetAction,
        ReverseBudgetAction
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionType = ExecutionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ApproveBudgetAction :: ExecutionType
pattern ApproveBudgetAction = ExecutionType' "APPROVE_BUDGET_ACTION"

pattern ResetBudgetAction :: ExecutionType
pattern ResetBudgetAction = ExecutionType' "RESET_BUDGET_ACTION"

pattern RetryBudgetAction :: ExecutionType
pattern RetryBudgetAction = ExecutionType' "RETRY_BUDGET_ACTION"

pattern ReverseBudgetAction :: ExecutionType
pattern ReverseBudgetAction = ExecutionType' "REVERSE_BUDGET_ACTION"

{-# COMPLETE
  ApproveBudgetAction,
  ResetBudgetAction,
  RetryBudgetAction,
  ReverseBudgetAction,
  ExecutionType'
  #-}

instance FromText ExecutionType where
  parser = (ExecutionType' . mk) <$> takeText

instance ToText ExecutionType where
  toText (ExecutionType' ci) = original ci

instance Hashable ExecutionType

instance NFData ExecutionType

instance ToByteString ExecutionType

instance ToQuery ExecutionType

instance ToHeader ExecutionType

instance ToJSON ExecutionType where
  toJSON = toJSONText

instance FromJSON ExecutionType where
  parseJSON = parseJSONText "ExecutionType"
