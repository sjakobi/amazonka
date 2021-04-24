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
-- Module      : Network.AWS.CloudFormation.DescribeStackResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the specified resource in the specified stack.
--
--
-- For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.
module Network.AWS.CloudFormation.DescribeStackResource
  ( -- * Creating a Request
    describeStackResource,
    DescribeStackResource,

    -- * Request Lenses
    dsrStackName,
    dsrLogicalResourceId,

    -- * Destructuring the Response
    describeStackResourceResponse,
    DescribeStackResourceResponse,

    -- * Response Lenses
    dsrrrsStackResourceDetail,
    dsrrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for 'DescribeStackResource' action.
--
--
--
-- /See:/ 'describeStackResource' smart constructor.
data DescribeStackResource = DescribeStackResource'
  { _dsrStackName ::
      !Text,
    _dsrLogicalResourceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStackResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrStackName' - The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value.
--
-- * 'dsrLogicalResourceId' - The logical name of the resource as specified in the template. Default: There is no default value.
describeStackResource ::
  -- | 'dsrStackName'
  Text ->
  -- | 'dsrLogicalResourceId'
  Text ->
  DescribeStackResource
describeStackResource pStackName_ pLogicalResourceId_ =
  DescribeStackResource'
    { _dsrStackName = pStackName_,
      _dsrLogicalResourceId = pLogicalResourceId_
    }

-- | The name or the unique stack ID that is associated with the stack, which are not always interchangeable:     * Running stacks: You can specify either the stack's name or its unique stack ID.     * Deleted stacks: You must specify the unique stack ID. Default: There is no default value.
dsrStackName :: Lens' DescribeStackResource Text
dsrStackName = lens _dsrStackName (\s a -> s {_dsrStackName = a})

-- | The logical name of the resource as specified in the template. Default: There is no default value.
dsrLogicalResourceId :: Lens' DescribeStackResource Text
dsrLogicalResourceId = lens _dsrLogicalResourceId (\s a -> s {_dsrLogicalResourceId = a})

instance AWSRequest DescribeStackResource where
  type
    Rs DescribeStackResource =
      DescribeStackResourceResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeStackResourceResult"
      ( \s h x ->
          DescribeStackResourceResponse'
            <$> (x .@? "StackResourceDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStackResource

instance NFData DescribeStackResource

instance ToHeaders DescribeStackResource where
  toHeaders = const mempty

instance ToPath DescribeStackResource where
  toPath = const "/"

instance ToQuery DescribeStackResource where
  toQuery DescribeStackResource' {..} =
    mconcat
      [ "Action" =: ("DescribeStackResource" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "StackName" =: _dsrStackName,
        "LogicalResourceId" =: _dsrLogicalResourceId
      ]

-- | The output for a 'DescribeStackResource' action.
--
--
--
-- /See:/ 'describeStackResourceResponse' smart constructor.
data DescribeStackResourceResponse = DescribeStackResourceResponse'
  { _dsrrrsStackResourceDetail ::
      !( Maybe
           StackResourceDetail
       ),
    _dsrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeStackResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrrsStackResourceDetail' - A @StackResourceDetail@ structure containing the description of the specified resource in the specified stack.
--
-- * 'dsrrrsResponseStatus' - -- | The response status code.
describeStackResourceResponse ::
  -- | 'dsrrrsResponseStatus'
  Int ->
  DescribeStackResourceResponse
describeStackResourceResponse pResponseStatus_ =
  DescribeStackResourceResponse'
    { _dsrrrsStackResourceDetail =
        Nothing,
      _dsrrrsResponseStatus = pResponseStatus_
    }

-- | A @StackResourceDetail@ structure containing the description of the specified resource in the specified stack.
dsrrrsStackResourceDetail :: Lens' DescribeStackResourceResponse (Maybe StackResourceDetail)
dsrrrsStackResourceDetail = lens _dsrrrsStackResourceDetail (\s a -> s {_dsrrrsStackResourceDetail = a})

-- | -- | The response status code.
dsrrrsResponseStatus :: Lens' DescribeStackResourceResponse Int
dsrrrsResponseStatus = lens _dsrrrsResponseStatus (\s a -> s {_dsrrrsResponseStatus = a})

instance NFData DescribeStackResourceResponse
