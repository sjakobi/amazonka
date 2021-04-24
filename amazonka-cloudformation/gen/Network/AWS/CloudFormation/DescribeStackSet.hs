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
-- Module      : Network.AWS.CloudFormation.DescribeStackSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of the specified stack set.
module Network.AWS.CloudFormation.DescribeStackSet
  ( -- * Creating a Request
    describeStackSet,
    DescribeStackSet,

    -- * Request Lenses
    dCallAs,
    dStackSetName,

    -- * Destructuring the Response
    describeStackSetResponse,
    DescribeStackSetResponse,

    -- * Response Lenses
    dssrsrsStackSet,
    dssrsrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStackSet' smart constructor.
data DescribeStackSet = DescribeStackSet'
  { _dCallAs ::
      !(Maybe CallAs),
    _dStackSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStackSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'dStackSetName' - The name or unique ID of the stack set whose description you want.
describeStackSet ::
  -- | 'dStackSetName'
  Text ->
  DescribeStackSet
describeStackSet pStackSetName_ =
  DescribeStackSet'
    { _dCallAs = Nothing,
      _dStackSetName = pStackSetName_
    }

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
dCallAs :: Lens' DescribeStackSet (Maybe CallAs)
dCallAs = lens _dCallAs (\s a -> s {_dCallAs = a})

-- | The name or unique ID of the stack set whose description you want.
dStackSetName :: Lens' DescribeStackSet Text
dStackSetName = lens _dStackSetName (\s a -> s {_dStackSetName = a})

instance AWSRequest DescribeStackSet where
  type Rs DescribeStackSet = DescribeStackSetResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeStackSetResult"
      ( \s h x ->
          DescribeStackSetResponse'
            <$> (x .@? "StackSet") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStackSet

instance NFData DescribeStackSet

instance ToHeaders DescribeStackSet where
  toHeaders = const mempty

instance ToPath DescribeStackSet where
  toPath = const "/"

instance ToQuery DescribeStackSet where
  toQuery DescribeStackSet' {..} =
    mconcat
      [ "Action" =: ("DescribeStackSet" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "CallAs" =: _dCallAs,
        "StackSetName" =: _dStackSetName
      ]

-- | /See:/ 'describeStackSetResponse' smart constructor.
data DescribeStackSetResponse = DescribeStackSetResponse'
  { _dssrsrsStackSet ::
      !(Maybe StackSet),
    _dssrsrsResponseStatus ::
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

-- | Creates a value of 'DescribeStackSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssrsrsStackSet' - The specified stack set.
--
-- * 'dssrsrsResponseStatus' - -- | The response status code.
describeStackSetResponse ::
  -- | 'dssrsrsResponseStatus'
  Int ->
  DescribeStackSetResponse
describeStackSetResponse pResponseStatus_ =
  DescribeStackSetResponse'
    { _dssrsrsStackSet =
        Nothing,
      _dssrsrsResponseStatus = pResponseStatus_
    }

-- | The specified stack set.
dssrsrsStackSet :: Lens' DescribeStackSetResponse (Maybe StackSet)
dssrsrsStackSet = lens _dssrsrsStackSet (\s a -> s {_dssrsrsStackSet = a})

-- | -- | The response status code.
dssrsrsResponseStatus :: Lens' DescribeStackSetResponse Int
dssrsrsResponseStatus = lens _dssrsrsResponseStatus (\s a -> s {_dssrsrsResponseStatus = a})

instance NFData DescribeStackSetResponse
