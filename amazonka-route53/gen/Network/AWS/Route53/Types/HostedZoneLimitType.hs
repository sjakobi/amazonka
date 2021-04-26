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
-- Module      : Network.AWS.Route53.Types.HostedZoneLimitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.HostedZoneLimitType
  ( HostedZoneLimitType
      ( ..,
        HostedZoneLimitTypeMAXRRSETSBYZONE,
        HostedZoneLimitTypeMAXVPCSASSOCIATEDBYZONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype HostedZoneLimitType = HostedZoneLimitType'
  { fromHostedZoneLimitType ::
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

pattern HostedZoneLimitTypeMAXRRSETSBYZONE :: HostedZoneLimitType
pattern HostedZoneLimitTypeMAXRRSETSBYZONE = HostedZoneLimitType' "MAX_RRSETS_BY_ZONE"

pattern HostedZoneLimitTypeMAXVPCSASSOCIATEDBYZONE :: HostedZoneLimitType
pattern HostedZoneLimitTypeMAXVPCSASSOCIATEDBYZONE = HostedZoneLimitType' "MAX_VPCS_ASSOCIATED_BY_ZONE"

{-# COMPLETE
  HostedZoneLimitTypeMAXRRSETSBYZONE,
  HostedZoneLimitTypeMAXVPCSASSOCIATEDBYZONE,
  HostedZoneLimitType'
  #-}

instance Prelude.FromText HostedZoneLimitType where
  parser = HostedZoneLimitType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HostedZoneLimitType where
  toText (HostedZoneLimitType' x) = x

instance Prelude.Hashable HostedZoneLimitType

instance Prelude.NFData HostedZoneLimitType

instance Prelude.ToByteString HostedZoneLimitType

instance Prelude.ToQuery HostedZoneLimitType

instance Prelude.ToHeader HostedZoneLimitType

instance Prelude.FromXML HostedZoneLimitType where
  parseXML = Prelude.parseXMLText "HostedZoneLimitType"

instance Prelude.ToXML HostedZoneLimitType where
  toXML = Prelude.toXMLText
