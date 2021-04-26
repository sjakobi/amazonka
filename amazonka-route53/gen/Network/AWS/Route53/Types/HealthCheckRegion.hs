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
-- Module      : Network.AWS.Route53.Types.HealthCheckRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.HealthCheckRegion
  ( HealthCheckRegion
      ( ..,
        HealthCheckRegionApNortheast1,
        HealthCheckRegionApSoutheast1,
        HealthCheckRegionApSoutheast2,
        HealthCheckRegionEuWest1,
        HealthCheckRegionSaEast1,
        HealthCheckRegionUsEast1,
        HealthCheckRegionUsWest1,
        HealthCheckRegionUsWest2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype HealthCheckRegion = HealthCheckRegion'
  { fromHealthCheckRegion ::
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

pattern HealthCheckRegionApNortheast1 :: HealthCheckRegion
pattern HealthCheckRegionApNortheast1 = HealthCheckRegion' "ap-northeast-1"

pattern HealthCheckRegionApSoutheast1 :: HealthCheckRegion
pattern HealthCheckRegionApSoutheast1 = HealthCheckRegion' "ap-southeast-1"

pattern HealthCheckRegionApSoutheast2 :: HealthCheckRegion
pattern HealthCheckRegionApSoutheast2 = HealthCheckRegion' "ap-southeast-2"

pattern HealthCheckRegionEuWest1 :: HealthCheckRegion
pattern HealthCheckRegionEuWest1 = HealthCheckRegion' "eu-west-1"

pattern HealthCheckRegionSaEast1 :: HealthCheckRegion
pattern HealthCheckRegionSaEast1 = HealthCheckRegion' "sa-east-1"

pattern HealthCheckRegionUsEast1 :: HealthCheckRegion
pattern HealthCheckRegionUsEast1 = HealthCheckRegion' "us-east-1"

pattern HealthCheckRegionUsWest1 :: HealthCheckRegion
pattern HealthCheckRegionUsWest1 = HealthCheckRegion' "us-west-1"

pattern HealthCheckRegionUsWest2 :: HealthCheckRegion
pattern HealthCheckRegionUsWest2 = HealthCheckRegion' "us-west-2"

{-# COMPLETE
  HealthCheckRegionApNortheast1,
  HealthCheckRegionApSoutheast1,
  HealthCheckRegionApSoutheast2,
  HealthCheckRegionEuWest1,
  HealthCheckRegionSaEast1,
  HealthCheckRegionUsEast1,
  HealthCheckRegionUsWest1,
  HealthCheckRegionUsWest2,
  HealthCheckRegion'
  #-}

instance Prelude.FromText HealthCheckRegion where
  parser = HealthCheckRegion' Prelude.<$> Prelude.takeText

instance Prelude.ToText HealthCheckRegion where
  toText (HealthCheckRegion' x) = x

instance Prelude.Hashable HealthCheckRegion

instance Prelude.NFData HealthCheckRegion

instance Prelude.ToByteString HealthCheckRegion

instance Prelude.ToQuery HealthCheckRegion

instance Prelude.ToHeader HealthCheckRegion

instance Prelude.FromXML HealthCheckRegion where
  parseXML = Prelude.parseXMLText "HealthCheckRegion"

instance Prelude.ToXML HealthCheckRegion where
  toXML = Prelude.toXMLText
