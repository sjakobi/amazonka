{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ClusterParameterGroup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.Tag

-- | Describes a parameter group.
--
--
--
-- /See:/ 'clusterParameterGroup' smart constructor.
data ClusterParameterGroup = ClusterParameterGroup'
  { _cpgTags ::
      !(Maybe [Tag]),
    _cpgParameterGroupName ::
      !(Maybe Text),
    _cpgDescription ::
      !(Maybe Text),
    _cpgParameterGroupFamily ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ClusterParameterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgTags' - The list of tags for the cluster parameter group.
--
-- * 'cpgParameterGroupName' - The name of the cluster parameter group.
--
-- * 'cpgDescription' - The description of the parameter group.
--
-- * 'cpgParameterGroupFamily' - The name of the cluster parameter group family that this cluster parameter group is compatible with.
clusterParameterGroup ::
  ClusterParameterGroup
clusterParameterGroup =
  ClusterParameterGroup'
    { _cpgTags = Nothing,
      _cpgParameterGroupName = Nothing,
      _cpgDescription = Nothing,
      _cpgParameterGroupFamily = Nothing
    }

-- | The list of tags for the cluster parameter group.
cpgTags :: Lens' ClusterParameterGroup [Tag]
cpgTags = lens _cpgTags (\s a -> s {_cpgTags = a}) . _Default . _Coerce

-- | The name of the cluster parameter group.
cpgParameterGroupName :: Lens' ClusterParameterGroup (Maybe Text)
cpgParameterGroupName = lens _cpgParameterGroupName (\s a -> s {_cpgParameterGroupName = a})

-- | The description of the parameter group.
cpgDescription :: Lens' ClusterParameterGroup (Maybe Text)
cpgDescription = lens _cpgDescription (\s a -> s {_cpgDescription = a})

-- | The name of the cluster parameter group family that this cluster parameter group is compatible with.
cpgParameterGroupFamily :: Lens' ClusterParameterGroup (Maybe Text)
cpgParameterGroupFamily = lens _cpgParameterGroupFamily (\s a -> s {_cpgParameterGroupFamily = a})

instance FromXML ClusterParameterGroup where
  parseXML x =
    ClusterParameterGroup'
      <$> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> (x .@? "ParameterGroupName")
      <*> (x .@? "Description")
      <*> (x .@? "ParameterGroupFamily")

instance Hashable ClusterParameterGroup

instance NFData ClusterParameterGroup
