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
-- Module      : Network.AWS.Budgets.Types.ActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionStatus
  ( ActionStatus
      ( ..,
        ActionStatusEXECUTIONFAILURE,
        ActionStatusEXECUTIONINPROGRESS,
        ActionStatusEXECUTIONSUCCESS,
        ActionStatusPENDING,
        ActionStatusRESETFAILURE,
        ActionStatusRESETINPROGRESS,
        ActionStatusREVERSEFAILURE,
        ActionStatusREVERSEINPROGRESS,
        ActionStatusREVERSESUCCESS,
        ActionStatusSTANDBY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionStatus = ActionStatus'
  { fromActionStatus ::
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

pattern ActionStatusEXECUTIONFAILURE :: ActionStatus
pattern ActionStatusEXECUTIONFAILURE = ActionStatus' "EXECUTION_FAILURE"

pattern ActionStatusEXECUTIONINPROGRESS :: ActionStatus
pattern ActionStatusEXECUTIONINPROGRESS = ActionStatus' "EXECUTION_IN_PROGRESS"

pattern ActionStatusEXECUTIONSUCCESS :: ActionStatus
pattern ActionStatusEXECUTIONSUCCESS = ActionStatus' "EXECUTION_SUCCESS"

pattern ActionStatusPENDING :: ActionStatus
pattern ActionStatusPENDING = ActionStatus' "PENDING"

pattern ActionStatusRESETFAILURE :: ActionStatus
pattern ActionStatusRESETFAILURE = ActionStatus' "RESET_FAILURE"

pattern ActionStatusRESETINPROGRESS :: ActionStatus
pattern ActionStatusRESETINPROGRESS = ActionStatus' "RESET_IN_PROGRESS"

pattern ActionStatusREVERSEFAILURE :: ActionStatus
pattern ActionStatusREVERSEFAILURE = ActionStatus' "REVERSE_FAILURE"

pattern ActionStatusREVERSEINPROGRESS :: ActionStatus
pattern ActionStatusREVERSEINPROGRESS = ActionStatus' "REVERSE_IN_PROGRESS"

pattern ActionStatusREVERSESUCCESS :: ActionStatus
pattern ActionStatusREVERSESUCCESS = ActionStatus' "REVERSE_SUCCESS"

pattern ActionStatusSTANDBY :: ActionStatus
pattern ActionStatusSTANDBY = ActionStatus' "STANDBY"

{-# COMPLETE
  ActionStatusEXECUTIONFAILURE,
  ActionStatusEXECUTIONINPROGRESS,
  ActionStatusEXECUTIONSUCCESS,
  ActionStatusPENDING,
  ActionStatusRESETFAILURE,
  ActionStatusRESETINPROGRESS,
  ActionStatusREVERSEFAILURE,
  ActionStatusREVERSEINPROGRESS,
  ActionStatusREVERSESUCCESS,
  ActionStatusSTANDBY,
  ActionStatus'
  #-}

instance Prelude.FromText ActionStatus where
  parser = ActionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionStatus where
  toText (ActionStatus' x) = x

instance Prelude.Hashable ActionStatus

instance Prelude.NFData ActionStatus

instance Prelude.ToByteString ActionStatus

instance Prelude.ToQuery ActionStatus

instance Prelude.ToHeader ActionStatus

instance Prelude.FromJSON ActionStatus where
  parseJSON = Prelude.parseJSONText "ActionStatus"
