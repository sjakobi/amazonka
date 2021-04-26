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
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetOperationStatus
  ( StackSetOperationStatus
      ( ..,
        StackSetOperationStatusFAILED,
        StackSetOperationStatusQUEUED,
        StackSetOperationStatusRUNNING,
        StackSetOperationStatusSTOPPED,
        StackSetOperationStatusSTOPPING,
        StackSetOperationStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetOperationStatus = StackSetOperationStatus'
  { fromStackSetOperationStatus ::
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

pattern StackSetOperationStatusFAILED :: StackSetOperationStatus
pattern StackSetOperationStatusFAILED = StackSetOperationStatus' "FAILED"

pattern StackSetOperationStatusQUEUED :: StackSetOperationStatus
pattern StackSetOperationStatusQUEUED = StackSetOperationStatus' "QUEUED"

pattern StackSetOperationStatusRUNNING :: StackSetOperationStatus
pattern StackSetOperationStatusRUNNING = StackSetOperationStatus' "RUNNING"

pattern StackSetOperationStatusSTOPPED :: StackSetOperationStatus
pattern StackSetOperationStatusSTOPPED = StackSetOperationStatus' "STOPPED"

pattern StackSetOperationStatusSTOPPING :: StackSetOperationStatus
pattern StackSetOperationStatusSTOPPING = StackSetOperationStatus' "STOPPING"

pattern StackSetOperationStatusSUCCEEDED :: StackSetOperationStatus
pattern StackSetOperationStatusSUCCEEDED = StackSetOperationStatus' "SUCCEEDED"

{-# COMPLETE
  StackSetOperationStatusFAILED,
  StackSetOperationStatusQUEUED,
  StackSetOperationStatusRUNNING,
  StackSetOperationStatusSTOPPED,
  StackSetOperationStatusSTOPPING,
  StackSetOperationStatusSUCCEEDED,
  StackSetOperationStatus'
  #-}

instance Prelude.FromText StackSetOperationStatus where
  parser = StackSetOperationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackSetOperationStatus where
  toText (StackSetOperationStatus' x) = x

instance Prelude.Hashable StackSetOperationStatus

instance Prelude.NFData StackSetOperationStatus

instance Prelude.ToByteString StackSetOperationStatus

instance Prelude.ToQuery StackSetOperationStatus

instance Prelude.ToHeader StackSetOperationStatus

instance Prelude.FromXML StackSetOperationStatus where
  parseXML = Prelude.parseXMLText "StackSetOperationStatus"
