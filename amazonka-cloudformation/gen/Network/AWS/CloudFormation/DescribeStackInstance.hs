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
-- Module      : Network.AWS.CloudFormation.DescribeStackInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the stack instance that's associated with the specified stack set, AWS account, and Region.
--
--
-- For a list of stack instances that are associated with a specific stack set, use 'ListStackInstances' .
module Network.AWS.CloudFormation.DescribeStackInstance
  ( -- * Creating a Request
    describeStackInstance,
    DescribeStackInstance,

    -- * Request Lenses
    dsiCallAs,
    dsiStackSetName,
    dsiStackInstanceAccount,
    dsiStackInstanceRegion,

    -- * Destructuring the Response
    describeStackInstanceResponse,
    DescribeStackInstanceResponse,

    -- * Response Lenses
    dsirrsStackInstance,
    dsirrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStackInstance' smart constructor.
data DescribeStackInstance = DescribeStackInstance'
  { _dsiCallAs ::
      !(Maybe CallAs),
    _dsiStackSetName :: !Text,
    _dsiStackInstanceAccount ::
      !Text,
    _dsiStackInstanceRegion ::
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

-- | Creates a value of 'DescribeStackInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'dsiStackSetName' - The name or the unique stack ID of the stack set that you want to get stack instance information for.
--
-- * 'dsiStackInstanceAccount' - The ID of an AWS account that's associated with this stack instance.
--
-- * 'dsiStackInstanceRegion' - The name of a Region that's associated with this stack instance.
describeStackInstance ::
  -- | 'dsiStackSetName'
  Text ->
  -- | 'dsiStackInstanceAccount'
  Text ->
  -- | 'dsiStackInstanceRegion'
  Text ->
  DescribeStackInstance
describeStackInstance
  pStackSetName_
  pStackInstanceAccount_
  pStackInstanceRegion_ =
    DescribeStackInstance'
      { _dsiCallAs = Nothing,
        _dsiStackSetName = pStackSetName_,
        _dsiStackInstanceAccount = pStackInstanceAccount_,
        _dsiStackInstanceRegion = pStackInstanceRegion_
      }

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
dsiCallAs :: Lens' DescribeStackInstance (Maybe CallAs)
dsiCallAs = lens _dsiCallAs (\s a -> s {_dsiCallAs = a})

-- | The name or the unique stack ID of the stack set that you want to get stack instance information for.
dsiStackSetName :: Lens' DescribeStackInstance Text
dsiStackSetName = lens _dsiStackSetName (\s a -> s {_dsiStackSetName = a})

-- | The ID of an AWS account that's associated with this stack instance.
dsiStackInstanceAccount :: Lens' DescribeStackInstance Text
dsiStackInstanceAccount = lens _dsiStackInstanceAccount (\s a -> s {_dsiStackInstanceAccount = a})

-- | The name of a Region that's associated with this stack instance.
dsiStackInstanceRegion :: Lens' DescribeStackInstance Text
dsiStackInstanceRegion = lens _dsiStackInstanceRegion (\s a -> s {_dsiStackInstanceRegion = a})

instance AWSRequest DescribeStackInstance where
  type
    Rs DescribeStackInstance =
      DescribeStackInstanceResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeStackInstanceResult"
      ( \s h x ->
          DescribeStackInstanceResponse'
            <$> (x .@? "StackInstance") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStackInstance

instance NFData DescribeStackInstance

instance ToHeaders DescribeStackInstance where
  toHeaders = const mempty

instance ToPath DescribeStackInstance where
  toPath = const "/"

instance ToQuery DescribeStackInstance where
  toQuery DescribeStackInstance' {..} =
    mconcat
      [ "Action" =: ("DescribeStackInstance" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "CallAs" =: _dsiCallAs,
        "StackSetName" =: _dsiStackSetName,
        "StackInstanceAccount" =: _dsiStackInstanceAccount,
        "StackInstanceRegion" =: _dsiStackInstanceRegion
      ]

-- | /See:/ 'describeStackInstanceResponse' smart constructor.
data DescribeStackInstanceResponse = DescribeStackInstanceResponse'
  { _dsirrsStackInstance ::
      !( Maybe
           StackInstance
       ),
    _dsirrsResponseStatus ::
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

-- | Creates a value of 'DescribeStackInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsirrsStackInstance' - The stack instance that matches the specified request parameters.
--
-- * 'dsirrsResponseStatus' - -- | The response status code.
describeStackInstanceResponse ::
  -- | 'dsirrsResponseStatus'
  Int ->
  DescribeStackInstanceResponse
describeStackInstanceResponse pResponseStatus_ =
  DescribeStackInstanceResponse'
    { _dsirrsStackInstance =
        Nothing,
      _dsirrsResponseStatus = pResponseStatus_
    }

-- | The stack instance that matches the specified request parameters.
dsirrsStackInstance :: Lens' DescribeStackInstanceResponse (Maybe StackInstance)
dsirrsStackInstance = lens _dsirrsStackInstance (\s a -> s {_dsirrsStackInstance = a})

-- | -- | The response status code.
dsirrsResponseStatus :: Lens' DescribeStackInstanceResponse Int
dsirrsResponseStatus = lens _dsirrsResponseStatus (\s a -> s {_dsirrsResponseStatus = a})

instance NFData DescribeStackInstanceResponse
