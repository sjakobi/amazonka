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
-- Module      : Network.AWS.CloudFormation.DeleteStackInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes stack instances for the specified accounts, in the specified Regions.
module Network.AWS.CloudFormation.DeleteStackInstances
  ( -- * Creating a Request
    deleteStackInstances,
    DeleteStackInstances,

    -- * Request Lenses
    dsisDeploymentTargets,
    dsisOperationId,
    dsisCallAs,
    dsisOperationPreferences,
    dsisAccounts,
    dsisStackSetName,
    dsisRegions,
    dsisRetainStacks,

    -- * Destructuring the Response
    deleteStackInstancesResponse,
    DeleteStackInstancesResponse,

    -- * Response Lenses
    drsOperationId,
    drsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteStackInstances' smart constructor.
data DeleteStackInstances = DeleteStackInstances'
  { _dsisDeploymentTargets ::
      !(Maybe DeploymentTargets),
    _dsisOperationId ::
      !(Maybe Text),
    _dsisCallAs ::
      !(Maybe CallAs),
    _dsisOperationPreferences ::
      !( Maybe
           StackSetOperationPreferences
       ),
    _dsisAccounts ::
      !(Maybe [Text]),
    _dsisStackSetName :: !Text,
    _dsisRegions :: ![Text],
    _dsisRetainStacks :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteStackInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsisDeploymentTargets' - [Service-managed permissions] The AWS Organizations accounts from which to delete stack instances. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
--
-- * 'dsisOperationId' - The unique identifier for this stack set operation.  If you don't specify an operation ID, the SDK generates one automatically.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that AWS CloudFormation successfully received them. Repeating this stack set operation with a new operation ID retries all stack instances whose status is @OUTDATED@ .
--
-- * 'dsisCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'dsisOperationPreferences' - Preferences for how AWS CloudFormation performs this stack set operation.
--
-- * 'dsisAccounts' - [Self-managed permissions] The names of the AWS accounts that you want to delete stack instances for. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
--
-- * 'dsisStackSetName' - The name or unique ID of the stack set that you want to delete stack instances for.
--
-- * 'dsisRegions' - The Regions where you want to delete stack set instances.
--
-- * 'dsisRetainStacks' - Removes the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options Stack set operation options> .
deleteStackInstances ::
  -- | 'dsisStackSetName'
  Text ->
  -- | 'dsisRetainStacks'
  Bool ->
  DeleteStackInstances
deleteStackInstances pStackSetName_ pRetainStacks_ =
  DeleteStackInstances'
    { _dsisDeploymentTargets =
        Nothing,
      _dsisOperationId = Nothing,
      _dsisCallAs = Nothing,
      _dsisOperationPreferences = Nothing,
      _dsisAccounts = Nothing,
      _dsisStackSetName = pStackSetName_,
      _dsisRegions = mempty,
      _dsisRetainStacks = pRetainStacks_
    }

-- | [Service-managed permissions] The AWS Organizations accounts from which to delete stack instances. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
dsisDeploymentTargets :: Lens' DeleteStackInstances (Maybe DeploymentTargets)
dsisDeploymentTargets = lens _dsisDeploymentTargets (\s a -> s {_dsisDeploymentTargets = a})

-- | The unique identifier for this stack set operation.  If you don't specify an operation ID, the SDK generates one automatically.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that AWS CloudFormation successfully received them. Repeating this stack set operation with a new operation ID retries all stack instances whose status is @OUTDATED@ .
dsisOperationId :: Lens' DeleteStackInstances (Maybe Text)
dsisOperationId = lens _dsisOperationId (\s a -> s {_dsisOperationId = a})

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
dsisCallAs :: Lens' DeleteStackInstances (Maybe CallAs)
dsisCallAs = lens _dsisCallAs (\s a -> s {_dsisCallAs = a})

-- | Preferences for how AWS CloudFormation performs this stack set operation.
dsisOperationPreferences :: Lens' DeleteStackInstances (Maybe StackSetOperationPreferences)
dsisOperationPreferences = lens _dsisOperationPreferences (\s a -> s {_dsisOperationPreferences = a})

-- | [Self-managed permissions] The names of the AWS accounts that you want to delete stack instances for. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
dsisAccounts :: Lens' DeleteStackInstances [Text]
dsisAccounts = lens _dsisAccounts (\s a -> s {_dsisAccounts = a}) . _Default . _Coerce

-- | The name or unique ID of the stack set that you want to delete stack instances for.
dsisStackSetName :: Lens' DeleteStackInstances Text
dsisStackSetName = lens _dsisStackSetName (\s a -> s {_dsisStackSetName = a})

-- | The Regions where you want to delete stack set instances.
dsisRegions :: Lens' DeleteStackInstances [Text]
dsisRegions = lens _dsisRegions (\s a -> s {_dsisRegions = a}) . _Coerce

-- | Removes the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options Stack set operation options> .
dsisRetainStacks :: Lens' DeleteStackInstances Bool
dsisRetainStacks = lens _dsisRetainStacks (\s a -> s {_dsisRetainStacks = a})

instance AWSRequest DeleteStackInstances where
  type
    Rs DeleteStackInstances =
      DeleteStackInstancesResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DeleteStackInstancesResult"
      ( \s h x ->
          DeleteStackInstancesResponse'
            <$> (x .@? "OperationId") <*> (pure (fromEnum s))
      )

instance Hashable DeleteStackInstances

instance NFData DeleteStackInstances

instance ToHeaders DeleteStackInstances where
  toHeaders = const mempty

instance ToPath DeleteStackInstances where
  toPath = const "/"

instance ToQuery DeleteStackInstances where
  toQuery DeleteStackInstances' {..} =
    mconcat
      [ "Action" =: ("DeleteStackInstances" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "DeploymentTargets" =: _dsisDeploymentTargets,
        "OperationId" =: _dsisOperationId,
        "CallAs" =: _dsisCallAs,
        "OperationPreferences" =: _dsisOperationPreferences,
        "Accounts"
          =: toQuery (toQueryList "member" <$> _dsisAccounts),
        "StackSetName" =: _dsisStackSetName,
        "Regions" =: toQueryList "member" _dsisRegions,
        "RetainStacks" =: _dsisRetainStacks
      ]

-- | /See:/ 'deleteStackInstancesResponse' smart constructor.
data DeleteStackInstancesResponse = DeleteStackInstancesResponse'
  { _drsOperationId ::
      !(Maybe Text),
    _drsResponseStatus ::
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

-- | Creates a value of 'DeleteStackInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsOperationId' - The unique identifier for this stack set operation.
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteStackInstancesResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteStackInstancesResponse
deleteStackInstancesResponse pResponseStatus_ =
  DeleteStackInstancesResponse'
    { _drsOperationId =
        Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The unique identifier for this stack set operation.
drsOperationId :: Lens' DeleteStackInstancesResponse (Maybe Text)
drsOperationId = lens _drsOperationId (\s a -> s {_drsOperationId = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteStackInstancesResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteStackInstancesResponse
