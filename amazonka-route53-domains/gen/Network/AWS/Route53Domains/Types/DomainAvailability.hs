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
-- Module      : Network.AWS.Route53Domains.Types.DomainAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.DomainAvailability
  ( DomainAvailability
      ( ..,
        DomainAvailabilityAVAILABLE,
        DomainAvailabilityAVAILABLEPREORDER,
        DomainAvailabilityAVAILABLERESERVED,
        DomainAvailabilityDONTKNOW,
        DomainAvailabilityRESERVED,
        DomainAvailabilityUNAVAILABLE,
        DomainAvailabilityUNAVAILABLEPREMIUM,
        DomainAvailabilityUNAVAILABLERESTRICTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainAvailability = DomainAvailability'
  { fromDomainAvailability ::
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

pattern DomainAvailabilityAVAILABLE :: DomainAvailability
pattern DomainAvailabilityAVAILABLE = DomainAvailability' "AVAILABLE"

pattern DomainAvailabilityAVAILABLEPREORDER :: DomainAvailability
pattern DomainAvailabilityAVAILABLEPREORDER = DomainAvailability' "AVAILABLE_PREORDER"

pattern DomainAvailabilityAVAILABLERESERVED :: DomainAvailability
pattern DomainAvailabilityAVAILABLERESERVED = DomainAvailability' "AVAILABLE_RESERVED"

pattern DomainAvailabilityDONTKNOW :: DomainAvailability
pattern DomainAvailabilityDONTKNOW = DomainAvailability' "DONT_KNOW"

pattern DomainAvailabilityRESERVED :: DomainAvailability
pattern DomainAvailabilityRESERVED = DomainAvailability' "RESERVED"

pattern DomainAvailabilityUNAVAILABLE :: DomainAvailability
pattern DomainAvailabilityUNAVAILABLE = DomainAvailability' "UNAVAILABLE"

pattern DomainAvailabilityUNAVAILABLEPREMIUM :: DomainAvailability
pattern DomainAvailabilityUNAVAILABLEPREMIUM = DomainAvailability' "UNAVAILABLE_PREMIUM"

pattern DomainAvailabilityUNAVAILABLERESTRICTED :: DomainAvailability
pattern DomainAvailabilityUNAVAILABLERESTRICTED = DomainAvailability' "UNAVAILABLE_RESTRICTED"

{-# COMPLETE
  DomainAvailabilityAVAILABLE,
  DomainAvailabilityAVAILABLEPREORDER,
  DomainAvailabilityAVAILABLERESERVED,
  DomainAvailabilityDONTKNOW,
  DomainAvailabilityRESERVED,
  DomainAvailabilityUNAVAILABLE,
  DomainAvailabilityUNAVAILABLEPREMIUM,
  DomainAvailabilityUNAVAILABLERESTRICTED,
  DomainAvailability'
  #-}

instance Prelude.FromText DomainAvailability where
  parser = DomainAvailability' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainAvailability where
  toText (DomainAvailability' x) = x

instance Prelude.Hashable DomainAvailability

instance Prelude.NFData DomainAvailability

instance Prelude.ToByteString DomainAvailability

instance Prelude.ToQuery DomainAvailability

instance Prelude.ToHeader DomainAvailability

instance Prelude.FromJSON DomainAvailability where
  parseJSON = Prelude.parseJSONText "DomainAvailability"
