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
-- Module      : Network.AWS.CloudFormation.Types.ChangeSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeSetStatus
  ( ChangeSetStatus
      ( ..,
        ChangeSetStatusCREATECOMPLETE,
        ChangeSetStatusCREATEINPROGRESS,
        ChangeSetStatusCREATEPENDING,
        ChangeSetStatusDELETECOMPLETE,
        ChangeSetStatusDELETEFAILED,
        ChangeSetStatusDELETEINPROGRESS,
        ChangeSetStatusDELETEPENDING,
        ChangeSetStatusFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChangeSetStatus = ChangeSetStatus'
  { fromChangeSetStatus ::
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

pattern ChangeSetStatusCREATECOMPLETE :: ChangeSetStatus
pattern ChangeSetStatusCREATECOMPLETE = ChangeSetStatus' "CREATE_COMPLETE"

pattern ChangeSetStatusCREATEINPROGRESS :: ChangeSetStatus
pattern ChangeSetStatusCREATEINPROGRESS = ChangeSetStatus' "CREATE_IN_PROGRESS"

pattern ChangeSetStatusCREATEPENDING :: ChangeSetStatus
pattern ChangeSetStatusCREATEPENDING = ChangeSetStatus' "CREATE_PENDING"

pattern ChangeSetStatusDELETECOMPLETE :: ChangeSetStatus
pattern ChangeSetStatusDELETECOMPLETE = ChangeSetStatus' "DELETE_COMPLETE"

pattern ChangeSetStatusDELETEFAILED :: ChangeSetStatus
pattern ChangeSetStatusDELETEFAILED = ChangeSetStatus' "DELETE_FAILED"

pattern ChangeSetStatusDELETEINPROGRESS :: ChangeSetStatus
pattern ChangeSetStatusDELETEINPROGRESS = ChangeSetStatus' "DELETE_IN_PROGRESS"

pattern ChangeSetStatusDELETEPENDING :: ChangeSetStatus
pattern ChangeSetStatusDELETEPENDING = ChangeSetStatus' "DELETE_PENDING"

pattern ChangeSetStatusFAILED :: ChangeSetStatus
pattern ChangeSetStatusFAILED = ChangeSetStatus' "FAILED"

{-# COMPLETE
  ChangeSetStatusCREATECOMPLETE,
  ChangeSetStatusCREATEINPROGRESS,
  ChangeSetStatusCREATEPENDING,
  ChangeSetStatusDELETECOMPLETE,
  ChangeSetStatusDELETEFAILED,
  ChangeSetStatusDELETEINPROGRESS,
  ChangeSetStatusDELETEPENDING,
  ChangeSetStatusFAILED,
  ChangeSetStatus'
  #-}

instance Prelude.FromText ChangeSetStatus where
  parser = ChangeSetStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeSetStatus where
  toText (ChangeSetStatus' x) = x

instance Prelude.Hashable ChangeSetStatus

instance Prelude.NFData ChangeSetStatus

instance Prelude.ToByteString ChangeSetStatus

instance Prelude.ToQuery ChangeSetStatus

instance Prelude.ToHeader ChangeSetStatus

instance Prelude.FromXML ChangeSetStatus where
  parseXML = Prelude.parseXMLText "ChangeSetStatus"
