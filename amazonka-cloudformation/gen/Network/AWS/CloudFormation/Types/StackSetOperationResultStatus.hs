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
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
  ( StackSetOperationResultStatus
      ( ..,
        StackSetOperationResultStatusCANCELLED,
        StackSetOperationResultStatusFAILED,
        StackSetOperationResultStatusPENDING,
        StackSetOperationResultStatusRUNNING,
        StackSetOperationResultStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetOperationResultStatus = StackSetOperationResultStatus'
  { fromStackSetOperationResultStatus ::
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

pattern StackSetOperationResultStatusCANCELLED :: StackSetOperationResultStatus
pattern StackSetOperationResultStatusCANCELLED = StackSetOperationResultStatus' "CANCELLED"

pattern StackSetOperationResultStatusFAILED :: StackSetOperationResultStatus
pattern StackSetOperationResultStatusFAILED = StackSetOperationResultStatus' "FAILED"

pattern StackSetOperationResultStatusPENDING :: StackSetOperationResultStatus
pattern StackSetOperationResultStatusPENDING = StackSetOperationResultStatus' "PENDING"

pattern StackSetOperationResultStatusRUNNING :: StackSetOperationResultStatus
pattern StackSetOperationResultStatusRUNNING = StackSetOperationResultStatus' "RUNNING"

pattern StackSetOperationResultStatusSUCCEEDED :: StackSetOperationResultStatus
pattern StackSetOperationResultStatusSUCCEEDED = StackSetOperationResultStatus' "SUCCEEDED"

{-# COMPLETE
  StackSetOperationResultStatusCANCELLED,
  StackSetOperationResultStatusFAILED,
  StackSetOperationResultStatusPENDING,
  StackSetOperationResultStatusRUNNING,
  StackSetOperationResultStatusSUCCEEDED,
  StackSetOperationResultStatus'
  #-}

instance Prelude.FromText StackSetOperationResultStatus where
  parser = StackSetOperationResultStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackSetOperationResultStatus where
  toText (StackSetOperationResultStatus' x) = x

instance Prelude.Hashable StackSetOperationResultStatus

instance Prelude.NFData StackSetOperationResultStatus

instance Prelude.ToByteString StackSetOperationResultStatus

instance Prelude.ToQuery StackSetOperationResultStatus

instance Prelude.ToHeader StackSetOperationResultStatus

instance Prelude.FromXML StackSetOperationResultStatus where
  parseXML = Prelude.parseXMLText "StackSetOperationResultStatus"
