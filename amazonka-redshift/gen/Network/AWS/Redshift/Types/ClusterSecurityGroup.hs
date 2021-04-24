{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ClusterSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ClusterSecurityGroup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.EC2SecurityGroup
import Network.AWS.Redshift.Types.IPRange
import Network.AWS.Redshift.Types.Tag

-- | Describes a security group.
--
--
--
-- /See:/ 'clusterSecurityGroup' smart constructor.
data ClusterSecurityGroup = ClusterSecurityGroup'
  { _csgIPRanges ::
      !(Maybe [IPRange]),
    _csgClusterSecurityGroupName ::
      !(Maybe Text),
    _csgTags :: !(Maybe [Tag]),
    _csgEC2SecurityGroups ::
      !(Maybe [EC2SecurityGroup]),
    _csgDescription ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClusterSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgIPRanges' - A list of IP ranges (CIDR blocks) that are permitted to access clusters associated with this cluster security group.
--
-- * 'csgClusterSecurityGroupName' - The name of the cluster security group to which the operation was applied.
--
-- * 'csgTags' - The list of tags for the cluster security group.
--
-- * 'csgEC2SecurityGroups' - A list of EC2 security groups that are permitted to access clusters associated with this cluster security group.
--
-- * 'csgDescription' - A description of the security group.
clusterSecurityGroup ::
  ClusterSecurityGroup
clusterSecurityGroup =
  ClusterSecurityGroup'
    { _csgIPRanges = Nothing,
      _csgClusterSecurityGroupName = Nothing,
      _csgTags = Nothing,
      _csgEC2SecurityGroups = Nothing,
      _csgDescription = Nothing
    }

-- | A list of IP ranges (CIDR blocks) that are permitted to access clusters associated with this cluster security group.
csgIPRanges :: Lens' ClusterSecurityGroup [IPRange]
csgIPRanges = lens _csgIPRanges (\s a -> s {_csgIPRanges = a}) . _Default . _Coerce

-- | The name of the cluster security group to which the operation was applied.
csgClusterSecurityGroupName :: Lens' ClusterSecurityGroup (Maybe Text)
csgClusterSecurityGroupName = lens _csgClusterSecurityGroupName (\s a -> s {_csgClusterSecurityGroupName = a})

-- | The list of tags for the cluster security group.
csgTags :: Lens' ClusterSecurityGroup [Tag]
csgTags = lens _csgTags (\s a -> s {_csgTags = a}) . _Default . _Coerce

-- | A list of EC2 security groups that are permitted to access clusters associated with this cluster security group.
csgEC2SecurityGroups :: Lens' ClusterSecurityGroup [EC2SecurityGroup]
csgEC2SecurityGroups = lens _csgEC2SecurityGroups (\s a -> s {_csgEC2SecurityGroups = a}) . _Default . _Coerce

-- | A description of the security group.
csgDescription :: Lens' ClusterSecurityGroup (Maybe Text)
csgDescription = lens _csgDescription (\s a -> s {_csgDescription = a})

instance FromXML ClusterSecurityGroup where
  parseXML x =
    ClusterSecurityGroup'
      <$> ( x .@? "IPRanges" .!@ mempty
              >>= may (parseXMLList "IPRange")
          )
      <*> (x .@? "ClusterSecurityGroupName")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> ( x .@? "EC2SecurityGroups" .!@ mempty
              >>= may (parseXMLList "EC2SecurityGroup")
          )
      <*> (x .@? "Description")

instance Hashable ClusterSecurityGroup

instance NFData ClusterSecurityGroup
