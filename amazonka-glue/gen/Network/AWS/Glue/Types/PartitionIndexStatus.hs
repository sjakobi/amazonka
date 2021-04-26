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
-- Module      : Network.AWS.Glue.Types.PartitionIndexStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.PartitionIndexStatus
  ( PartitionIndexStatus
      ( ..,
        PartitionIndexStatusACTIVE,
        PartitionIndexStatusCREATING,
        PartitionIndexStatusDELETING,
        PartitionIndexStatusFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PartitionIndexStatus = PartitionIndexStatus'
  { fromPartitionIndexStatus ::
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

pattern PartitionIndexStatusACTIVE :: PartitionIndexStatus
pattern PartitionIndexStatusACTIVE = PartitionIndexStatus' "ACTIVE"

pattern PartitionIndexStatusCREATING :: PartitionIndexStatus
pattern PartitionIndexStatusCREATING = PartitionIndexStatus' "CREATING"

pattern PartitionIndexStatusDELETING :: PartitionIndexStatus
pattern PartitionIndexStatusDELETING = PartitionIndexStatus' "DELETING"

pattern PartitionIndexStatusFAILED :: PartitionIndexStatus
pattern PartitionIndexStatusFAILED = PartitionIndexStatus' "FAILED"

{-# COMPLETE
  PartitionIndexStatusACTIVE,
  PartitionIndexStatusCREATING,
  PartitionIndexStatusDELETING,
  PartitionIndexStatusFAILED,
  PartitionIndexStatus'
  #-}

instance Prelude.FromText PartitionIndexStatus where
  parser = PartitionIndexStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PartitionIndexStatus where
  toText (PartitionIndexStatus' x) = x

instance Prelude.Hashable PartitionIndexStatus

instance Prelude.NFData PartitionIndexStatus

instance Prelude.ToByteString PartitionIndexStatus

instance Prelude.ToQuery PartitionIndexStatus

instance Prelude.ToHeader PartitionIndexStatus

instance Prelude.FromJSON PartitionIndexStatus where
  parseJSON = Prelude.parseJSONText "PartitionIndexStatus"
