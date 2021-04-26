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
-- Module      : Network.AWS.Organizations.Types.ActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.ActionType
  ( ActionType
      ( ..,
        ActionTypeADDORGANIZATIONSSERVICELINKEDROLE,
        ActionTypeAPPROVEALLFEATURES,
        ActionTypeENABLEALLFEATURES,
        ActionTypeINVITE
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

pattern ActionTypeADDORGANIZATIONSSERVICELINKEDROLE :: ActionType
pattern ActionTypeADDORGANIZATIONSSERVICELINKEDROLE = ActionType' "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"

pattern ActionTypeAPPROVEALLFEATURES :: ActionType
pattern ActionTypeAPPROVEALLFEATURES = ActionType' "APPROVE_ALL_FEATURES"

pattern ActionTypeENABLEALLFEATURES :: ActionType
pattern ActionTypeENABLEALLFEATURES = ActionType' "ENABLE_ALL_FEATURES"

pattern ActionTypeINVITE :: ActionType
pattern ActionTypeINVITE = ActionType' "INVITE"

{-# COMPLETE
  ActionTypeADDORGANIZATIONSSERVICELINKEDROLE,
  ActionTypeAPPROVEALLFEATURES,
  ActionTypeENABLEALLFEATURES,
  ActionTypeINVITE,
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
