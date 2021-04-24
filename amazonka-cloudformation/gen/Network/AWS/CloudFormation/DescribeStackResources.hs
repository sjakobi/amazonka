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
-- Module      : Network.AWS.CloudFormation.DescribeStackResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns AWS resource descriptions for running and deleted stacks. If @StackName@ is specified, all the associated resources that are part of the stack are returned. If @PhysicalResourceId@ is specified, the associated resources of the stack that the resource belongs to are returned.
--
--
-- For deleted stacks, @DescribeStackResources@ returns resource information for up to 90 days after the stack has been deleted.
--
-- You must specify either @StackName@ or @PhysicalResourceId@ , but not both. In addition, you can specify @LogicalResourceId@ to filter the returned result. For more information about resources, the @LogicalResourceId@ and @PhysicalResourceId@ , go to the <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/ AWS CloudFormation User Guide> .
module Network.AWS.CloudFormation.DescribeStackResources
  ( -- * Creating a Request
    describeStackResources,
    DescribeStackResources,

    -- * Request Lenses
    dsrsStackName,
    dsrsPhysicalResourceId,
    dsrsLogicalResourceId,

    -- * Destructuring the Response
    describeStackResourcesResponse,
    DescribeStackResourcesResponse,

    -- * Response Lenses
    dsrrsrsStackResources,
    dsrrsrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for 'DescribeStackResources' action.
--
--
--
-- /See:/ 'describeStackResources' smart constructor.
data DescribeStackResources = DescribeStackResources'
  { _dsrsStackName ::
      !(Maybe Text),
    _dsrsPhysicalResourceId ::
      !(Maybe Text),
    _dsrsLogicalResourceId ::
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

-- | Creates a value of 'DescribeStackResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrsStackName' - The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value. Required: Conditional. If you do not specify @StackName@ , you must specify @PhysicalResourceId@ .
--
-- * 'dsrsPhysicalResourceId' - The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation. For example, for an Amazon Elastic Compute Cloud (EC2) instance, @PhysicalResourceId@ corresponds to the @InstanceId@ . You can pass the EC2 @InstanceId@ to @DescribeStackResources@ to find which stack the instance belongs to and what other resources are part of the stack. Required: Conditional. If you do not specify @PhysicalResourceId@ , you must specify @StackName@ . Default: There is no default value.
--
-- * 'dsrsLogicalResourceId' - The logical name of the resource as specified in the template. Default: There is no default value.
describeStackResources ::
  DescribeStackResources
describeStackResources =
  DescribeStackResources'
    { _dsrsStackName = Nothing,
      _dsrsPhysicalResourceId = Nothing,
      _dsrsLogicalResourceId = Nothing
    }

-- | The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value. Required: Conditional. If you do not specify @StackName@ , you must specify @PhysicalResourceId@ .
dsrsStackName :: Lens' DescribeStackResources (Maybe Text)
dsrsStackName = lens _dsrsStackName (\s a -> s {_dsrsStackName = a})

-- | The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation. For example, for an Amazon Elastic Compute Cloud (EC2) instance, @PhysicalResourceId@ corresponds to the @InstanceId@ . You can pass the EC2 @InstanceId@ to @DescribeStackResources@ to find which stack the instance belongs to and what other resources are part of the stack. Required: Conditional. If you do not specify @PhysicalResourceId@ , you must specify @StackName@ . Default: There is no default value.
dsrsPhysicalResourceId :: Lens' DescribeStackResources (Maybe Text)
dsrsPhysicalResourceId = lens _dsrsPhysicalResourceId (\s a -> s {_dsrsPhysicalResourceId = a})

-- | The logical name of the resource as specified in the template. Default: There is no default value.
dsrsLogicalResourceId :: Lens' DescribeStackResources (Maybe Text)
dsrsLogicalResourceId = lens _dsrsLogicalResourceId (\s a -> s {_dsrsLogicalResourceId = a})

instance AWSRequest DescribeStackResources where
  type
    Rs DescribeStackResources =
      DescribeStackResourcesResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeStackResourcesResult"
      ( \s h x ->
          DescribeStackResourcesResponse'
            <$> ( x .@? "StackResources" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStackResources

instance NFData DescribeStackResources

instance ToHeaders DescribeStackResources where
  toHeaders = const mempty

instance ToPath DescribeStackResources where
  toPath = const "/"

instance ToQuery DescribeStackResources where
  toQuery DescribeStackResources' {..} =
    mconcat
      [ "Action"
          =: ("DescribeStackResources" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "StackName" =: _dsrsStackName,
        "PhysicalResourceId" =: _dsrsPhysicalResourceId,
        "LogicalResourceId" =: _dsrsLogicalResourceId
      ]

-- | The output for a 'DescribeStackResources' action.
--
--
--
-- /See:/ 'describeStackResourcesResponse' smart constructor.
data DescribeStackResourcesResponse = DescribeStackResourcesResponse'
  { _dsrrsrsStackResources ::
      !( Maybe
           [StackResource]
       ),
    _dsrrsrsResponseStatus ::
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

-- | Creates a value of 'DescribeStackResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsrsStackResources' - A list of @StackResource@ structures.
--
-- * 'dsrrsrsResponseStatus' - -- | The response status code.
describeStackResourcesResponse ::
  -- | 'dsrrsrsResponseStatus'
  Int ->
  DescribeStackResourcesResponse
describeStackResourcesResponse pResponseStatus_ =
  DescribeStackResourcesResponse'
    { _dsrrsrsStackResources =
        Nothing,
      _dsrrsrsResponseStatus = pResponseStatus_
    }

-- | A list of @StackResource@ structures.
dsrrsrsStackResources :: Lens' DescribeStackResourcesResponse [StackResource]
dsrrsrsStackResources = lens _dsrrsrsStackResources (\s a -> s {_dsrrsrsStackResources = a}) . _Default . _Coerce

-- | -- | The response status code.
dsrrsrsResponseStatus :: Lens' DescribeStackResourcesResponse Int
dsrrsrsResponseStatus = lens _dsrrsrsResponseStatus (\s a -> s {_dsrrsrsResponseStatus = a})

instance NFData DescribeStackResourcesResponse
