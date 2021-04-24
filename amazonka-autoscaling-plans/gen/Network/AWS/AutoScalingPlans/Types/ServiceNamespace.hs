{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ServiceNamespace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ServiceNamespace
  ( ServiceNamespace
      ( ..,
        Autoscaling,
        Dynamodb,
        EC2,
        Ecs,
        RDS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServiceNamespace = ServiceNamespace' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Autoscaling :: ServiceNamespace
pattern Autoscaling = ServiceNamespace' "autoscaling"

pattern Dynamodb :: ServiceNamespace
pattern Dynamodb = ServiceNamespace' "dynamodb"

pattern EC2 :: ServiceNamespace
pattern EC2 = ServiceNamespace' "ec2"

pattern Ecs :: ServiceNamespace
pattern Ecs = ServiceNamespace' "ecs"

pattern RDS :: ServiceNamespace
pattern RDS = ServiceNamespace' "rds"

{-# COMPLETE
  Autoscaling,
  Dynamodb,
  EC2,
  Ecs,
  RDS,
  ServiceNamespace'
  #-}

instance FromText ServiceNamespace where
  parser = (ServiceNamespace' . mk) <$> takeText

instance ToText ServiceNamespace where
  toText (ServiceNamespace' ci) = original ci

instance Hashable ServiceNamespace

instance NFData ServiceNamespace

instance ToByteString ServiceNamespace

instance ToQuery ServiceNamespace

instance ToHeader ServiceNamespace

instance ToJSON ServiceNamespace where
  toJSON = toJSONText

instance FromJSON ServiceNamespace where
  parseJSON = parseJSONText "ServiceNamespace"
