{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.NodeConfigurationOptionsFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.NodeConfigurationOptionsFilterName
  ( NodeConfigurationOptionsFilterName
      ( ..,
        EstimatedDiskUtilizationPercent,
        Mode,
        NodeType,
        NumberOfNodes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data NodeConfigurationOptionsFilterName
  = NodeConfigurationOptionsFilterName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EstimatedDiskUtilizationPercent :: NodeConfigurationOptionsFilterName
pattern EstimatedDiskUtilizationPercent = NodeConfigurationOptionsFilterName' "EstimatedDiskUtilizationPercent"

pattern Mode :: NodeConfigurationOptionsFilterName
pattern Mode = NodeConfigurationOptionsFilterName' "Mode"

pattern NodeType :: NodeConfigurationOptionsFilterName
pattern NodeType = NodeConfigurationOptionsFilterName' "NodeType"

pattern NumberOfNodes :: NodeConfigurationOptionsFilterName
pattern NumberOfNodes = NodeConfigurationOptionsFilterName' "NumberOfNodes"

{-# COMPLETE
  EstimatedDiskUtilizationPercent,
  Mode,
  NodeType,
  NumberOfNodes,
  NodeConfigurationOptionsFilterName'
  #-}

instance FromText NodeConfigurationOptionsFilterName where
  parser = (NodeConfigurationOptionsFilterName' . mk) <$> takeText

instance ToText NodeConfigurationOptionsFilterName where
  toText (NodeConfigurationOptionsFilterName' ci) = original ci

instance Hashable NodeConfigurationOptionsFilterName

instance NFData NodeConfigurationOptionsFilterName

instance ToByteString NodeConfigurationOptionsFilterName

instance ToQuery NodeConfigurationOptionsFilterName

instance ToHeader NodeConfigurationOptionsFilterName
