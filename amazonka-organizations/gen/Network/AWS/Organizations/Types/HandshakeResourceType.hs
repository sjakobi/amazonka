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
-- Module      : Network.AWS.Organizations.Types.HandshakeResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.HandshakeResourceType
  ( HandshakeResourceType
      ( ..,
        HandshakeResourceTypeACCOUNT,
        HandshakeResourceTypeEMAIL,
        HandshakeResourceTypeMASTEREMAIL,
        HandshakeResourceTypeMASTERNAME,
        HandshakeResourceTypeNOTES,
        HandshakeResourceTypeORGANIZATION,
        HandshakeResourceTypeORGANIZATIONFEATURESET,
        HandshakeResourceTypePARENTHANDSHAKE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HandshakeResourceType = HandshakeResourceType'
  { fromHandshakeResourceType ::
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

pattern HandshakeResourceTypeACCOUNT :: HandshakeResourceType
pattern HandshakeResourceTypeACCOUNT = HandshakeResourceType' "ACCOUNT"

pattern HandshakeResourceTypeEMAIL :: HandshakeResourceType
pattern HandshakeResourceTypeEMAIL = HandshakeResourceType' "EMAIL"

pattern HandshakeResourceTypeMASTEREMAIL :: HandshakeResourceType
pattern HandshakeResourceTypeMASTEREMAIL = HandshakeResourceType' "MASTER_EMAIL"

pattern HandshakeResourceTypeMASTERNAME :: HandshakeResourceType
pattern HandshakeResourceTypeMASTERNAME = HandshakeResourceType' "MASTER_NAME"

pattern HandshakeResourceTypeNOTES :: HandshakeResourceType
pattern HandshakeResourceTypeNOTES = HandshakeResourceType' "NOTES"

pattern HandshakeResourceTypeORGANIZATION :: HandshakeResourceType
pattern HandshakeResourceTypeORGANIZATION = HandshakeResourceType' "ORGANIZATION"

pattern HandshakeResourceTypeORGANIZATIONFEATURESET :: HandshakeResourceType
pattern HandshakeResourceTypeORGANIZATIONFEATURESET = HandshakeResourceType' "ORGANIZATION_FEATURE_SET"

pattern HandshakeResourceTypePARENTHANDSHAKE :: HandshakeResourceType
pattern HandshakeResourceTypePARENTHANDSHAKE = HandshakeResourceType' "PARENT_HANDSHAKE"

{-# COMPLETE
  HandshakeResourceTypeACCOUNT,
  HandshakeResourceTypeEMAIL,
  HandshakeResourceTypeMASTEREMAIL,
  HandshakeResourceTypeMASTERNAME,
  HandshakeResourceTypeNOTES,
  HandshakeResourceTypeORGANIZATION,
  HandshakeResourceTypeORGANIZATIONFEATURESET,
  HandshakeResourceTypePARENTHANDSHAKE,
  HandshakeResourceType'
  #-}

instance Prelude.FromText HandshakeResourceType where
  parser = HandshakeResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HandshakeResourceType where
  toText (HandshakeResourceType' x) = x

instance Prelude.Hashable HandshakeResourceType

instance Prelude.NFData HandshakeResourceType

instance Prelude.ToByteString HandshakeResourceType

instance Prelude.ToQuery HandshakeResourceType

instance Prelude.ToHeader HandshakeResourceType

instance Prelude.FromJSON HandshakeResourceType where
  parseJSON = Prelude.parseJSONText "HandshakeResourceType"
