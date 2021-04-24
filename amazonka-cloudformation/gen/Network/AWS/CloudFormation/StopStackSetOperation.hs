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
-- Module      : Network.AWS.CloudFormation.StopStackSetOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an in-progress operation on a stack set and its associated stack instances.
module Network.AWS.CloudFormation.StopStackSetOperation
  ( -- * Creating a Request
    stopStackSetOperation,
    StopStackSetOperation,

    -- * Request Lenses
    sssoCallAs,
    sssoStackSetName,
    sssoOperationId,

    -- * Destructuring the Response
    stopStackSetOperationResponse,
    StopStackSetOperationResponse,

    -- * Response Lenses
    sssorrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopStackSetOperation' smart constructor.
data StopStackSetOperation = StopStackSetOperation'
  { _sssoCallAs ::
      !(Maybe CallAs),
    _sssoStackSetName :: !Text,
    _sssoOperationId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopStackSetOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssoCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'sssoStackSetName' - The name or unique ID of the stack set that you want to stop the operation for.
--
-- * 'sssoOperationId' - The ID of the stack operation.
stopStackSetOperation ::
  -- | 'sssoStackSetName'
  Text ->
  -- | 'sssoOperationId'
  Text ->
  StopStackSetOperation
stopStackSetOperation pStackSetName_ pOperationId_ =
  StopStackSetOperation'
    { _sssoCallAs = Nothing,
      _sssoStackSetName = pStackSetName_,
      _sssoOperationId = pOperationId_
    }

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
sssoCallAs :: Lens' StopStackSetOperation (Maybe CallAs)
sssoCallAs = lens _sssoCallAs (\s a -> s {_sssoCallAs = a})

-- | The name or unique ID of the stack set that you want to stop the operation for.
sssoStackSetName :: Lens' StopStackSetOperation Text
sssoStackSetName = lens _sssoStackSetName (\s a -> s {_sssoStackSetName = a})

-- | The ID of the stack operation.
sssoOperationId :: Lens' StopStackSetOperation Text
sssoOperationId = lens _sssoOperationId (\s a -> s {_sssoOperationId = a})

instance AWSRequest StopStackSetOperation where
  type
    Rs StopStackSetOperation =
      StopStackSetOperationResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "StopStackSetOperationResult"
      ( \s h x ->
          StopStackSetOperationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable StopStackSetOperation

instance NFData StopStackSetOperation

instance ToHeaders StopStackSetOperation where
  toHeaders = const mempty

instance ToPath StopStackSetOperation where
  toPath = const "/"

instance ToQuery StopStackSetOperation where
  toQuery StopStackSetOperation' {..} =
    mconcat
      [ "Action" =: ("StopStackSetOperation" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "CallAs" =: _sssoCallAs,
        "StackSetName" =: _sssoStackSetName,
        "OperationId" =: _sssoOperationId
      ]

-- | /See:/ 'stopStackSetOperationResponse' smart constructor.
newtype StopStackSetOperationResponse = StopStackSetOperationResponse'
  { _sssorrsResponseStatus ::
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

-- | Creates a value of 'StopStackSetOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssorrsResponseStatus' - -- | The response status code.
stopStackSetOperationResponse ::
  -- | 'sssorrsResponseStatus'
  Int ->
  StopStackSetOperationResponse
stopStackSetOperationResponse pResponseStatus_ =
  StopStackSetOperationResponse'
    { _sssorrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
sssorrsResponseStatus :: Lens' StopStackSetOperationResponse Int
sssorrsResponseStatus = lens _sssorrsResponseStatus (\s a -> s {_sssorrsResponseStatus = a})

instance NFData StopStackSetOperationResponse
