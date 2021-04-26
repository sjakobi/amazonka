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
-- Module      : Network.AWS.ElasticSearch.Types.ScheduledAutoTuneActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ScheduledAutoTuneActionType
  ( ScheduledAutoTuneActionType
      ( ..,
        ScheduledAutoTuneActionTypeJVMHEAPSIZETUNING,
        ScheduledAutoTuneActionTypeJVMYOUNGGENTUNING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING
-- and JVM_YOUNG_GEN_TUNING.
newtype ScheduledAutoTuneActionType = ScheduledAutoTuneActionType'
  { fromScheduledAutoTuneActionType ::
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

pattern ScheduledAutoTuneActionTypeJVMHEAPSIZETUNING :: ScheduledAutoTuneActionType
pattern ScheduledAutoTuneActionTypeJVMHEAPSIZETUNING = ScheduledAutoTuneActionType' "JVM_HEAP_SIZE_TUNING"

pattern ScheduledAutoTuneActionTypeJVMYOUNGGENTUNING :: ScheduledAutoTuneActionType
pattern ScheduledAutoTuneActionTypeJVMYOUNGGENTUNING = ScheduledAutoTuneActionType' "JVM_YOUNG_GEN_TUNING"

{-# COMPLETE
  ScheduledAutoTuneActionTypeJVMHEAPSIZETUNING,
  ScheduledAutoTuneActionTypeJVMYOUNGGENTUNING,
  ScheduledAutoTuneActionType'
  #-}

instance Prelude.FromText ScheduledAutoTuneActionType where
  parser = ScheduledAutoTuneActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduledAutoTuneActionType where
  toText (ScheduledAutoTuneActionType' x) = x

instance Prelude.Hashable ScheduledAutoTuneActionType

instance Prelude.NFData ScheduledAutoTuneActionType

instance Prelude.ToByteString ScheduledAutoTuneActionType

instance Prelude.ToQuery ScheduledAutoTuneActionType

instance Prelude.ToHeader ScheduledAutoTuneActionType

instance Prelude.FromJSON ScheduledAutoTuneActionType where
  parseJSON = Prelude.parseJSONText "ScheduledAutoTuneActionType"
