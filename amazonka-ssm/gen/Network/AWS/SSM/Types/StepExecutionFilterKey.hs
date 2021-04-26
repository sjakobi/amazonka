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
-- Module      : Network.AWS.SSM.Types.StepExecutionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.StepExecutionFilterKey
  ( StepExecutionFilterKey
      ( ..,
        StepExecutionFilterKeyAction,
        StepExecutionFilterKeyStartTimeAfter,
        StepExecutionFilterKeyStartTimeBefore,
        StepExecutionFilterKeyStepExecutionId,
        StepExecutionFilterKeyStepExecutionStatus,
        StepExecutionFilterKeyStepName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StepExecutionFilterKey = StepExecutionFilterKey'
  { fromStepExecutionFilterKey ::
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

pattern StepExecutionFilterKeyAction :: StepExecutionFilterKey
pattern StepExecutionFilterKeyAction = StepExecutionFilterKey' "Action"

pattern StepExecutionFilterKeyStartTimeAfter :: StepExecutionFilterKey
pattern StepExecutionFilterKeyStartTimeAfter = StepExecutionFilterKey' "StartTimeAfter"

pattern StepExecutionFilterKeyStartTimeBefore :: StepExecutionFilterKey
pattern StepExecutionFilterKeyStartTimeBefore = StepExecutionFilterKey' "StartTimeBefore"

pattern StepExecutionFilterKeyStepExecutionId :: StepExecutionFilterKey
pattern StepExecutionFilterKeyStepExecutionId = StepExecutionFilterKey' "StepExecutionId"

pattern StepExecutionFilterKeyStepExecutionStatus :: StepExecutionFilterKey
pattern StepExecutionFilterKeyStepExecutionStatus = StepExecutionFilterKey' "StepExecutionStatus"

pattern StepExecutionFilterKeyStepName :: StepExecutionFilterKey
pattern StepExecutionFilterKeyStepName = StepExecutionFilterKey' "StepName"

{-# COMPLETE
  StepExecutionFilterKeyAction,
  StepExecutionFilterKeyStartTimeAfter,
  StepExecutionFilterKeyStartTimeBefore,
  StepExecutionFilterKeyStepExecutionId,
  StepExecutionFilterKeyStepExecutionStatus,
  StepExecutionFilterKeyStepName,
  StepExecutionFilterKey'
  #-}

instance Prelude.FromText StepExecutionFilterKey where
  parser = StepExecutionFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText StepExecutionFilterKey where
  toText (StepExecutionFilterKey' x) = x

instance Prelude.Hashable StepExecutionFilterKey

instance Prelude.NFData StepExecutionFilterKey

instance Prelude.ToByteString StepExecutionFilterKey

instance Prelude.ToQuery StepExecutionFilterKey

instance Prelude.ToHeader StepExecutionFilterKey

instance Prelude.ToJSON StepExecutionFilterKey where
  toJSON = Prelude.toJSONText
