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
-- Module      : Network.AWS.DeviceFarm.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ExecutionStatusCOMPLETED,
        ExecutionStatusPENDING,
        ExecutionStatusPENDINGCONCURRENCY,
        ExecutionStatusPENDINGDEVICE,
        ExecutionStatusPREPARING,
        ExecutionStatusPROCESSING,
        ExecutionStatusRUNNING,
        ExecutionStatusSCHEDULING,
        ExecutionStatusSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionStatus = ExecutionStatus'
  { fromExecutionStatus ::
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

pattern ExecutionStatusCOMPLETED :: ExecutionStatus
pattern ExecutionStatusCOMPLETED = ExecutionStatus' "COMPLETED"

pattern ExecutionStatusPENDING :: ExecutionStatus
pattern ExecutionStatusPENDING = ExecutionStatus' "PENDING"

pattern ExecutionStatusPENDINGCONCURRENCY :: ExecutionStatus
pattern ExecutionStatusPENDINGCONCURRENCY = ExecutionStatus' "PENDING_CONCURRENCY"

pattern ExecutionStatusPENDINGDEVICE :: ExecutionStatus
pattern ExecutionStatusPENDINGDEVICE = ExecutionStatus' "PENDING_DEVICE"

pattern ExecutionStatusPREPARING :: ExecutionStatus
pattern ExecutionStatusPREPARING = ExecutionStatus' "PREPARING"

pattern ExecutionStatusPROCESSING :: ExecutionStatus
pattern ExecutionStatusPROCESSING = ExecutionStatus' "PROCESSING"

pattern ExecutionStatusRUNNING :: ExecutionStatus
pattern ExecutionStatusRUNNING = ExecutionStatus' "RUNNING"

pattern ExecutionStatusSCHEDULING :: ExecutionStatus
pattern ExecutionStatusSCHEDULING = ExecutionStatus' "SCHEDULING"

pattern ExecutionStatusSTOPPING :: ExecutionStatus
pattern ExecutionStatusSTOPPING = ExecutionStatus' "STOPPING"

{-# COMPLETE
  ExecutionStatusCOMPLETED,
  ExecutionStatusPENDING,
  ExecutionStatusPENDINGCONCURRENCY,
  ExecutionStatusPENDINGDEVICE,
  ExecutionStatusPREPARING,
  ExecutionStatusPROCESSING,
  ExecutionStatusRUNNING,
  ExecutionStatusSCHEDULING,
  ExecutionStatusSTOPPING,
  ExecutionStatus'
  #-}

instance Prelude.FromText ExecutionStatus where
  parser = ExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionStatus where
  toText (ExecutionStatus' x) = x

instance Prelude.Hashable ExecutionStatus

instance Prelude.NFData ExecutionStatus

instance Prelude.ToByteString ExecutionStatus

instance Prelude.ToQuery ExecutionStatus

instance Prelude.ToHeader ExecutionStatus

instance Prelude.FromJSON ExecutionStatus where
  parseJSON = Prelude.parseJSONText "ExecutionStatus"
