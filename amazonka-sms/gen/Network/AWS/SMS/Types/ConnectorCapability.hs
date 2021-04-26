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
-- Module      : Network.AWS.SMS.Types.ConnectorCapability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ConnectorCapability
  ( ConnectorCapability
      ( ..,
        ConnectorCapabilityHYPERVMANAGER,
        ConnectorCapabilitySCVMM,
        ConnectorCapabilitySMSOPTIMIZED,
        ConnectorCapabilitySNAPSHOTBATCHING,
        ConnectorCapabilityVSPHERE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectorCapability = ConnectorCapability'
  { fromConnectorCapability ::
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

pattern ConnectorCapabilityHYPERVMANAGER :: ConnectorCapability
pattern ConnectorCapabilityHYPERVMANAGER = ConnectorCapability' "HYPERV-MANAGER"

pattern ConnectorCapabilitySCVMM :: ConnectorCapability
pattern ConnectorCapabilitySCVMM = ConnectorCapability' "SCVMM"

pattern ConnectorCapabilitySMSOPTIMIZED :: ConnectorCapability
pattern ConnectorCapabilitySMSOPTIMIZED = ConnectorCapability' "SMS_OPTIMIZED"

pattern ConnectorCapabilitySNAPSHOTBATCHING :: ConnectorCapability
pattern ConnectorCapabilitySNAPSHOTBATCHING = ConnectorCapability' "SNAPSHOT_BATCHING"

pattern ConnectorCapabilityVSPHERE :: ConnectorCapability
pattern ConnectorCapabilityVSPHERE = ConnectorCapability' "VSPHERE"

{-# COMPLETE
  ConnectorCapabilityHYPERVMANAGER,
  ConnectorCapabilitySCVMM,
  ConnectorCapabilitySMSOPTIMIZED,
  ConnectorCapabilitySNAPSHOTBATCHING,
  ConnectorCapabilityVSPHERE,
  ConnectorCapability'
  #-}

instance Prelude.FromText ConnectorCapability where
  parser = ConnectorCapability' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectorCapability where
  toText (ConnectorCapability' x) = x

instance Prelude.Hashable ConnectorCapability

instance Prelude.NFData ConnectorCapability

instance Prelude.ToByteString ConnectorCapability

instance Prelude.ToQuery ConnectorCapability

instance Prelude.ToHeader ConnectorCapability

instance Prelude.FromJSON ConnectorCapability where
  parseJSON = Prelude.parseJSONText "ConnectorCapability"
