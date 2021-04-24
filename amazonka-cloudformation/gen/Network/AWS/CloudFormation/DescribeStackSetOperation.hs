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
-- Module      : Network.AWS.CloudFormation.DescribeStackSetOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of the specified stack set operation.
module Network.AWS.CloudFormation.DescribeStackSetOperation
  ( -- * Creating a Request
    describeStackSetOperation,
    DescribeStackSetOperation,

    -- * Request Lenses
    dssoCallAs,
    dssoStackSetName,
    dssoOperationId,

    -- * Destructuring the Response
    describeStackSetOperationResponse,
    DescribeStackSetOperationResponse,

    -- * Response Lenses
    dssorrsStackSetOperation,
    dssorrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStackSetOperation' smart constructor.
data DescribeStackSetOperation = DescribeStackSetOperation'
  { _dssoCallAs ::
      !(Maybe CallAs),
    _dssoStackSetName ::
      !Text,
    _dssoOperationId ::
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

-- | Creates a value of 'DescribeStackSetOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssoCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'dssoStackSetName' - The name or the unique stack ID of the stack set for the stack operation.
--
-- * 'dssoOperationId' - The unique ID of the stack set operation.
describeStackSetOperation ::
  -- | 'dssoStackSetName'
  Text ->
  -- | 'dssoOperationId'
  Text ->
  DescribeStackSetOperation
describeStackSetOperation
  pStackSetName_
  pOperationId_ =
    DescribeStackSetOperation'
      { _dssoCallAs = Nothing,
        _dssoStackSetName = pStackSetName_,
        _dssoOperationId = pOperationId_
      }

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
dssoCallAs :: Lens' DescribeStackSetOperation (Maybe CallAs)
dssoCallAs = lens _dssoCallAs (\s a -> s {_dssoCallAs = a})

-- | The name or the unique stack ID of the stack set for the stack operation.
dssoStackSetName :: Lens' DescribeStackSetOperation Text
dssoStackSetName = lens _dssoStackSetName (\s a -> s {_dssoStackSetName = a})

-- | The unique ID of the stack set operation.
dssoOperationId :: Lens' DescribeStackSetOperation Text
dssoOperationId = lens _dssoOperationId (\s a -> s {_dssoOperationId = a})

instance AWSRequest DescribeStackSetOperation where
  type
    Rs DescribeStackSetOperation =
      DescribeStackSetOperationResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeStackSetOperationResult"
      ( \s h x ->
          DescribeStackSetOperationResponse'
            <$> (x .@? "StackSetOperation") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStackSetOperation

instance NFData DescribeStackSetOperation

instance ToHeaders DescribeStackSetOperation where
  toHeaders = const mempty

instance ToPath DescribeStackSetOperation where
  toPath = const "/"

instance ToQuery DescribeStackSetOperation where
  toQuery DescribeStackSetOperation' {..} =
    mconcat
      [ "Action"
          =: ("DescribeStackSetOperation" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "CallAs" =: _dssoCallAs,
        "StackSetName" =: _dssoStackSetName,
        "OperationId" =: _dssoOperationId
      ]

-- | /See:/ 'describeStackSetOperationResponse' smart constructor.
data DescribeStackSetOperationResponse = DescribeStackSetOperationResponse'
  { _dssorrsStackSetOperation ::
      !( Maybe
           StackSetOperation
       ),
    _dssorrsResponseStatus ::
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

-- | Creates a value of 'DescribeStackSetOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssorrsStackSetOperation' - The specified stack set operation.
--
-- * 'dssorrsResponseStatus' - -- | The response status code.
describeStackSetOperationResponse ::
  -- | 'dssorrsResponseStatus'
  Int ->
  DescribeStackSetOperationResponse
describeStackSetOperationResponse pResponseStatus_ =
  DescribeStackSetOperationResponse'
    { _dssorrsStackSetOperation =
        Nothing,
      _dssorrsResponseStatus =
        pResponseStatus_
    }

-- | The specified stack set operation.
dssorrsStackSetOperation :: Lens' DescribeStackSetOperationResponse (Maybe StackSetOperation)
dssorrsStackSetOperation = lens _dssorrsStackSetOperation (\s a -> s {_dssorrsStackSetOperation = a})

-- | -- | The response status code.
dssorrsResponseStatus :: Lens' DescribeStackSetOperationResponse Int
dssorrsResponseStatus = lens _dssorrsResponseStatus (\s a -> s {_dssorrsResponseStatus = a})

instance NFData DescribeStackSetOperationResponse
