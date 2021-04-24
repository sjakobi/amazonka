{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.TargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.TargetType
  ( TargetType
      ( ..,
        RDSInstance,
        RDSServerlessEndpoint,
        TrackedCluster
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetType = TargetType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RDSInstance :: TargetType
pattern RDSInstance = TargetType' "RDS_INSTANCE"

pattern RDSServerlessEndpoint :: TargetType
pattern RDSServerlessEndpoint = TargetType' "RDS_SERVERLESS_ENDPOINT"

pattern TrackedCluster :: TargetType
pattern TrackedCluster = TargetType' "TRACKED_CLUSTER"

{-# COMPLETE
  RDSInstance,
  RDSServerlessEndpoint,
  TrackedCluster,
  TargetType'
  #-}

instance FromText TargetType where
  parser = (TargetType' . mk) <$> takeText

instance ToText TargetType where
  toText (TargetType' ci) = original ci

instance Hashable TargetType

instance NFData TargetType

instance ToByteString TargetType

instance ToQuery TargetType

instance ToHeader TargetType

instance FromXML TargetType where
  parseXML = parseXMLText "TargetType"
