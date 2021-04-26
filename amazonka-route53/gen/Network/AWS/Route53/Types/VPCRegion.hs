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
-- Module      : Network.AWS.Route53.Types.VPCRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.VPCRegion
  ( VPCRegion
      ( ..,
        VPCRegionAfSouth1,
        VPCRegionApEast1,
        VPCRegionApNortheast1,
        VPCRegionApNortheast2,
        VPCRegionApNortheast3,
        VPCRegionApSouth1,
        VPCRegionApSoutheast1,
        VPCRegionApSoutheast2,
        VPCRegionCaCentral1,
        VPCRegionCnNorth1,
        VPCRegionEuCentral1,
        VPCRegionEuNorth1,
        VPCRegionEuSouth1,
        VPCRegionEuWest1,
        VPCRegionEuWest2,
        VPCRegionEuWest3,
        VPCRegionMeSouth1,
        VPCRegionSaEast1,
        VPCRegionUsEast1,
        VPCRegionUsEast2,
        VPCRegionUsGovEast1,
        VPCRegionUsGovWest1,
        VPCRegionUsIsoEast1,
        VPCRegionUsIsobEast1,
        VPCRegionUsWest1,
        VPCRegionUsWest2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype VPCRegion = VPCRegion'
  { fromVPCRegion ::
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

pattern VPCRegionAfSouth1 :: VPCRegion
pattern VPCRegionAfSouth1 = VPCRegion' "af-south-1"

pattern VPCRegionApEast1 :: VPCRegion
pattern VPCRegionApEast1 = VPCRegion' "ap-east-1"

pattern VPCRegionApNortheast1 :: VPCRegion
pattern VPCRegionApNortheast1 = VPCRegion' "ap-northeast-1"

pattern VPCRegionApNortheast2 :: VPCRegion
pattern VPCRegionApNortheast2 = VPCRegion' "ap-northeast-2"

pattern VPCRegionApNortheast3 :: VPCRegion
pattern VPCRegionApNortheast3 = VPCRegion' "ap-northeast-3"

pattern VPCRegionApSouth1 :: VPCRegion
pattern VPCRegionApSouth1 = VPCRegion' "ap-south-1"

pattern VPCRegionApSoutheast1 :: VPCRegion
pattern VPCRegionApSoutheast1 = VPCRegion' "ap-southeast-1"

pattern VPCRegionApSoutheast2 :: VPCRegion
pattern VPCRegionApSoutheast2 = VPCRegion' "ap-southeast-2"

pattern VPCRegionCaCentral1 :: VPCRegion
pattern VPCRegionCaCentral1 = VPCRegion' "ca-central-1"

pattern VPCRegionCnNorth1 :: VPCRegion
pattern VPCRegionCnNorth1 = VPCRegion' "cn-north-1"

pattern VPCRegionEuCentral1 :: VPCRegion
pattern VPCRegionEuCentral1 = VPCRegion' "eu-central-1"

pattern VPCRegionEuNorth1 :: VPCRegion
pattern VPCRegionEuNorth1 = VPCRegion' "eu-north-1"

pattern VPCRegionEuSouth1 :: VPCRegion
pattern VPCRegionEuSouth1 = VPCRegion' "eu-south-1"

pattern VPCRegionEuWest1 :: VPCRegion
pattern VPCRegionEuWest1 = VPCRegion' "eu-west-1"

pattern VPCRegionEuWest2 :: VPCRegion
pattern VPCRegionEuWest2 = VPCRegion' "eu-west-2"

pattern VPCRegionEuWest3 :: VPCRegion
pattern VPCRegionEuWest3 = VPCRegion' "eu-west-3"

pattern VPCRegionMeSouth1 :: VPCRegion
pattern VPCRegionMeSouth1 = VPCRegion' "me-south-1"

pattern VPCRegionSaEast1 :: VPCRegion
pattern VPCRegionSaEast1 = VPCRegion' "sa-east-1"

pattern VPCRegionUsEast1 :: VPCRegion
pattern VPCRegionUsEast1 = VPCRegion' "us-east-1"

pattern VPCRegionUsEast2 :: VPCRegion
pattern VPCRegionUsEast2 = VPCRegion' "us-east-2"

pattern VPCRegionUsGovEast1 :: VPCRegion
pattern VPCRegionUsGovEast1 = VPCRegion' "us-gov-east-1"

pattern VPCRegionUsGovWest1 :: VPCRegion
pattern VPCRegionUsGovWest1 = VPCRegion' "us-gov-west-1"

pattern VPCRegionUsIsoEast1 :: VPCRegion
pattern VPCRegionUsIsoEast1 = VPCRegion' "us-iso-east-1"

pattern VPCRegionUsIsobEast1 :: VPCRegion
pattern VPCRegionUsIsobEast1 = VPCRegion' "us-isob-east-1"

pattern VPCRegionUsWest1 :: VPCRegion
pattern VPCRegionUsWest1 = VPCRegion' "us-west-1"

pattern VPCRegionUsWest2 :: VPCRegion
pattern VPCRegionUsWest2 = VPCRegion' "us-west-2"

{-# COMPLETE
  VPCRegionAfSouth1,
  VPCRegionApEast1,
  VPCRegionApNortheast1,
  VPCRegionApNortheast2,
  VPCRegionApNortheast3,
  VPCRegionApSouth1,
  VPCRegionApSoutheast1,
  VPCRegionApSoutheast2,
  VPCRegionCaCentral1,
  VPCRegionCnNorth1,
  VPCRegionEuCentral1,
  VPCRegionEuNorth1,
  VPCRegionEuSouth1,
  VPCRegionEuWest1,
  VPCRegionEuWest2,
  VPCRegionEuWest3,
  VPCRegionMeSouth1,
  VPCRegionSaEast1,
  VPCRegionUsEast1,
  VPCRegionUsEast2,
  VPCRegionUsGovEast1,
  VPCRegionUsGovWest1,
  VPCRegionUsIsoEast1,
  VPCRegionUsIsobEast1,
  VPCRegionUsWest1,
  VPCRegionUsWest2,
  VPCRegion'
  #-}

instance Prelude.FromText VPCRegion where
  parser = VPCRegion' Prelude.<$> Prelude.takeText

instance Prelude.ToText VPCRegion where
  toText (VPCRegion' x) = x

instance Prelude.Hashable VPCRegion

instance Prelude.NFData VPCRegion

instance Prelude.ToByteString VPCRegion

instance Prelude.ToQuery VPCRegion

instance Prelude.ToHeader VPCRegion

instance Prelude.FromXML VPCRegion where
  parseXML = Prelude.parseXMLText "VPCRegion"

instance Prelude.ToXML VPCRegion where
  toXML = Prelude.toXMLText
