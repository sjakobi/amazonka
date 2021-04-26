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
-- Module      : Network.AWS.CloudFormation.Types.StackInstanceDetailedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackInstanceDetailedStatus
  ( StackInstanceDetailedStatus
      ( ..,
        StackInstanceDetailedStatusCANCELLED,
        StackInstanceDetailedStatusFAILED,
        StackInstanceDetailedStatusINOPERABLE,
        StackInstanceDetailedStatusPENDING,
        StackInstanceDetailedStatusRUNNING,
        StackInstanceDetailedStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackInstanceDetailedStatus = StackInstanceDetailedStatus'
  { fromStackInstanceDetailedStatus ::
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

pattern StackInstanceDetailedStatusCANCELLED :: StackInstanceDetailedStatus
pattern StackInstanceDetailedStatusCANCELLED = StackInstanceDetailedStatus' "CANCELLED"

pattern StackInstanceDetailedStatusFAILED :: StackInstanceDetailedStatus
pattern StackInstanceDetailedStatusFAILED = StackInstanceDetailedStatus' "FAILED"

pattern StackInstanceDetailedStatusINOPERABLE :: StackInstanceDetailedStatus
pattern StackInstanceDetailedStatusINOPERABLE = StackInstanceDetailedStatus' "INOPERABLE"

pattern StackInstanceDetailedStatusPENDING :: StackInstanceDetailedStatus
pattern StackInstanceDetailedStatusPENDING = StackInstanceDetailedStatus' "PENDING"

pattern StackInstanceDetailedStatusRUNNING :: StackInstanceDetailedStatus
pattern StackInstanceDetailedStatusRUNNING = StackInstanceDetailedStatus' "RUNNING"

pattern StackInstanceDetailedStatusSUCCEEDED :: StackInstanceDetailedStatus
pattern StackInstanceDetailedStatusSUCCEEDED = StackInstanceDetailedStatus' "SUCCEEDED"

{-# COMPLETE
  StackInstanceDetailedStatusCANCELLED,
  StackInstanceDetailedStatusFAILED,
  StackInstanceDetailedStatusINOPERABLE,
  StackInstanceDetailedStatusPENDING,
  StackInstanceDetailedStatusRUNNING,
  StackInstanceDetailedStatusSUCCEEDED,
  StackInstanceDetailedStatus'
  #-}

instance Prelude.FromText StackInstanceDetailedStatus where
  parser = StackInstanceDetailedStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackInstanceDetailedStatus where
  toText (StackInstanceDetailedStatus' x) = x

instance Prelude.Hashable StackInstanceDetailedStatus

instance Prelude.NFData StackInstanceDetailedStatus

instance Prelude.ToByteString StackInstanceDetailedStatus

instance Prelude.ToQuery StackInstanceDetailedStatus

instance Prelude.ToHeader StackInstanceDetailedStatus

instance Prelude.FromXML StackInstanceDetailedStatus where
  parseXML = Prelude.parseXMLText "StackInstanceDetailedStatus"
