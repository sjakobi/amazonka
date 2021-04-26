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
-- Module      : Network.AWS.EC2.Types.ExportTaskState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExportTaskState
  ( ExportTaskState
      ( ..,
        ExportTaskStateActive,
        ExportTaskStateCancelled,
        ExportTaskStateCancelling,
        ExportTaskStateCompleted
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ExportTaskState = ExportTaskState'
  { fromExportTaskState ::
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

pattern ExportTaskStateActive :: ExportTaskState
pattern ExportTaskStateActive = ExportTaskState' "active"

pattern ExportTaskStateCancelled :: ExportTaskState
pattern ExportTaskStateCancelled = ExportTaskState' "cancelled"

pattern ExportTaskStateCancelling :: ExportTaskState
pattern ExportTaskStateCancelling = ExportTaskState' "cancelling"

pattern ExportTaskStateCompleted :: ExportTaskState
pattern ExportTaskStateCompleted = ExportTaskState' "completed"

{-# COMPLETE
  ExportTaskStateActive,
  ExportTaskStateCancelled,
  ExportTaskStateCancelling,
  ExportTaskStateCompleted,
  ExportTaskState'
  #-}

instance Prelude.FromText ExportTaskState where
  parser = ExportTaskState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportTaskState where
  toText (ExportTaskState' x) = x

instance Prelude.Hashable ExportTaskState

instance Prelude.NFData ExportTaskState

instance Prelude.ToByteString ExportTaskState

instance Prelude.ToQuery ExportTaskState

instance Prelude.ToHeader ExportTaskState

instance Prelude.FromXML ExportTaskState where
  parseXML = Prelude.parseXMLText "ExportTaskState"
