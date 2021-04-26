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
-- Module      : Network.AWS.Budgets.Types.ActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionType
  ( ActionType
      ( ..,
        ActionTypeAPPLYIAMPOLICY,
        ActionTypeAPPLYSCPPOLICY,
        ActionTypeRUNSSMDOCUMENTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionType = ActionType'
  { fromActionType ::
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

pattern ActionTypeAPPLYIAMPOLICY :: ActionType
pattern ActionTypeAPPLYIAMPOLICY = ActionType' "APPLY_IAM_POLICY"

pattern ActionTypeAPPLYSCPPOLICY :: ActionType
pattern ActionTypeAPPLYSCPPOLICY = ActionType' "APPLY_SCP_POLICY"

pattern ActionTypeRUNSSMDOCUMENTS :: ActionType
pattern ActionTypeRUNSSMDOCUMENTS = ActionType' "RUN_SSM_DOCUMENTS"

{-# COMPLETE
  ActionTypeAPPLYIAMPOLICY,
  ActionTypeAPPLYSCPPOLICY,
  ActionTypeRUNSSMDOCUMENTS,
  ActionType'
  #-}

instance Prelude.FromText ActionType where
  parser = ActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionType where
  toText (ActionType' x) = x

instance Prelude.Hashable ActionType

instance Prelude.NFData ActionType

instance Prelude.ToByteString ActionType

instance Prelude.ToQuery ActionType

instance Prelude.ToHeader ActionType

instance Prelude.ToJSON ActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionType where
  parseJSON = Prelude.parseJSONText "ActionType"
