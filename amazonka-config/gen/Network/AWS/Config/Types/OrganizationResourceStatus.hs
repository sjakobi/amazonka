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
-- Module      : Network.AWS.Config.Types.OrganizationResourceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationResourceStatus
  ( OrganizationResourceStatus
      ( ..,
        OrganizationResourceStatusCREATEFAILED,
        OrganizationResourceStatusCREATEINPROGRESS,
        OrganizationResourceStatusCREATESUCCESSFUL,
        OrganizationResourceStatusDELETEFAILED,
        OrganizationResourceStatusDELETEINPROGRESS,
        OrganizationResourceStatusDELETESUCCESSFUL,
        OrganizationResourceStatusUPDATEFAILED,
        OrganizationResourceStatusUPDATEINPROGRESS,
        OrganizationResourceStatusUPDATESUCCESSFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrganizationResourceStatus = OrganizationResourceStatus'
  { fromOrganizationResourceStatus ::
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

pattern OrganizationResourceStatusCREATEFAILED :: OrganizationResourceStatus
pattern OrganizationResourceStatusCREATEFAILED = OrganizationResourceStatus' "CREATE_FAILED"

pattern OrganizationResourceStatusCREATEINPROGRESS :: OrganizationResourceStatus
pattern OrganizationResourceStatusCREATEINPROGRESS = OrganizationResourceStatus' "CREATE_IN_PROGRESS"

pattern OrganizationResourceStatusCREATESUCCESSFUL :: OrganizationResourceStatus
pattern OrganizationResourceStatusCREATESUCCESSFUL = OrganizationResourceStatus' "CREATE_SUCCESSFUL"

pattern OrganizationResourceStatusDELETEFAILED :: OrganizationResourceStatus
pattern OrganizationResourceStatusDELETEFAILED = OrganizationResourceStatus' "DELETE_FAILED"

pattern OrganizationResourceStatusDELETEINPROGRESS :: OrganizationResourceStatus
pattern OrganizationResourceStatusDELETEINPROGRESS = OrganizationResourceStatus' "DELETE_IN_PROGRESS"

pattern OrganizationResourceStatusDELETESUCCESSFUL :: OrganizationResourceStatus
pattern OrganizationResourceStatusDELETESUCCESSFUL = OrganizationResourceStatus' "DELETE_SUCCESSFUL"

pattern OrganizationResourceStatusUPDATEFAILED :: OrganizationResourceStatus
pattern OrganizationResourceStatusUPDATEFAILED = OrganizationResourceStatus' "UPDATE_FAILED"

pattern OrganizationResourceStatusUPDATEINPROGRESS :: OrganizationResourceStatus
pattern OrganizationResourceStatusUPDATEINPROGRESS = OrganizationResourceStatus' "UPDATE_IN_PROGRESS"

pattern OrganizationResourceStatusUPDATESUCCESSFUL :: OrganizationResourceStatus
pattern OrganizationResourceStatusUPDATESUCCESSFUL = OrganizationResourceStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  OrganizationResourceStatusCREATEFAILED,
  OrganizationResourceStatusCREATEINPROGRESS,
  OrganizationResourceStatusCREATESUCCESSFUL,
  OrganizationResourceStatusDELETEFAILED,
  OrganizationResourceStatusDELETEINPROGRESS,
  OrganizationResourceStatusDELETESUCCESSFUL,
  OrganizationResourceStatusUPDATEFAILED,
  OrganizationResourceStatusUPDATEINPROGRESS,
  OrganizationResourceStatusUPDATESUCCESSFUL,
  OrganizationResourceStatus'
  #-}

instance Prelude.FromText OrganizationResourceStatus where
  parser = OrganizationResourceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrganizationResourceStatus where
  toText (OrganizationResourceStatus' x) = x

instance Prelude.Hashable OrganizationResourceStatus

instance Prelude.NFData OrganizationResourceStatus

instance Prelude.ToByteString OrganizationResourceStatus

instance Prelude.ToQuery OrganizationResourceStatus

instance Prelude.ToHeader OrganizationResourceStatus

instance Prelude.FromJSON OrganizationResourceStatus where
  parseJSON = Prelude.parseJSONText "OrganizationResourceStatus"
