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
-- Module      : Network.AWS.Lightsail.Types.OperationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.OperationStatus
  ( OperationStatus
      ( ..,
        OperationStatusCompleted,
        OperationStatusFailed,
        OperationStatusNotStarted,
        OperationStatusStarted,
        OperationStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperationStatus = OperationStatus'
  { fromOperationStatus ::
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

pattern OperationStatusCompleted :: OperationStatus
pattern OperationStatusCompleted = OperationStatus' "Completed"

pattern OperationStatusFailed :: OperationStatus
pattern OperationStatusFailed = OperationStatus' "Failed"

pattern OperationStatusNotStarted :: OperationStatus
pattern OperationStatusNotStarted = OperationStatus' "NotStarted"

pattern OperationStatusStarted :: OperationStatus
pattern OperationStatusStarted = OperationStatus' "Started"

pattern OperationStatusSucceeded :: OperationStatus
pattern OperationStatusSucceeded = OperationStatus' "Succeeded"

{-# COMPLETE
  OperationStatusCompleted,
  OperationStatusFailed,
  OperationStatusNotStarted,
  OperationStatusStarted,
  OperationStatusSucceeded,
  OperationStatus'
  #-}

instance Prelude.FromText OperationStatus where
  parser = OperationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperationStatus where
  toText (OperationStatus' x) = x

instance Prelude.Hashable OperationStatus

instance Prelude.NFData OperationStatus

instance Prelude.ToByteString OperationStatus

instance Prelude.ToQuery OperationStatus

instance Prelude.ToHeader OperationStatus

instance Prelude.FromJSON OperationStatus where
  parseJSON = Prelude.parseJSONText "OperationStatus"
