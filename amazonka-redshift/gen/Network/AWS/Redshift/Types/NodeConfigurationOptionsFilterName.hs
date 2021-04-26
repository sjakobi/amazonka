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
-- Module      : Network.AWS.Redshift.Types.NodeConfigurationOptionsFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.NodeConfigurationOptionsFilterName
  ( NodeConfigurationOptionsFilterName
      ( ..,
        NodeConfigurationOptionsFilterNameEstimatedDiskUtilizationPercent,
        NodeConfigurationOptionsFilterNameMode,
        NodeConfigurationOptionsFilterNameNodeType,
        NodeConfigurationOptionsFilterNameNumberOfNodes
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype NodeConfigurationOptionsFilterName = NodeConfigurationOptionsFilterName'
  { fromNodeConfigurationOptionsFilterName ::
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

pattern NodeConfigurationOptionsFilterNameEstimatedDiskUtilizationPercent :: NodeConfigurationOptionsFilterName
pattern NodeConfigurationOptionsFilterNameEstimatedDiskUtilizationPercent = NodeConfigurationOptionsFilterName' "EstimatedDiskUtilizationPercent"

pattern NodeConfigurationOptionsFilterNameMode :: NodeConfigurationOptionsFilterName
pattern NodeConfigurationOptionsFilterNameMode = NodeConfigurationOptionsFilterName' "Mode"

pattern NodeConfigurationOptionsFilterNameNodeType :: NodeConfigurationOptionsFilterName
pattern NodeConfigurationOptionsFilterNameNodeType = NodeConfigurationOptionsFilterName' "NodeType"

pattern NodeConfigurationOptionsFilterNameNumberOfNodes :: NodeConfigurationOptionsFilterName
pattern NodeConfigurationOptionsFilterNameNumberOfNodes = NodeConfigurationOptionsFilterName' "NumberOfNodes"

{-# COMPLETE
  NodeConfigurationOptionsFilterNameEstimatedDiskUtilizationPercent,
  NodeConfigurationOptionsFilterNameMode,
  NodeConfigurationOptionsFilterNameNodeType,
  NodeConfigurationOptionsFilterNameNumberOfNodes,
  NodeConfigurationOptionsFilterName'
  #-}

instance Prelude.FromText NodeConfigurationOptionsFilterName where
  parser = NodeConfigurationOptionsFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText NodeConfigurationOptionsFilterName where
  toText (NodeConfigurationOptionsFilterName' x) = x

instance Prelude.Hashable NodeConfigurationOptionsFilterName

instance Prelude.NFData NodeConfigurationOptionsFilterName

instance Prelude.ToByteString NodeConfigurationOptionsFilterName

instance Prelude.ToQuery NodeConfigurationOptionsFilterName

instance Prelude.ToHeader NodeConfigurationOptionsFilterName
