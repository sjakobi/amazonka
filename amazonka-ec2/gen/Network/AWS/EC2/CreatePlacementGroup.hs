{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreatePlacementGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a placement group in which to launch instances. The strategy of the placement group determines how the instances are organized within the group.
--
--
-- A @cluster@ placement group is a logical grouping of instances within a single Availability Zone that benefit from low network latency, high network throughput. A @spread@ placement group places instances on distinct hardware. A @partition@ placement group places groups of instances in different partitions, where instances in one partition do not share the same hardware with instances in another partition.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement groups> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.CreatePlacementGroup
  ( -- * Creating a Request
    createPlacementGroup,
    CreatePlacementGroup,

    -- * Request Lenses
    cpgTagSpecifications,
    cpgDryRun,
    cpgStrategy,
    cpgGroupName,
    cpgPartitionCount,

    -- * Destructuring the Response
    createPlacementGroupResponse,
    CreatePlacementGroupResponse,

    -- * Response Lenses
    cpgrrsPlacementGroup,
    cpgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createPlacementGroup' smart constructor.
data CreatePlacementGroup = CreatePlacementGroup'
  { _cpgTagSpecifications ::
      !(Maybe [TagSpecification]),
    _cpgDryRun :: !(Maybe Bool),
    _cpgStrategy ::
      !(Maybe PlacementStrategy),
    _cpgGroupName ::
      !(Maybe Text),
    _cpgPartitionCount ::
      !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePlacementGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgTagSpecifications' - The tags to apply to the new placement group.
--
-- * 'cpgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cpgStrategy' - The placement strategy.
--
-- * 'cpgGroupName' - A name for the placement group. Must be unique within the scope of your account for the Region. Constraints: Up to 255 ASCII characters
--
-- * 'cpgPartitionCount' - The number of partitions. Valid only when __Strategy__ is set to @partition@ .
createPlacementGroup ::
  CreatePlacementGroup
createPlacementGroup =
  CreatePlacementGroup'
    { _cpgTagSpecifications =
        Nothing,
      _cpgDryRun = Nothing,
      _cpgStrategy = Nothing,
      _cpgGroupName = Nothing,
      _cpgPartitionCount = Nothing
    }

-- | The tags to apply to the new placement group.
cpgTagSpecifications :: Lens' CreatePlacementGroup [TagSpecification]
cpgTagSpecifications = lens _cpgTagSpecifications (\s a -> s {_cpgTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cpgDryRun :: Lens' CreatePlacementGroup (Maybe Bool)
cpgDryRun = lens _cpgDryRun (\s a -> s {_cpgDryRun = a})

-- | The placement strategy.
cpgStrategy :: Lens' CreatePlacementGroup (Maybe PlacementStrategy)
cpgStrategy = lens _cpgStrategy (\s a -> s {_cpgStrategy = a})

-- | A name for the placement group. Must be unique within the scope of your account for the Region. Constraints: Up to 255 ASCII characters
cpgGroupName :: Lens' CreatePlacementGroup (Maybe Text)
cpgGroupName = lens _cpgGroupName (\s a -> s {_cpgGroupName = a})

-- | The number of partitions. Valid only when __Strategy__ is set to @partition@ .
cpgPartitionCount :: Lens' CreatePlacementGroup (Maybe Int)
cpgPartitionCount = lens _cpgPartitionCount (\s a -> s {_cpgPartitionCount = a})

instance AWSRequest CreatePlacementGroup where
  type
    Rs CreatePlacementGroup =
      CreatePlacementGroupResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreatePlacementGroupResponse'
            <$> (x .@? "placementGroup") <*> (pure (fromEnum s))
      )

instance Hashable CreatePlacementGroup

instance NFData CreatePlacementGroup

instance ToHeaders CreatePlacementGroup where
  toHeaders = const mempty

instance ToPath CreatePlacementGroup where
  toPath = const "/"

instance ToQuery CreatePlacementGroup where
  toQuery CreatePlacementGroup' {..} =
    mconcat
      [ "Action" =: ("CreatePlacementGroup" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cpgTagSpecifications
          ),
        "DryRun" =: _cpgDryRun,
        "Strategy" =: _cpgStrategy,
        "GroupName" =: _cpgGroupName,
        "PartitionCount" =: _cpgPartitionCount
      ]

-- | /See:/ 'createPlacementGroupResponse' smart constructor.
data CreatePlacementGroupResponse = CreatePlacementGroupResponse'
  { _cpgrrsPlacementGroup ::
      !( Maybe
           PlacementGroup
       ),
    _cpgrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreatePlacementGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgrrsPlacementGroup' - Undocumented member.
--
-- * 'cpgrrsResponseStatus' - -- | The response status code.
createPlacementGroupResponse ::
  -- | 'cpgrrsResponseStatus'
  Int ->
  CreatePlacementGroupResponse
createPlacementGroupResponse pResponseStatus_ =
  CreatePlacementGroupResponse'
    { _cpgrrsPlacementGroup =
        Nothing,
      _cpgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cpgrrsPlacementGroup :: Lens' CreatePlacementGroupResponse (Maybe PlacementGroup)
cpgrrsPlacementGroup = lens _cpgrrsPlacementGroup (\s a -> s {_cpgrrsPlacementGroup = a})

-- | -- | The response status code.
cpgrrsResponseStatus :: Lens' CreatePlacementGroupResponse Int
cpgrrsResponseStatus = lens _cpgrrsResponseStatus (\s a -> s {_cpgrrsResponseStatus = a})

instance NFData CreatePlacementGroupResponse
