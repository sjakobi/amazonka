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
-- Module      : Network.AWS.SSM.Types.InventoryDeletionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryDeletionStatus
  ( InventoryDeletionStatus
      ( ..,
        InventoryDeletionStatusComplete,
        InventoryDeletionStatusInProgress
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InventoryDeletionStatus = InventoryDeletionStatus'
  { fromInventoryDeletionStatus ::
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

pattern InventoryDeletionStatusComplete :: InventoryDeletionStatus
pattern InventoryDeletionStatusComplete = InventoryDeletionStatus' "Complete"

pattern InventoryDeletionStatusInProgress :: InventoryDeletionStatus
pattern InventoryDeletionStatusInProgress = InventoryDeletionStatus' "InProgress"

{-# COMPLETE
  InventoryDeletionStatusComplete,
  InventoryDeletionStatusInProgress,
  InventoryDeletionStatus'
  #-}

instance Prelude.FromText InventoryDeletionStatus where
  parser = InventoryDeletionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventoryDeletionStatus where
  toText (InventoryDeletionStatus' x) = x

instance Prelude.Hashable InventoryDeletionStatus

instance Prelude.NFData InventoryDeletionStatus

instance Prelude.ToByteString InventoryDeletionStatus

instance Prelude.ToQuery InventoryDeletionStatus

instance Prelude.ToHeader InventoryDeletionStatus

instance Prelude.FromJSON InventoryDeletionStatus where
  parseJSON = Prelude.parseJSONText "InventoryDeletionStatus"
