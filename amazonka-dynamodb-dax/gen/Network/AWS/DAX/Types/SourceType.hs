{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.SourceType
  ( SourceType
      ( ..,
        Cluster,
        ParameterGroup,
        SubnetGroup
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SourceType = SourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cluster :: SourceType
pattern Cluster = SourceType' "CLUSTER"

pattern ParameterGroup :: SourceType
pattern ParameterGroup = SourceType' "PARAMETER_GROUP"

pattern SubnetGroup :: SourceType
pattern SubnetGroup = SourceType' "SUBNET_GROUP"

{-# COMPLETE
  Cluster,
  ParameterGroup,
  SubnetGroup,
  SourceType'
  #-}

instance FromText SourceType where
  parser = (SourceType' . mk) <$> takeText

instance ToText SourceType where
  toText (SourceType' ci) = original ci

instance Hashable SourceType

instance NFData SourceType

instance ToByteString SourceType

instance ToQuery SourceType

instance ToHeader SourceType

instance ToJSON SourceType where
  toJSON = toJSONText

instance FromJSON SourceType where
  parseJSON = parseJSONText "SourceType"
