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
-- Module      : Network.AWS.Glue.Types.TaskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskType
  ( TaskType
      ( ..,
        TaskTypeEVALUATION,
        TaskTypeEXPORTLABELS,
        TaskTypeFINDMATCHES,
        TaskTypeIMPORTLABELS,
        TaskTypeLABELINGSETGENERATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskType = TaskType'
  { fromTaskType ::
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

pattern TaskTypeEVALUATION :: TaskType
pattern TaskTypeEVALUATION = TaskType' "EVALUATION"

pattern TaskTypeEXPORTLABELS :: TaskType
pattern TaskTypeEXPORTLABELS = TaskType' "EXPORT_LABELS"

pattern TaskTypeFINDMATCHES :: TaskType
pattern TaskTypeFINDMATCHES = TaskType' "FIND_MATCHES"

pattern TaskTypeIMPORTLABELS :: TaskType
pattern TaskTypeIMPORTLABELS = TaskType' "IMPORT_LABELS"

pattern TaskTypeLABELINGSETGENERATION :: TaskType
pattern TaskTypeLABELINGSETGENERATION = TaskType' "LABELING_SET_GENERATION"

{-# COMPLETE
  TaskTypeEVALUATION,
  TaskTypeEXPORTLABELS,
  TaskTypeFINDMATCHES,
  TaskTypeIMPORTLABELS,
  TaskTypeLABELINGSETGENERATION,
  TaskType'
  #-}

instance Prelude.FromText TaskType where
  parser = TaskType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskType where
  toText (TaskType' x) = x

instance Prelude.Hashable TaskType

instance Prelude.NFData TaskType

instance Prelude.ToByteString TaskType

instance Prelude.ToQuery TaskType

instance Prelude.ToHeader TaskType

instance Prelude.ToJSON TaskType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TaskType where
  parseJSON = Prelude.parseJSONText "TaskType"
