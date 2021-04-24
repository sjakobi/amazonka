{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ClusterSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ClusterSubnetGroup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.Subnet
import Network.AWS.Redshift.Types.Tag

-- | Describes a subnet group.
--
--
--
-- /See:/ 'clusterSubnetGroup' smart constructor.
data ClusterSubnetGroup = ClusterSubnetGroup'
  { _cluClusterSubnetGroupName ::
      !(Maybe Text),
    _cluSubnetGroupStatus ::
      !(Maybe Text),
    _cluTags :: !(Maybe [Tag]),
    _cluDescription :: !(Maybe Text),
    _cluSubnets :: !(Maybe [Subnet]),
    _cluVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClusterSubnetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cluClusterSubnetGroupName' - The name of the cluster subnet group.
--
-- * 'cluSubnetGroupStatus' - The status of the cluster subnet group. Possible values are @Complete@ , @Incomplete@ and @Invalid@ .
--
-- * 'cluTags' - The list of tags for the cluster subnet group.
--
-- * 'cluDescription' - The description of the cluster subnet group.
--
-- * 'cluSubnets' - A list of the VPC 'Subnet' elements.
--
-- * 'cluVPCId' - The VPC ID of the cluster subnet group.
clusterSubnetGroup ::
  ClusterSubnetGroup
clusterSubnetGroup =
  ClusterSubnetGroup'
    { _cluClusterSubnetGroupName =
        Nothing,
      _cluSubnetGroupStatus = Nothing,
      _cluTags = Nothing,
      _cluDescription = Nothing,
      _cluSubnets = Nothing,
      _cluVPCId = Nothing
    }

-- | The name of the cluster subnet group.
cluClusterSubnetGroupName :: Lens' ClusterSubnetGroup (Maybe Text)
cluClusterSubnetGroupName = lens _cluClusterSubnetGroupName (\s a -> s {_cluClusterSubnetGroupName = a})

-- | The status of the cluster subnet group. Possible values are @Complete@ , @Incomplete@ and @Invalid@ .
cluSubnetGroupStatus :: Lens' ClusterSubnetGroup (Maybe Text)
cluSubnetGroupStatus = lens _cluSubnetGroupStatus (\s a -> s {_cluSubnetGroupStatus = a})

-- | The list of tags for the cluster subnet group.
cluTags :: Lens' ClusterSubnetGroup [Tag]
cluTags = lens _cluTags (\s a -> s {_cluTags = a}) . _Default . _Coerce

-- | The description of the cluster subnet group.
cluDescription :: Lens' ClusterSubnetGroup (Maybe Text)
cluDescription = lens _cluDescription (\s a -> s {_cluDescription = a})

-- | A list of the VPC 'Subnet' elements.
cluSubnets :: Lens' ClusterSubnetGroup [Subnet]
cluSubnets = lens _cluSubnets (\s a -> s {_cluSubnets = a}) . _Default . _Coerce

-- | The VPC ID of the cluster subnet group.
cluVPCId :: Lens' ClusterSubnetGroup (Maybe Text)
cluVPCId = lens _cluVPCId (\s a -> s {_cluVPCId = a})

instance FromXML ClusterSubnetGroup where
  parseXML x =
    ClusterSubnetGroup'
      <$> (x .@? "ClusterSubnetGroupName")
      <*> (x .@? "SubnetGroupStatus")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> (x .@? "Description")
      <*> ( x .@? "Subnets" .!@ mempty
              >>= may (parseXMLList "Subnet")
          )
      <*> (x .@? "VpcId")

instance Hashable ClusterSubnetGroup

instance NFData ClusterSubnetGroup
