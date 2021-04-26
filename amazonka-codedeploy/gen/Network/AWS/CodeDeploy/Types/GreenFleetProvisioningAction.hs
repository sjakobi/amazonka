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
-- Module      : Network.AWS.CodeDeploy.Types.GreenFleetProvisioningAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.GreenFleetProvisioningAction
  ( GreenFleetProvisioningAction
      ( ..,
        GreenFleetProvisioningActionCOPYAUTOSCALINGGROUP,
        GreenFleetProvisioningActionDISCOVEREXISTING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GreenFleetProvisioningAction = GreenFleetProvisioningAction'
  { fromGreenFleetProvisioningAction ::
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

pattern GreenFleetProvisioningActionCOPYAUTOSCALINGGROUP :: GreenFleetProvisioningAction
pattern GreenFleetProvisioningActionCOPYAUTOSCALINGGROUP = GreenFleetProvisioningAction' "COPY_AUTO_SCALING_GROUP"

pattern GreenFleetProvisioningActionDISCOVEREXISTING :: GreenFleetProvisioningAction
pattern GreenFleetProvisioningActionDISCOVEREXISTING = GreenFleetProvisioningAction' "DISCOVER_EXISTING"

{-# COMPLETE
  GreenFleetProvisioningActionCOPYAUTOSCALINGGROUP,
  GreenFleetProvisioningActionDISCOVEREXISTING,
  GreenFleetProvisioningAction'
  #-}

instance Prelude.FromText GreenFleetProvisioningAction where
  parser = GreenFleetProvisioningAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText GreenFleetProvisioningAction where
  toText (GreenFleetProvisioningAction' x) = x

instance Prelude.Hashable GreenFleetProvisioningAction

instance Prelude.NFData GreenFleetProvisioningAction

instance Prelude.ToByteString GreenFleetProvisioningAction

instance Prelude.ToQuery GreenFleetProvisioningAction

instance Prelude.ToHeader GreenFleetProvisioningAction

instance Prelude.ToJSON GreenFleetProvisioningAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GreenFleetProvisioningAction where
  parseJSON = Prelude.parseJSONText "GreenFleetProvisioningAction"
