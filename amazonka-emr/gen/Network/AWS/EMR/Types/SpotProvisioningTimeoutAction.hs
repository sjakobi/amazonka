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
-- Module      : Network.AWS.EMR.Types.SpotProvisioningTimeoutAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.SpotProvisioningTimeoutAction
  ( SpotProvisioningTimeoutAction
      ( ..,
        SpotProvisioningTimeoutActionSWITCHTOONDEMAND,
        SpotProvisioningTimeoutActionTERMINATECLUSTER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SpotProvisioningTimeoutAction = SpotProvisioningTimeoutAction'
  { fromSpotProvisioningTimeoutAction ::
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

pattern SpotProvisioningTimeoutActionSWITCHTOONDEMAND :: SpotProvisioningTimeoutAction
pattern SpotProvisioningTimeoutActionSWITCHTOONDEMAND = SpotProvisioningTimeoutAction' "SWITCH_TO_ON_DEMAND"

pattern SpotProvisioningTimeoutActionTERMINATECLUSTER :: SpotProvisioningTimeoutAction
pattern SpotProvisioningTimeoutActionTERMINATECLUSTER = SpotProvisioningTimeoutAction' "TERMINATE_CLUSTER"

{-# COMPLETE
  SpotProvisioningTimeoutActionSWITCHTOONDEMAND,
  SpotProvisioningTimeoutActionTERMINATECLUSTER,
  SpotProvisioningTimeoutAction'
  #-}

instance Prelude.FromText SpotProvisioningTimeoutAction where
  parser = SpotProvisioningTimeoutAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText SpotProvisioningTimeoutAction where
  toText (SpotProvisioningTimeoutAction' x) = x

instance Prelude.Hashable SpotProvisioningTimeoutAction

instance Prelude.NFData SpotProvisioningTimeoutAction

instance Prelude.ToByteString SpotProvisioningTimeoutAction

instance Prelude.ToQuery SpotProvisioningTimeoutAction

instance Prelude.ToHeader SpotProvisioningTimeoutAction

instance Prelude.ToJSON SpotProvisioningTimeoutAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SpotProvisioningTimeoutAction where
  parseJSON = Prelude.parseJSONText "SpotProvisioningTimeoutAction"
