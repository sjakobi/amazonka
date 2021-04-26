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
-- Module      : Network.AWS.IAM.Types.DeletionTaskStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.DeletionTaskStatusType
  ( DeletionTaskStatusType
      ( ..,
        DeletionTaskStatusTypeFAILED,
        DeletionTaskStatusTypeINPROGRESS,
        DeletionTaskStatusTypeNOTSTARTED,
        DeletionTaskStatusTypeSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeletionTaskStatusType = DeletionTaskStatusType'
  { fromDeletionTaskStatusType ::
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

pattern DeletionTaskStatusTypeFAILED :: DeletionTaskStatusType
pattern DeletionTaskStatusTypeFAILED = DeletionTaskStatusType' "FAILED"

pattern DeletionTaskStatusTypeINPROGRESS :: DeletionTaskStatusType
pattern DeletionTaskStatusTypeINPROGRESS = DeletionTaskStatusType' "IN_PROGRESS"

pattern DeletionTaskStatusTypeNOTSTARTED :: DeletionTaskStatusType
pattern DeletionTaskStatusTypeNOTSTARTED = DeletionTaskStatusType' "NOT_STARTED"

pattern DeletionTaskStatusTypeSUCCEEDED :: DeletionTaskStatusType
pattern DeletionTaskStatusTypeSUCCEEDED = DeletionTaskStatusType' "SUCCEEDED"

{-# COMPLETE
  DeletionTaskStatusTypeFAILED,
  DeletionTaskStatusTypeINPROGRESS,
  DeletionTaskStatusTypeNOTSTARTED,
  DeletionTaskStatusTypeSUCCEEDED,
  DeletionTaskStatusType'
  #-}

instance Prelude.FromText DeletionTaskStatusType where
  parser = DeletionTaskStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeletionTaskStatusType where
  toText (DeletionTaskStatusType' x) = x

instance Prelude.Hashable DeletionTaskStatusType

instance Prelude.NFData DeletionTaskStatusType

instance Prelude.ToByteString DeletionTaskStatusType

instance Prelude.ToQuery DeletionTaskStatusType

instance Prelude.ToHeader DeletionTaskStatusType

instance Prelude.FromXML DeletionTaskStatusType where
  parseXML = Prelude.parseXMLText "DeletionTaskStatusType"
