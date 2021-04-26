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
-- Module      : Network.AWS.MigrationHub.Types.MigrationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.MigrationStatus
  ( MigrationStatus
      ( ..,
        MigrationStatusCOMPLETED,
        MigrationStatusFAILED,
        MigrationStatusINPROGRESS,
        MigrationStatusNOTSTARTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MigrationStatus = MigrationStatus'
  { fromMigrationStatus ::
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

pattern MigrationStatusCOMPLETED :: MigrationStatus
pattern MigrationStatusCOMPLETED = MigrationStatus' "COMPLETED"

pattern MigrationStatusFAILED :: MigrationStatus
pattern MigrationStatusFAILED = MigrationStatus' "FAILED"

pattern MigrationStatusINPROGRESS :: MigrationStatus
pattern MigrationStatusINPROGRESS = MigrationStatus' "IN_PROGRESS"

pattern MigrationStatusNOTSTARTED :: MigrationStatus
pattern MigrationStatusNOTSTARTED = MigrationStatus' "NOT_STARTED"

{-# COMPLETE
  MigrationStatusCOMPLETED,
  MigrationStatusFAILED,
  MigrationStatusINPROGRESS,
  MigrationStatusNOTSTARTED,
  MigrationStatus'
  #-}

instance Prelude.FromText MigrationStatus where
  parser = MigrationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MigrationStatus where
  toText (MigrationStatus' x) = x

instance Prelude.Hashable MigrationStatus

instance Prelude.NFData MigrationStatus

instance Prelude.ToByteString MigrationStatus

instance Prelude.ToQuery MigrationStatus

instance Prelude.ToHeader MigrationStatus

instance Prelude.ToJSON MigrationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MigrationStatus where
  parseJSON = Prelude.parseJSONText "MigrationStatus"
