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
-- Module      : Network.AWS.EC2.Types.ByoipCidrState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ByoipCidrState
  ( ByoipCidrState
      ( ..,
        ByoipCidrStateAdvertised,
        ByoipCidrStateDeprovisioned,
        ByoipCidrStateFailedDeprovision,
        ByoipCidrStateFailedProvision,
        ByoipCidrStatePendingDeprovision,
        ByoipCidrStatePendingProvision,
        ByoipCidrStateProvisioned,
        ByoipCidrStateProvisionedNotPubliclyAdvertisable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ByoipCidrState = ByoipCidrState'
  { fromByoipCidrState ::
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

pattern ByoipCidrStateAdvertised :: ByoipCidrState
pattern ByoipCidrStateAdvertised = ByoipCidrState' "advertised"

pattern ByoipCidrStateDeprovisioned :: ByoipCidrState
pattern ByoipCidrStateDeprovisioned = ByoipCidrState' "deprovisioned"

pattern ByoipCidrStateFailedDeprovision :: ByoipCidrState
pattern ByoipCidrStateFailedDeprovision = ByoipCidrState' "failed-deprovision"

pattern ByoipCidrStateFailedProvision :: ByoipCidrState
pattern ByoipCidrStateFailedProvision = ByoipCidrState' "failed-provision"

pattern ByoipCidrStatePendingDeprovision :: ByoipCidrState
pattern ByoipCidrStatePendingDeprovision = ByoipCidrState' "pending-deprovision"

pattern ByoipCidrStatePendingProvision :: ByoipCidrState
pattern ByoipCidrStatePendingProvision = ByoipCidrState' "pending-provision"

pattern ByoipCidrStateProvisioned :: ByoipCidrState
pattern ByoipCidrStateProvisioned = ByoipCidrState' "provisioned"

pattern ByoipCidrStateProvisionedNotPubliclyAdvertisable :: ByoipCidrState
pattern ByoipCidrStateProvisionedNotPubliclyAdvertisable = ByoipCidrState' "provisioned-not-publicly-advertisable"

{-# COMPLETE
  ByoipCidrStateAdvertised,
  ByoipCidrStateDeprovisioned,
  ByoipCidrStateFailedDeprovision,
  ByoipCidrStateFailedProvision,
  ByoipCidrStatePendingDeprovision,
  ByoipCidrStatePendingProvision,
  ByoipCidrStateProvisioned,
  ByoipCidrStateProvisionedNotPubliclyAdvertisable,
  ByoipCidrState'
  #-}

instance Prelude.FromText ByoipCidrState where
  parser = ByoipCidrState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ByoipCidrState where
  toText (ByoipCidrState' x) = x

instance Prelude.Hashable ByoipCidrState

instance Prelude.NFData ByoipCidrState

instance Prelude.ToByteString ByoipCidrState

instance Prelude.ToQuery ByoipCidrState

instance Prelude.ToHeader ByoipCidrState

instance Prelude.FromXML ByoipCidrState where
  parseXML = Prelude.parseXMLText "ByoipCidrState"
