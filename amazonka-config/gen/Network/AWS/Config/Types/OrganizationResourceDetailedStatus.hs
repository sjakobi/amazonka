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
-- Module      : Network.AWS.Config.Types.OrganizationResourceDetailedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationResourceDetailedStatus
  ( OrganizationResourceDetailedStatus
      ( ..,
        OrganizationResourceDetailedStatusCREATEFAILED,
        OrganizationResourceDetailedStatusCREATEINPROGRESS,
        OrganizationResourceDetailedStatusCREATESUCCESSFUL,
        OrganizationResourceDetailedStatusDELETEFAILED,
        OrganizationResourceDetailedStatusDELETEINPROGRESS,
        OrganizationResourceDetailedStatusDELETESUCCESSFUL,
        OrganizationResourceDetailedStatusUPDATEFAILED,
        OrganizationResourceDetailedStatusUPDATEINPROGRESS,
        OrganizationResourceDetailedStatusUPDATESUCCESSFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrganizationResourceDetailedStatus = OrganizationResourceDetailedStatus'
  { fromOrganizationResourceDetailedStatus ::
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

pattern OrganizationResourceDetailedStatusCREATEFAILED :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusCREATEFAILED = OrganizationResourceDetailedStatus' "CREATE_FAILED"

pattern OrganizationResourceDetailedStatusCREATEINPROGRESS :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusCREATEINPROGRESS = OrganizationResourceDetailedStatus' "CREATE_IN_PROGRESS"

pattern OrganizationResourceDetailedStatusCREATESUCCESSFUL :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusCREATESUCCESSFUL = OrganizationResourceDetailedStatus' "CREATE_SUCCESSFUL"

pattern OrganizationResourceDetailedStatusDELETEFAILED :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusDELETEFAILED = OrganizationResourceDetailedStatus' "DELETE_FAILED"

pattern OrganizationResourceDetailedStatusDELETEINPROGRESS :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusDELETEINPROGRESS = OrganizationResourceDetailedStatus' "DELETE_IN_PROGRESS"

pattern OrganizationResourceDetailedStatusDELETESUCCESSFUL :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusDELETESUCCESSFUL = OrganizationResourceDetailedStatus' "DELETE_SUCCESSFUL"

pattern OrganizationResourceDetailedStatusUPDATEFAILED :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusUPDATEFAILED = OrganizationResourceDetailedStatus' "UPDATE_FAILED"

pattern OrganizationResourceDetailedStatusUPDATEINPROGRESS :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusUPDATEINPROGRESS = OrganizationResourceDetailedStatus' "UPDATE_IN_PROGRESS"

pattern OrganizationResourceDetailedStatusUPDATESUCCESSFUL :: OrganizationResourceDetailedStatus
pattern OrganizationResourceDetailedStatusUPDATESUCCESSFUL = OrganizationResourceDetailedStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  OrganizationResourceDetailedStatusCREATEFAILED,
  OrganizationResourceDetailedStatusCREATEINPROGRESS,
  OrganizationResourceDetailedStatusCREATESUCCESSFUL,
  OrganizationResourceDetailedStatusDELETEFAILED,
  OrganizationResourceDetailedStatusDELETEINPROGRESS,
  OrganizationResourceDetailedStatusDELETESUCCESSFUL,
  OrganizationResourceDetailedStatusUPDATEFAILED,
  OrganizationResourceDetailedStatusUPDATEINPROGRESS,
  OrganizationResourceDetailedStatusUPDATESUCCESSFUL,
  OrganizationResourceDetailedStatus'
  #-}

instance Prelude.FromText OrganizationResourceDetailedStatus where
  parser = OrganizationResourceDetailedStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrganizationResourceDetailedStatus where
  toText (OrganizationResourceDetailedStatus' x) = x

instance Prelude.Hashable OrganizationResourceDetailedStatus

instance Prelude.NFData OrganizationResourceDetailedStatus

instance Prelude.ToByteString OrganizationResourceDetailedStatus

instance Prelude.ToQuery OrganizationResourceDetailedStatus

instance Prelude.ToHeader OrganizationResourceDetailedStatus

instance Prelude.ToJSON OrganizationResourceDetailedStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OrganizationResourceDetailedStatus where
  parseJSON = Prelude.parseJSONText "OrganizationResourceDetailedStatus"
