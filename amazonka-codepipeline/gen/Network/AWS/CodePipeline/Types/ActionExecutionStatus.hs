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
-- Module      : Network.AWS.CodePipeline.Types.ActionExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionExecutionStatus
  ( ActionExecutionStatus
      ( ..,
        ActionExecutionStatusAbandoned,
        ActionExecutionStatusFailed,
        ActionExecutionStatusInProgress,
        ActionExecutionStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionExecutionStatus = ActionExecutionStatus'
  { fromActionExecutionStatus ::
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

pattern ActionExecutionStatusAbandoned :: ActionExecutionStatus
pattern ActionExecutionStatusAbandoned = ActionExecutionStatus' "Abandoned"

pattern ActionExecutionStatusFailed :: ActionExecutionStatus
pattern ActionExecutionStatusFailed = ActionExecutionStatus' "Failed"

pattern ActionExecutionStatusInProgress :: ActionExecutionStatus
pattern ActionExecutionStatusInProgress = ActionExecutionStatus' "InProgress"

pattern ActionExecutionStatusSucceeded :: ActionExecutionStatus
pattern ActionExecutionStatusSucceeded = ActionExecutionStatus' "Succeeded"

{-# COMPLETE
  ActionExecutionStatusAbandoned,
  ActionExecutionStatusFailed,
  ActionExecutionStatusInProgress,
  ActionExecutionStatusSucceeded,
  ActionExecutionStatus'
  #-}

instance Prelude.FromText ActionExecutionStatus where
  parser = ActionExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionExecutionStatus where
  toText (ActionExecutionStatus' x) = x

instance Prelude.Hashable ActionExecutionStatus

instance Prelude.NFData ActionExecutionStatus

instance Prelude.ToByteString ActionExecutionStatus

instance Prelude.ToQuery ActionExecutionStatus

instance Prelude.ToHeader ActionExecutionStatus

instance Prelude.FromJSON ActionExecutionStatus where
  parseJSON = Prelude.parseJSONText "ActionExecutionStatus"
