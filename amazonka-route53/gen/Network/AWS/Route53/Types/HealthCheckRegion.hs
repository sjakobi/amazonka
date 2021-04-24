{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        HCRApNortheast1,
        HCRApSoutheast1,
        HCRApSoutheast2,
        HCREuWest1,
        HCRSaEast1,
        HCRUsEast1,
        HCRUsWest1,
        HCRUsWest2
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data HealthCheckRegion = HealthCheckRegion' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HCRApNortheast1 :: HealthCheckRegion
pattern HCRApNortheast1 = HealthCheckRegion' "ap-northeast-1"

pattern HCRApSoutheast1 :: HealthCheckRegion
pattern HCRApSoutheast1 = HealthCheckRegion' "ap-southeast-1"

pattern HCRApSoutheast2 :: HealthCheckRegion
pattern HCRApSoutheast2 = HealthCheckRegion' "ap-southeast-2"

pattern HCREuWest1 :: HealthCheckRegion
pattern HCREuWest1 = HealthCheckRegion' "eu-west-1"

pattern HCRSaEast1 :: HealthCheckRegion
pattern HCRSaEast1 = HealthCheckRegion' "sa-east-1"

pattern HCRUsEast1 :: HealthCheckRegion
pattern HCRUsEast1 = HealthCheckRegion' "us-east-1"

pattern HCRUsWest1 :: HealthCheckRegion
pattern HCRUsWest1 = HealthCheckRegion' "us-west-1"

pattern HCRUsWest2 :: HealthCheckRegion
pattern HCRUsWest2 = HealthCheckRegion' "us-west-2"

{-# COMPLETE
  HCRApNortheast1,
  HCRApSoutheast1,
  HCRApSoutheast2,
  HCREuWest1,
  HCRSaEast1,
  HCRUsEast1,
  HCRUsWest1,
  HCRUsWest2,
  HealthCheckRegion'
  #-}

instance FromText HealthCheckRegion where
  parser = (HealthCheckRegion' . mk) <$> takeText

instance ToText HealthCheckRegion where
  toText (HealthCheckRegion' ci) = original ci

instance Hashable HealthCheckRegion

instance NFData HealthCheckRegion

instance ToByteString HealthCheckRegion

instance ToQuery HealthCheckRegion

instance ToHeader HealthCheckRegion

instance FromXML HealthCheckRegion where
  parseXML = parseXMLText "HealthCheckRegion"

instance ToXML HealthCheckRegion where
  toXML = toXMLText
