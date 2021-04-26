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
-- Module      : Network.AWS.Config.Types.OrganizationRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationRuleStatus
  ( OrganizationRuleStatus
      ( ..,
        OrganizationRuleStatusCREATEFAILED,
        OrganizationRuleStatusCREATEINPROGRESS,
        OrganizationRuleStatusCREATESUCCESSFUL,
        OrganizationRuleStatusDELETEFAILED,
        OrganizationRuleStatusDELETEINPROGRESS,
        OrganizationRuleStatusDELETESUCCESSFUL,
        OrganizationRuleStatusUPDATEFAILED,
        OrganizationRuleStatusUPDATEINPROGRESS,
        OrganizationRuleStatusUPDATESUCCESSFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrganizationRuleStatus = OrganizationRuleStatus'
  { fromOrganizationRuleStatus ::
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

pattern OrganizationRuleStatusCREATEFAILED :: OrganizationRuleStatus
pattern OrganizationRuleStatusCREATEFAILED = OrganizationRuleStatus' "CREATE_FAILED"

pattern OrganizationRuleStatusCREATEINPROGRESS :: OrganizationRuleStatus
pattern OrganizationRuleStatusCREATEINPROGRESS = OrganizationRuleStatus' "CREATE_IN_PROGRESS"

pattern OrganizationRuleStatusCREATESUCCESSFUL :: OrganizationRuleStatus
pattern OrganizationRuleStatusCREATESUCCESSFUL = OrganizationRuleStatus' "CREATE_SUCCESSFUL"

pattern OrganizationRuleStatusDELETEFAILED :: OrganizationRuleStatus
pattern OrganizationRuleStatusDELETEFAILED = OrganizationRuleStatus' "DELETE_FAILED"

pattern OrganizationRuleStatusDELETEINPROGRESS :: OrganizationRuleStatus
pattern OrganizationRuleStatusDELETEINPROGRESS = OrganizationRuleStatus' "DELETE_IN_PROGRESS"

pattern OrganizationRuleStatusDELETESUCCESSFUL :: OrganizationRuleStatus
pattern OrganizationRuleStatusDELETESUCCESSFUL = OrganizationRuleStatus' "DELETE_SUCCESSFUL"

pattern OrganizationRuleStatusUPDATEFAILED :: OrganizationRuleStatus
pattern OrganizationRuleStatusUPDATEFAILED = OrganizationRuleStatus' "UPDATE_FAILED"

pattern OrganizationRuleStatusUPDATEINPROGRESS :: OrganizationRuleStatus
pattern OrganizationRuleStatusUPDATEINPROGRESS = OrganizationRuleStatus' "UPDATE_IN_PROGRESS"

pattern OrganizationRuleStatusUPDATESUCCESSFUL :: OrganizationRuleStatus
pattern OrganizationRuleStatusUPDATESUCCESSFUL = OrganizationRuleStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  OrganizationRuleStatusCREATEFAILED,
  OrganizationRuleStatusCREATEINPROGRESS,
  OrganizationRuleStatusCREATESUCCESSFUL,
  OrganizationRuleStatusDELETEFAILED,
  OrganizationRuleStatusDELETEINPROGRESS,
  OrganizationRuleStatusDELETESUCCESSFUL,
  OrganizationRuleStatusUPDATEFAILED,
  OrganizationRuleStatusUPDATEINPROGRESS,
  OrganizationRuleStatusUPDATESUCCESSFUL,
  OrganizationRuleStatus'
  #-}

instance Prelude.FromText OrganizationRuleStatus where
  parser = OrganizationRuleStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrganizationRuleStatus where
  toText (OrganizationRuleStatus' x) = x

instance Prelude.Hashable OrganizationRuleStatus

instance Prelude.NFData OrganizationRuleStatus

instance Prelude.ToByteString OrganizationRuleStatus

instance Prelude.ToQuery OrganizationRuleStatus

instance Prelude.ToHeader OrganizationRuleStatus

instance Prelude.FromJSON OrganizationRuleStatus where
  parseJSON = Prelude.parseJSONText "OrganizationRuleStatus"
