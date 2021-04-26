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
-- Module      : Network.AWS.EC2.Types.CarrierGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CarrierGatewayState
  ( CarrierGatewayState
      ( ..,
        CarrierGatewayStateAvailable,
        CarrierGatewayStateDeleted,
        CarrierGatewayStateDeleting,
        CarrierGatewayStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CarrierGatewayState = CarrierGatewayState'
  { fromCarrierGatewayState ::
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

pattern CarrierGatewayStateAvailable :: CarrierGatewayState
pattern CarrierGatewayStateAvailable = CarrierGatewayState' "available"

pattern CarrierGatewayStateDeleted :: CarrierGatewayState
pattern CarrierGatewayStateDeleted = CarrierGatewayState' "deleted"

pattern CarrierGatewayStateDeleting :: CarrierGatewayState
pattern CarrierGatewayStateDeleting = CarrierGatewayState' "deleting"

pattern CarrierGatewayStatePending :: CarrierGatewayState
pattern CarrierGatewayStatePending = CarrierGatewayState' "pending"

{-# COMPLETE
  CarrierGatewayStateAvailable,
  CarrierGatewayStateDeleted,
  CarrierGatewayStateDeleting,
  CarrierGatewayStatePending,
  CarrierGatewayState'
  #-}

instance Prelude.FromText CarrierGatewayState where
  parser = CarrierGatewayState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CarrierGatewayState where
  toText (CarrierGatewayState' x) = x

instance Prelude.Hashable CarrierGatewayState

instance Prelude.NFData CarrierGatewayState

instance Prelude.ToByteString CarrierGatewayState

instance Prelude.ToQuery CarrierGatewayState

instance Prelude.ToHeader CarrierGatewayState

instance Prelude.FromXML CarrierGatewayState where
  parseXML = Prelude.parseXMLText "CarrierGatewayState"
