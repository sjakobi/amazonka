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
-- Module      : Network.AWS.Config.Types.MemberAccountRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.MemberAccountRuleStatus
  ( MemberAccountRuleStatus
      ( ..,
        MemberAccountRuleStatusCREATEFAILED,
        MemberAccountRuleStatusCREATEINPROGRESS,
        MemberAccountRuleStatusCREATESUCCESSFUL,
        MemberAccountRuleStatusDELETEFAILED,
        MemberAccountRuleStatusDELETEINPROGRESS,
        MemberAccountRuleStatusDELETESUCCESSFUL,
        MemberAccountRuleStatusUPDATEFAILED,
        MemberAccountRuleStatusUPDATEINPROGRESS,
        MemberAccountRuleStatusUPDATESUCCESSFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MemberAccountRuleStatus = MemberAccountRuleStatus'
  { fromMemberAccountRuleStatus ::
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

pattern MemberAccountRuleStatusCREATEFAILED :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusCREATEFAILED = MemberAccountRuleStatus' "CREATE_FAILED"

pattern MemberAccountRuleStatusCREATEINPROGRESS :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusCREATEINPROGRESS = MemberAccountRuleStatus' "CREATE_IN_PROGRESS"

pattern MemberAccountRuleStatusCREATESUCCESSFUL :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusCREATESUCCESSFUL = MemberAccountRuleStatus' "CREATE_SUCCESSFUL"

pattern MemberAccountRuleStatusDELETEFAILED :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusDELETEFAILED = MemberAccountRuleStatus' "DELETE_FAILED"

pattern MemberAccountRuleStatusDELETEINPROGRESS :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusDELETEINPROGRESS = MemberAccountRuleStatus' "DELETE_IN_PROGRESS"

pattern MemberAccountRuleStatusDELETESUCCESSFUL :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusDELETESUCCESSFUL = MemberAccountRuleStatus' "DELETE_SUCCESSFUL"

pattern MemberAccountRuleStatusUPDATEFAILED :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusUPDATEFAILED = MemberAccountRuleStatus' "UPDATE_FAILED"

pattern MemberAccountRuleStatusUPDATEINPROGRESS :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusUPDATEINPROGRESS = MemberAccountRuleStatus' "UPDATE_IN_PROGRESS"

pattern MemberAccountRuleStatusUPDATESUCCESSFUL :: MemberAccountRuleStatus
pattern MemberAccountRuleStatusUPDATESUCCESSFUL = MemberAccountRuleStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  MemberAccountRuleStatusCREATEFAILED,
  MemberAccountRuleStatusCREATEINPROGRESS,
  MemberAccountRuleStatusCREATESUCCESSFUL,
  MemberAccountRuleStatusDELETEFAILED,
  MemberAccountRuleStatusDELETEINPROGRESS,
  MemberAccountRuleStatusDELETESUCCESSFUL,
  MemberAccountRuleStatusUPDATEFAILED,
  MemberAccountRuleStatusUPDATEINPROGRESS,
  MemberAccountRuleStatusUPDATESUCCESSFUL,
  MemberAccountRuleStatus'
  #-}

instance Prelude.FromText MemberAccountRuleStatus where
  parser = MemberAccountRuleStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MemberAccountRuleStatus where
  toText (MemberAccountRuleStatus' x) = x

instance Prelude.Hashable MemberAccountRuleStatus

instance Prelude.NFData MemberAccountRuleStatus

instance Prelude.ToByteString MemberAccountRuleStatus

instance Prelude.ToQuery MemberAccountRuleStatus

instance Prelude.ToHeader MemberAccountRuleStatus

instance Prelude.ToJSON MemberAccountRuleStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MemberAccountRuleStatus where
  parseJSON = Prelude.parseJSONText "MemberAccountRuleStatus"
