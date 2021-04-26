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
-- Module      : Network.AWS.Budgets.Types.ActionSubType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionSubType
  ( ActionSubType
      ( ..,
        ActionSubTypeSTOPEC2INSTANCES,
        ActionSubTypeSTOPRDSINSTANCES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionSubType = ActionSubType'
  { fromActionSubType ::
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

pattern ActionSubTypeSTOPEC2INSTANCES :: ActionSubType
pattern ActionSubTypeSTOPEC2INSTANCES = ActionSubType' "STOP_EC2_INSTANCES"

pattern ActionSubTypeSTOPRDSINSTANCES :: ActionSubType
pattern ActionSubTypeSTOPRDSINSTANCES = ActionSubType' "STOP_RDS_INSTANCES"

{-# COMPLETE
  ActionSubTypeSTOPEC2INSTANCES,
  ActionSubTypeSTOPRDSINSTANCES,
  ActionSubType'
  #-}

instance Prelude.FromText ActionSubType where
  parser = ActionSubType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionSubType where
  toText (ActionSubType' x) = x

instance Prelude.Hashable ActionSubType

instance Prelude.NFData ActionSubType

instance Prelude.ToByteString ActionSubType

instance Prelude.ToQuery ActionSubType

instance Prelude.ToHeader ActionSubType

instance Prelude.ToJSON ActionSubType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionSubType where
  parseJSON = Prelude.parseJSONText "ActionSubType"
