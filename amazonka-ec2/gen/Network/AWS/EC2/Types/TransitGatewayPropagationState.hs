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
-- Module      : Network.AWS.EC2.Types.TransitGatewayPropagationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayPropagationState
  ( TransitGatewayPropagationState
      ( ..,
        TransitGatewayPropagationStateDisabled,
        TransitGatewayPropagationStateDisabling,
        TransitGatewayPropagationStateEnabled,
        TransitGatewayPropagationStateEnabling
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayPropagationState = TransitGatewayPropagationState'
  { fromTransitGatewayPropagationState ::
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

pattern TransitGatewayPropagationStateDisabled :: TransitGatewayPropagationState
pattern TransitGatewayPropagationStateDisabled = TransitGatewayPropagationState' "disabled"

pattern TransitGatewayPropagationStateDisabling :: TransitGatewayPropagationState
pattern TransitGatewayPropagationStateDisabling = TransitGatewayPropagationState' "disabling"

pattern TransitGatewayPropagationStateEnabled :: TransitGatewayPropagationState
pattern TransitGatewayPropagationStateEnabled = TransitGatewayPropagationState' "enabled"

pattern TransitGatewayPropagationStateEnabling :: TransitGatewayPropagationState
pattern TransitGatewayPropagationStateEnabling = TransitGatewayPropagationState' "enabling"

{-# COMPLETE
  TransitGatewayPropagationStateDisabled,
  TransitGatewayPropagationStateDisabling,
  TransitGatewayPropagationStateEnabled,
  TransitGatewayPropagationStateEnabling,
  TransitGatewayPropagationState'
  #-}

instance Prelude.FromText TransitGatewayPropagationState where
  parser = TransitGatewayPropagationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayPropagationState where
  toText (TransitGatewayPropagationState' x) = x

instance Prelude.Hashable TransitGatewayPropagationState

instance Prelude.NFData TransitGatewayPropagationState

instance Prelude.ToByteString TransitGatewayPropagationState

instance Prelude.ToQuery TransitGatewayPropagationState

instance Prelude.ToHeader TransitGatewayPropagationState

instance Prelude.FromXML TransitGatewayPropagationState where
  parseXML = Prelude.parseXMLText "TransitGatewayPropagationState"
