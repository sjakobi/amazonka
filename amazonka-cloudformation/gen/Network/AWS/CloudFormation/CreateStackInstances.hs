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
-- Module      : Network.AWS.CloudFormation.CreateStackInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates stack instances for the specified accounts, within the specified Regions. A stack instance refers to a stack in a specific account and Region. You must specify at least one value for either @Accounts@ or @DeploymentTargets@ , and you must specify at least one value for @Regions@ .
module Network.AWS.CloudFormation.CreateStackInstances
  ( -- * Creating a Request
    createStackInstances,
    CreateStackInstances,

    -- * Request Lenses
    csiParameterOverrides,
    csiDeploymentTargets,
    csiOperationId,
    csiCallAs,
    csiOperationPreferences,
    csiAccounts,
    csiStackSetName,
    csiRegions,

    -- * Destructuring the Response
    createStackInstancesResponse,
    CreateStackInstancesResponse,

    -- * Response Lenses
    csirrsOperationId,
    csirrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createStackInstances' smart constructor.
data CreateStackInstances = CreateStackInstances'
  { _csiParameterOverrides ::
      !(Maybe [Parameter]),
    _csiDeploymentTargets ::
      !(Maybe DeploymentTargets),
    _csiOperationId ::
      !(Maybe Text),
    _csiCallAs :: !(Maybe CallAs),
    _csiOperationPreferences ::
      !( Maybe
           StackSetOperationPreferences
       ),
    _csiAccounts ::
      !(Maybe [Text]),
    _csiStackSetName :: !Text,
    _csiRegions :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStackInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csiParameterOverrides' - A list of stack set parameters whose values you want to override in the selected stack instances. Any overridden parameter values will be applied to all stack instances in the specified accounts and Regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance operations:     * To override the current value for a parameter, include the parameter and specify its value.     * To leave a parameter set to its present value, you can do one of the following:     * Do not include the parameter in the list.     * Include the parameter and specify @UsePreviousValue@ as @true@ . (You cannot specify both a value and set @UsePreviousValue@ to @true@ .)     * To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.     * To leave all parameters set to their present values, do not specify this property at all. During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value. You can only override the parameter /values/ that are specified in the stack set; to add or delete a parameter itself, use <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html UpdateStackSet> to update the stack set template.
--
-- * 'csiDeploymentTargets' - [Service-managed permissions] The AWS Organizations accounts for which to create stack instances in the specified Regions. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
--
-- * 'csiOperationId' - The unique identifier for this stack set operation.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically.  Repeating this stack set operation with a new operation ID retries all stack instances whose status is @OUTDATED@ .
--
-- * 'csiCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'csiOperationPreferences' - Preferences for how AWS CloudFormation performs this stack set operation.
--
-- * 'csiAccounts' - [Self-managed permissions] The names of one or more AWS accounts that you want to create stack instances in the specified Region(s) for. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
--
-- * 'csiStackSetName' - The name or unique ID of the stack set that you want to create stack instances from.
--
-- * 'csiRegions' - The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
createStackInstances ::
  -- | 'csiStackSetName'
  Text ->
  CreateStackInstances
createStackInstances pStackSetName_ =
  CreateStackInstances'
    { _csiParameterOverrides =
        Nothing,
      _csiDeploymentTargets = Nothing,
      _csiOperationId = Nothing,
      _csiCallAs = Nothing,
      _csiOperationPreferences = Nothing,
      _csiAccounts = Nothing,
      _csiStackSetName = pStackSetName_,
      _csiRegions = mempty
    }

-- | A list of stack set parameters whose values you want to override in the selected stack instances. Any overridden parameter values will be applied to all stack instances in the specified accounts and Regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance operations:     * To override the current value for a parameter, include the parameter and specify its value.     * To leave a parameter set to its present value, you can do one of the following:     * Do not include the parameter in the list.     * Include the parameter and specify @UsePreviousValue@ as @true@ . (You cannot specify both a value and set @UsePreviousValue@ to @true@ .)     * To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.     * To leave all parameters set to their present values, do not specify this property at all. During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value. You can only override the parameter /values/ that are specified in the stack set; to add or delete a parameter itself, use <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html UpdateStackSet> to update the stack set template.
csiParameterOverrides :: Lens' CreateStackInstances [Parameter]
csiParameterOverrides = lens _csiParameterOverrides (\s a -> s {_csiParameterOverrides = a}) . _Default . _Coerce

-- | [Service-managed permissions] The AWS Organizations accounts for which to create stack instances in the specified Regions. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
csiDeploymentTargets :: Lens' CreateStackInstances (Maybe DeploymentTargets)
csiDeploymentTargets = lens _csiDeploymentTargets (\s a -> s {_csiDeploymentTargets = a})

-- | The unique identifier for this stack set operation.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically.  Repeating this stack set operation with a new operation ID retries all stack instances whose status is @OUTDATED@ .
csiOperationId :: Lens' CreateStackInstances (Maybe Text)
csiOperationId = lens _csiOperationId (\s a -> s {_csiOperationId = a})

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
csiCallAs :: Lens' CreateStackInstances (Maybe CallAs)
csiCallAs = lens _csiCallAs (\s a -> s {_csiCallAs = a})

-- | Preferences for how AWS CloudFormation performs this stack set operation.
csiOperationPreferences :: Lens' CreateStackInstances (Maybe StackSetOperationPreferences)
csiOperationPreferences = lens _csiOperationPreferences (\s a -> s {_csiOperationPreferences = a})

-- | [Self-managed permissions] The names of one or more AWS accounts that you want to create stack instances in the specified Region(s) for. You can specify @Accounts@ or @DeploymentTargets@ , but not both.
csiAccounts :: Lens' CreateStackInstances [Text]
csiAccounts = lens _csiAccounts (\s a -> s {_csiAccounts = a}) . _Default . _Coerce

-- | The name or unique ID of the stack set that you want to create stack instances from.
csiStackSetName :: Lens' CreateStackInstances Text
csiStackSetName = lens _csiStackSetName (\s a -> s {_csiStackSetName = a})

-- | The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
csiRegions :: Lens' CreateStackInstances [Text]
csiRegions = lens _csiRegions (\s a -> s {_csiRegions = a}) . _Coerce

instance AWSRequest CreateStackInstances where
  type
    Rs CreateStackInstances =
      CreateStackInstancesResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "CreateStackInstancesResult"
      ( \s h x ->
          CreateStackInstancesResponse'
            <$> (x .@? "OperationId") <*> (pure (fromEnum s))
      )

instance Hashable CreateStackInstances

instance NFData CreateStackInstances

instance ToHeaders CreateStackInstances where
  toHeaders = const mempty

instance ToPath CreateStackInstances where
  toPath = const "/"

instance ToQuery CreateStackInstances where
  toQuery CreateStackInstances' {..} =
    mconcat
      [ "Action" =: ("CreateStackInstances" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "ParameterOverrides"
          =: toQuery
            (toQueryList "member" <$> _csiParameterOverrides),
        "DeploymentTargets" =: _csiDeploymentTargets,
        "OperationId" =: _csiOperationId,
        "CallAs" =: _csiCallAs,
        "OperationPreferences" =: _csiOperationPreferences,
        "Accounts"
          =: toQuery (toQueryList "member" <$> _csiAccounts),
        "StackSetName" =: _csiStackSetName,
        "Regions" =: toQueryList "member" _csiRegions
      ]

-- | /See:/ 'createStackInstancesResponse' smart constructor.
data CreateStackInstancesResponse = CreateStackInstancesResponse'
  { _csirrsOperationId ::
      !(Maybe Text),
    _csirrsResponseStatus ::
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

-- | Creates a value of 'CreateStackInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csirrsOperationId' - The unique identifier for this stack set operation.
--
-- * 'csirrsResponseStatus' - -- | The response status code.
createStackInstancesResponse ::
  -- | 'csirrsResponseStatus'
  Int ->
  CreateStackInstancesResponse
createStackInstancesResponse pResponseStatus_ =
  CreateStackInstancesResponse'
    { _csirrsOperationId =
        Nothing,
      _csirrsResponseStatus = pResponseStatus_
    }

-- | The unique identifier for this stack set operation.
csirrsOperationId :: Lens' CreateStackInstancesResponse (Maybe Text)
csirrsOperationId = lens _csirrsOperationId (\s a -> s {_csirrsOperationId = a})

-- | -- | The response status code.
csirrsResponseStatus :: Lens' CreateStackInstancesResponse Int
csirrsResponseStatus = lens _csirrsResponseStatus (\s a -> s {_csirrsResponseStatus = a})

instance NFData CreateStackInstancesResponse
