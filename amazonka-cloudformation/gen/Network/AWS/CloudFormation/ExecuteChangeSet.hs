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
-- Module      : Network.AWS.CloudFormation.ExecuteChangeSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the 'DescribeStacks' action to view the status of the update.
--
--
-- When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.
--
-- If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.
--
-- To create a change set for the entire stack hierachy, @IncludeNestedStacks@ must have been set to @True@ .
module Network.AWS.CloudFormation.ExecuteChangeSet
  ( -- * Creating a Request
    executeChangeSet,
    ExecuteChangeSet,

    -- * Request Lenses
    ecsStackName,
    ecsClientRequestToken,
    ecsChangeSetName,

    -- * Destructuring the Response
    executeChangeSetResponse,
    ExecuteChangeSetResponse,

    -- * Response Lenses
    ecsrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'ExecuteChangeSet' action.
--
--
--
-- /See:/ 'executeChangeSet' smart constructor.
data ExecuteChangeSet = ExecuteChangeSet'
  { _ecsStackName ::
      !(Maybe Text),
    _ecsClientRequestToken ::
      !(Maybe Text),
    _ecsChangeSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExecuteChangeSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecsStackName' - If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute.
--
-- * 'ecsClientRequestToken' - A unique identifier for this @ExecuteChangeSet@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry @ExecuteChangeSet@ requests to ensure that AWS CloudFormation successfully received them.
--
-- * 'ecsChangeSetName' - The name or ARN of the change set that you want use to update the specified stack.
executeChangeSet ::
  -- | 'ecsChangeSetName'
  Text ->
  ExecuteChangeSet
executeChangeSet pChangeSetName_ =
  ExecuteChangeSet'
    { _ecsStackName = Nothing,
      _ecsClientRequestToken = Nothing,
      _ecsChangeSetName = pChangeSetName_
    }

-- | If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute.
ecsStackName :: Lens' ExecuteChangeSet (Maybe Text)
ecsStackName = lens _ecsStackName (\s a -> s {_ecsStackName = a})

-- | A unique identifier for this @ExecuteChangeSet@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry @ExecuteChangeSet@ requests to ensure that AWS CloudFormation successfully received them.
ecsClientRequestToken :: Lens' ExecuteChangeSet (Maybe Text)
ecsClientRequestToken = lens _ecsClientRequestToken (\s a -> s {_ecsClientRequestToken = a})

-- | The name or ARN of the change set that you want use to update the specified stack.
ecsChangeSetName :: Lens' ExecuteChangeSet Text
ecsChangeSetName = lens _ecsChangeSetName (\s a -> s {_ecsChangeSetName = a})

instance AWSRequest ExecuteChangeSet where
  type Rs ExecuteChangeSet = ExecuteChangeSetResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ExecuteChangeSetResult"
      ( \s h x ->
          ExecuteChangeSetResponse' <$> (pure (fromEnum s))
      )

instance Hashable ExecuteChangeSet

instance NFData ExecuteChangeSet

instance ToHeaders ExecuteChangeSet where
  toHeaders = const mempty

instance ToPath ExecuteChangeSet where
  toPath = const "/"

instance ToQuery ExecuteChangeSet where
  toQuery ExecuteChangeSet' {..} =
    mconcat
      [ "Action" =: ("ExecuteChangeSet" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "StackName" =: _ecsStackName,
        "ClientRequestToken" =: _ecsClientRequestToken,
        "ChangeSetName" =: _ecsChangeSetName
      ]

-- | The output for the 'ExecuteChangeSet' action.
--
--
--
-- /See:/ 'executeChangeSetResponse' smart constructor.
newtype ExecuteChangeSetResponse = ExecuteChangeSetResponse'
  { _ecsrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExecuteChangeSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecsrrsResponseStatus' - -- | The response status code.
executeChangeSetResponse ::
  -- | 'ecsrrsResponseStatus'
  Int ->
  ExecuteChangeSetResponse
executeChangeSetResponse pResponseStatus_ =
  ExecuteChangeSetResponse'
    { _ecsrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ecsrrsResponseStatus :: Lens' ExecuteChangeSetResponse Int
ecsrrsResponseStatus = lens _ecsrrsResponseStatus (\s a -> s {_ecsrrsResponseStatus = a})

instance NFData ExecuteChangeSetResponse
