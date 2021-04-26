{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ExecutionTypeAPPROVEBUDGETACTION,
        ExecutionTypeRESETBUDGETACTION,
        ExecutionTypeRETRYBUDGETACTION,
        ExecutionTypeREVERSEBUDGETACTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionType = ExecutionType'
  { fromExecutionType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ExecutionTypeAPPROVEBUDGETACTION :: ExecutionType
pattern ExecutionTypeAPPROVEBUDGETACTION = ExecutionType' "APPROVE_BUDGET_ACTION"

pattern ExecutionTypeRESETBUDGETACTION :: ExecutionType
pattern ExecutionTypeRESETBUDGETACTION = ExecutionType' "RESET_BUDGET_ACTION"

pattern ExecutionTypeRETRYBUDGETACTION :: ExecutionType
pattern ExecutionTypeRETRYBUDGETACTION = ExecutionType' "RETRY_BUDGET_ACTION"

pattern ExecutionTypeREVERSEBUDGETACTION :: ExecutionType
pattern ExecutionTypeREVERSEBUDGETACTION = ExecutionType' "REVERSE_BUDGET_ACTION"

{-# COMPLETE
  ExecutionTypeAPPROVEBUDGETACTION,
  ExecutionTypeRESETBUDGETACTION,
  ExecutionTypeRETRYBUDGETACTION,
  ExecutionTypeREVERSEBUDGETACTION,
  ExecutionType'
  #-}

instance Prelude.FromText ExecutionType where
  parser = ExecutionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionType where
  toText (ExecutionType' x) = x

instance Prelude.Hashable ExecutionType

instance Prelude.NFData ExecutionType

instance Prelude.ToByteString ExecutionType

instance Prelude.ToQuery ExecutionType

instance Prelude.ToHeader ExecutionType

instance Prelude.ToJSON ExecutionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExecutionType where
  parseJSON = Prelude.parseJSONText "ExecutionType"
