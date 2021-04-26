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
-- Module      : Network.AWS.IoT.Types.JobExecutionFailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobExecutionFailureType
  ( JobExecutionFailureType
      ( ..,
        JobExecutionFailureTypeALL,
        JobExecutionFailureTypeFAILED,
        JobExecutionFailureTypeREJECTED,
        JobExecutionFailureTypeTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobExecutionFailureType = JobExecutionFailureType'
  { fromJobExecutionFailureType ::
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

pattern JobExecutionFailureTypeALL :: JobExecutionFailureType
pattern JobExecutionFailureTypeALL = JobExecutionFailureType' "ALL"

pattern JobExecutionFailureTypeFAILED :: JobExecutionFailureType
pattern JobExecutionFailureTypeFAILED = JobExecutionFailureType' "FAILED"

pattern JobExecutionFailureTypeREJECTED :: JobExecutionFailureType
pattern JobExecutionFailureTypeREJECTED = JobExecutionFailureType' "REJECTED"

pattern JobExecutionFailureTypeTIMEDOUT :: JobExecutionFailureType
pattern JobExecutionFailureTypeTIMEDOUT = JobExecutionFailureType' "TIMED_OUT"

{-# COMPLETE
  JobExecutionFailureTypeALL,
  JobExecutionFailureTypeFAILED,
  JobExecutionFailureTypeREJECTED,
  JobExecutionFailureTypeTIMEDOUT,
  JobExecutionFailureType'
  #-}

instance Prelude.FromText JobExecutionFailureType where
  parser = JobExecutionFailureType' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobExecutionFailureType where
  toText (JobExecutionFailureType' x) = x

instance Prelude.Hashable JobExecutionFailureType

instance Prelude.NFData JobExecutionFailureType

instance Prelude.ToByteString JobExecutionFailureType

instance Prelude.ToQuery JobExecutionFailureType

instance Prelude.ToHeader JobExecutionFailureType

instance Prelude.ToJSON JobExecutionFailureType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JobExecutionFailureType where
  parseJSON = Prelude.parseJSONText "JobExecutionFailureType"
