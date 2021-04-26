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
-- Module      : Network.AWS.CloudFormation.Types.ResourceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ResourceStatus
  ( ResourceStatus
      ( ..,
        ResourceStatusCREATECOMPLETE,
        ResourceStatusCREATEFAILED,
        ResourceStatusCREATEINPROGRESS,
        ResourceStatusDELETECOMPLETE,
        ResourceStatusDELETEFAILED,
        ResourceStatusDELETEINPROGRESS,
        ResourceStatusDELETESKIPPED,
        ResourceStatusIMPORTCOMPLETE,
        ResourceStatusIMPORTFAILED,
        ResourceStatusIMPORTINPROGRESS,
        ResourceStatusIMPORTROLLBACKCOMPLETE,
        ResourceStatusIMPORTROLLBACKFAILED,
        ResourceStatusIMPORTROLLBACKINPROGRESS,
        ResourceStatusUPDATECOMPLETE,
        ResourceStatusUPDATEFAILED,
        ResourceStatusUPDATEINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceStatus = ResourceStatus'
  { fromResourceStatus ::
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

pattern ResourceStatusCREATECOMPLETE :: ResourceStatus
pattern ResourceStatusCREATECOMPLETE = ResourceStatus' "CREATE_COMPLETE"

pattern ResourceStatusCREATEFAILED :: ResourceStatus
pattern ResourceStatusCREATEFAILED = ResourceStatus' "CREATE_FAILED"

pattern ResourceStatusCREATEINPROGRESS :: ResourceStatus
pattern ResourceStatusCREATEINPROGRESS = ResourceStatus' "CREATE_IN_PROGRESS"

pattern ResourceStatusDELETECOMPLETE :: ResourceStatus
pattern ResourceStatusDELETECOMPLETE = ResourceStatus' "DELETE_COMPLETE"

pattern ResourceStatusDELETEFAILED :: ResourceStatus
pattern ResourceStatusDELETEFAILED = ResourceStatus' "DELETE_FAILED"

pattern ResourceStatusDELETEINPROGRESS :: ResourceStatus
pattern ResourceStatusDELETEINPROGRESS = ResourceStatus' "DELETE_IN_PROGRESS"

pattern ResourceStatusDELETESKIPPED :: ResourceStatus
pattern ResourceStatusDELETESKIPPED = ResourceStatus' "DELETE_SKIPPED"

pattern ResourceStatusIMPORTCOMPLETE :: ResourceStatus
pattern ResourceStatusIMPORTCOMPLETE = ResourceStatus' "IMPORT_COMPLETE"

pattern ResourceStatusIMPORTFAILED :: ResourceStatus
pattern ResourceStatusIMPORTFAILED = ResourceStatus' "IMPORT_FAILED"

pattern ResourceStatusIMPORTINPROGRESS :: ResourceStatus
pattern ResourceStatusIMPORTINPROGRESS = ResourceStatus' "IMPORT_IN_PROGRESS"

pattern ResourceStatusIMPORTROLLBACKCOMPLETE :: ResourceStatus
pattern ResourceStatusIMPORTROLLBACKCOMPLETE = ResourceStatus' "IMPORT_ROLLBACK_COMPLETE"

pattern ResourceStatusIMPORTROLLBACKFAILED :: ResourceStatus
pattern ResourceStatusIMPORTROLLBACKFAILED = ResourceStatus' "IMPORT_ROLLBACK_FAILED"

pattern ResourceStatusIMPORTROLLBACKINPROGRESS :: ResourceStatus
pattern ResourceStatusIMPORTROLLBACKINPROGRESS = ResourceStatus' "IMPORT_ROLLBACK_IN_PROGRESS"

pattern ResourceStatusUPDATECOMPLETE :: ResourceStatus
pattern ResourceStatusUPDATECOMPLETE = ResourceStatus' "UPDATE_COMPLETE"

pattern ResourceStatusUPDATEFAILED :: ResourceStatus
pattern ResourceStatusUPDATEFAILED = ResourceStatus' "UPDATE_FAILED"

pattern ResourceStatusUPDATEINPROGRESS :: ResourceStatus
pattern ResourceStatusUPDATEINPROGRESS = ResourceStatus' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  ResourceStatusCREATECOMPLETE,
  ResourceStatusCREATEFAILED,
  ResourceStatusCREATEINPROGRESS,
  ResourceStatusDELETECOMPLETE,
  ResourceStatusDELETEFAILED,
  ResourceStatusDELETEINPROGRESS,
  ResourceStatusDELETESKIPPED,
  ResourceStatusIMPORTCOMPLETE,
  ResourceStatusIMPORTFAILED,
  ResourceStatusIMPORTINPROGRESS,
  ResourceStatusIMPORTROLLBACKCOMPLETE,
  ResourceStatusIMPORTROLLBACKFAILED,
  ResourceStatusIMPORTROLLBACKINPROGRESS,
  ResourceStatusUPDATECOMPLETE,
  ResourceStatusUPDATEFAILED,
  ResourceStatusUPDATEINPROGRESS,
  ResourceStatus'
  #-}

instance Prelude.FromText ResourceStatus where
  parser = ResourceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceStatus where
  toText (ResourceStatus' x) = x

instance Prelude.Hashable ResourceStatus

instance Prelude.NFData ResourceStatus

instance Prelude.ToByteString ResourceStatus

instance Prelude.ToQuery ResourceStatus

instance Prelude.ToHeader ResourceStatus

instance Prelude.FromXML ResourceStatus where
  parseXML = Prelude.parseXMLText "ResourceStatus"
