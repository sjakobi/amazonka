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
-- Module      : Network.AWS.CloudFormation.Types.StackStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackStatus
  ( StackStatus
      ( ..,
        StackStatusCREATECOMPLETE,
        StackStatusCREATEFAILED,
        StackStatusCREATEINPROGRESS,
        StackStatusDELETECOMPLETE,
        StackStatusDELETEFAILED,
        StackStatusDELETEINPROGRESS,
        StackStatusIMPORTCOMPLETE,
        StackStatusIMPORTINPROGRESS,
        StackStatusIMPORTROLLBACKCOMPLETE,
        StackStatusIMPORTROLLBACKFAILED,
        StackStatusIMPORTROLLBACKINPROGRESS,
        StackStatusREVIEWINPROGRESS,
        StackStatusROLLBACKCOMPLETE,
        StackStatusROLLBACKFAILED,
        StackStatusROLLBACKINPROGRESS,
        StackStatusUPDATECOMPLETE,
        StackStatusUPDATECOMPLETECLEANUPINPROGRESS,
        StackStatusUPDATEINPROGRESS,
        StackStatusUPDATEROLLBACKCOMPLETE,
        StackStatusUPDATEROLLBACKCOMPLETECLEANUPINPROGRESS,
        StackStatusUPDATEROLLBACKFAILED,
        StackStatusUPDATEROLLBACKINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackStatus = StackStatus'
  { fromStackStatus ::
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

pattern StackStatusCREATECOMPLETE :: StackStatus
pattern StackStatusCREATECOMPLETE = StackStatus' "CREATE_COMPLETE"

pattern StackStatusCREATEFAILED :: StackStatus
pattern StackStatusCREATEFAILED = StackStatus' "CREATE_FAILED"

pattern StackStatusCREATEINPROGRESS :: StackStatus
pattern StackStatusCREATEINPROGRESS = StackStatus' "CREATE_IN_PROGRESS"

pattern StackStatusDELETECOMPLETE :: StackStatus
pattern StackStatusDELETECOMPLETE = StackStatus' "DELETE_COMPLETE"

pattern StackStatusDELETEFAILED :: StackStatus
pattern StackStatusDELETEFAILED = StackStatus' "DELETE_FAILED"

pattern StackStatusDELETEINPROGRESS :: StackStatus
pattern StackStatusDELETEINPROGRESS = StackStatus' "DELETE_IN_PROGRESS"

pattern StackStatusIMPORTCOMPLETE :: StackStatus
pattern StackStatusIMPORTCOMPLETE = StackStatus' "IMPORT_COMPLETE"

pattern StackStatusIMPORTINPROGRESS :: StackStatus
pattern StackStatusIMPORTINPROGRESS = StackStatus' "IMPORT_IN_PROGRESS"

pattern StackStatusIMPORTROLLBACKCOMPLETE :: StackStatus
pattern StackStatusIMPORTROLLBACKCOMPLETE = StackStatus' "IMPORT_ROLLBACK_COMPLETE"

pattern StackStatusIMPORTROLLBACKFAILED :: StackStatus
pattern StackStatusIMPORTROLLBACKFAILED = StackStatus' "IMPORT_ROLLBACK_FAILED"

pattern StackStatusIMPORTROLLBACKINPROGRESS :: StackStatus
pattern StackStatusIMPORTROLLBACKINPROGRESS = StackStatus' "IMPORT_ROLLBACK_IN_PROGRESS"

pattern StackStatusREVIEWINPROGRESS :: StackStatus
pattern StackStatusREVIEWINPROGRESS = StackStatus' "REVIEW_IN_PROGRESS"

pattern StackStatusROLLBACKCOMPLETE :: StackStatus
pattern StackStatusROLLBACKCOMPLETE = StackStatus' "ROLLBACK_COMPLETE"

pattern StackStatusROLLBACKFAILED :: StackStatus
pattern StackStatusROLLBACKFAILED = StackStatus' "ROLLBACK_FAILED"

pattern StackStatusROLLBACKINPROGRESS :: StackStatus
pattern StackStatusROLLBACKINPROGRESS = StackStatus' "ROLLBACK_IN_PROGRESS"

pattern StackStatusUPDATECOMPLETE :: StackStatus
pattern StackStatusUPDATECOMPLETE = StackStatus' "UPDATE_COMPLETE"

pattern StackStatusUPDATECOMPLETECLEANUPINPROGRESS :: StackStatus
pattern StackStatusUPDATECOMPLETECLEANUPINPROGRESS = StackStatus' "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"

pattern StackStatusUPDATEINPROGRESS :: StackStatus
pattern StackStatusUPDATEINPROGRESS = StackStatus' "UPDATE_IN_PROGRESS"

pattern StackStatusUPDATEROLLBACKCOMPLETE :: StackStatus
pattern StackStatusUPDATEROLLBACKCOMPLETE = StackStatus' "UPDATE_ROLLBACK_COMPLETE"

pattern StackStatusUPDATEROLLBACKCOMPLETECLEANUPINPROGRESS :: StackStatus
pattern StackStatusUPDATEROLLBACKCOMPLETECLEANUPINPROGRESS = StackStatus' "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"

pattern StackStatusUPDATEROLLBACKFAILED :: StackStatus
pattern StackStatusUPDATEROLLBACKFAILED = StackStatus' "UPDATE_ROLLBACK_FAILED"

pattern StackStatusUPDATEROLLBACKINPROGRESS :: StackStatus
pattern StackStatusUPDATEROLLBACKINPROGRESS = StackStatus' "UPDATE_ROLLBACK_IN_PROGRESS"

{-# COMPLETE
  StackStatusCREATECOMPLETE,
  StackStatusCREATEFAILED,
  StackStatusCREATEINPROGRESS,
  StackStatusDELETECOMPLETE,
  StackStatusDELETEFAILED,
  StackStatusDELETEINPROGRESS,
  StackStatusIMPORTCOMPLETE,
  StackStatusIMPORTINPROGRESS,
  StackStatusIMPORTROLLBACKCOMPLETE,
  StackStatusIMPORTROLLBACKFAILED,
  StackStatusIMPORTROLLBACKINPROGRESS,
  StackStatusREVIEWINPROGRESS,
  StackStatusROLLBACKCOMPLETE,
  StackStatusROLLBACKFAILED,
  StackStatusROLLBACKINPROGRESS,
  StackStatusUPDATECOMPLETE,
  StackStatusUPDATECOMPLETECLEANUPINPROGRESS,
  StackStatusUPDATEINPROGRESS,
  StackStatusUPDATEROLLBACKCOMPLETE,
  StackStatusUPDATEROLLBACKCOMPLETECLEANUPINPROGRESS,
  StackStatusUPDATEROLLBACKFAILED,
  StackStatusUPDATEROLLBACKINPROGRESS,
  StackStatus'
  #-}

instance Prelude.FromText StackStatus where
  parser = StackStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackStatus where
  toText (StackStatus' x) = x

instance Prelude.Hashable StackStatus

instance Prelude.NFData StackStatus

instance Prelude.ToByteString StackStatus

instance Prelude.ToQuery StackStatus

instance Prelude.ToHeader StackStatus

instance Prelude.FromXML StackStatus where
  parseXML = Prelude.parseXMLText "StackStatus"
