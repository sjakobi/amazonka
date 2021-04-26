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
-- Module      : Network.AWS.CloudFormation.Types.Capability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Capability
  ( Capability
      ( ..,
        CapabilityCAPABILITYAUTOEXPAND,
        CapabilityCAPABILITYIAM,
        CapabilityCAPABILITYNAMEDIAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Capability = Capability'
  { fromCapability ::
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

pattern CapabilityCAPABILITYAUTOEXPAND :: Capability
pattern CapabilityCAPABILITYAUTOEXPAND = Capability' "CAPABILITY_AUTO_EXPAND"

pattern CapabilityCAPABILITYIAM :: Capability
pattern CapabilityCAPABILITYIAM = Capability' "CAPABILITY_IAM"

pattern CapabilityCAPABILITYNAMEDIAM :: Capability
pattern CapabilityCAPABILITYNAMEDIAM = Capability' "CAPABILITY_NAMED_IAM"

{-# COMPLETE
  CapabilityCAPABILITYAUTOEXPAND,
  CapabilityCAPABILITYIAM,
  CapabilityCAPABILITYNAMEDIAM,
  Capability'
  #-}

instance Prelude.FromText Capability where
  parser = Capability' Prelude.<$> Prelude.takeText

instance Prelude.ToText Capability where
  toText (Capability' x) = x

instance Prelude.Hashable Capability

instance Prelude.NFData Capability

instance Prelude.ToByteString Capability

instance Prelude.ToQuery Capability

instance Prelude.ToHeader Capability

instance Prelude.FromXML Capability where
  parseXML = Prelude.parseXMLText "Capability"
