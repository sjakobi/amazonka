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
-- Module      : Network.AWS.CloudFormation.CreateStackSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a stack set.
module Network.AWS.CloudFormation.CreateStackSet
  ( -- * Creating a Request
    createStackSet,
    CreateStackSet,

    -- * Request Lenses
    cPermissionModel,
    cExecutionRoleName,
    cCapabilities,
    cTemplateURL,
    cCallAs,
    cAdministrationRoleARN,
    cTags,
    cAutoDeployment,
    cDescription,
    cClientRequestToken,
    cTemplateBody,
    cParameters,
    cStackSetName,

    -- * Destructuring the Response
    createStackSetResponse,
    CreateStackSetResponse,

    -- * Response Lenses
    cssrrsStackSetId,
    cssrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createStackSet' smart constructor.
data CreateStackSet = CreateStackSet'
  { _cPermissionModel ::
      !(Maybe PermissionModels),
    _cExecutionRoleName :: !(Maybe Text),
    _cCapabilities :: !(Maybe [Capability]),
    _cTemplateURL :: !(Maybe Text),
    _cCallAs :: !(Maybe CallAs),
    _cAdministrationRoleARN :: !(Maybe Text),
    _cTags :: !(Maybe [Tag]),
    _cAutoDeployment ::
      !(Maybe AutoDeployment),
    _cDescription :: !(Maybe Text),
    _cClientRequestToken :: !(Maybe Text),
    _cTemplateBody :: !(Maybe Text),
    _cParameters :: !(Maybe [Parameter]),
    _cStackSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStackSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPermissionModel' - Describes how the IAM roles required for stack set operations are created. By default, @SELF-MANAGED@ is specified.     * With @self-managed@ permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html Grant Self-Managed Stack Set Permissions> .     * With @service-managed@ permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html Grant Service-Managed Stack Set Permissions> .
--
-- * 'cExecutionRoleName' - The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the @AWSCloudFormationStackSetExecutionRole@ role for the stack set operation. Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.
--
-- * 'cCapabilities' - In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.     * @CAPABILITY_IAM@ and @CAPABILITY_NAMED_IAM@  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the @CAPABILITY_IAM@ or @CAPABILITY_NAMED_IAM@ capability.     * If you have IAM resources, you can specify either capability.      * If you have IAM resources with custom names, you /must/ specify @CAPABILITY_NAMED_IAM@ .      * If you don't specify either of these capabilities, AWS CloudFormation returns an @InsufficientCapabilities@ error. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html AWS::IAM::AccessKey>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html AWS::IAM::Policy>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html AWS::IAM::User>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html AWS::IAM::UserToGroupAddition>  For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .     * @CAPABILITY_AUTO_EXPAND@  Some templates contain macros. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html Using AWS CloudFormation Macros to Perform Custom Processing on Templates> .
--
-- * 'cTemplateURL' - The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager document. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
--
-- * 'cCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * To create a stack set with service-managed permissions while signed in to the management account, specify @SELF@ .     * To create a stack set with service-managed permissions while signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated admin in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ . Stack sets with service-managed permissions are created in the management account, including stack sets that are created by delegated administrators.
--
-- * 'cAdministrationRoleARN' - The Amazon Resource Number (ARN) of the IAM role to use to create this stack set.  Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html Prerequisites: Granting Permissions for Stack Set Operations> in the /AWS CloudFormation User Guide/ .
--
-- * 'cTags' - The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified. If you specify tags as part of a @CreateStackSet@ action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you don't, the entire @CreateStackSet@ action fails with an @access denied@ error, and the stack set is not created.
--
-- * 'cAutoDeployment' - Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if @PermissionModel@ is @SERVICE_MANAGED@ .
--
-- * 'cDescription' - A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
--
-- * 'cClientRequestToken' - A unique identifier for this @CreateStackSet@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another stack set with the same name. You might retry @CreateStackSet@ requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically.
--
-- * 'cTemplateBody' - The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
--
-- * 'cParameters' - The input parameters for the stack set template.
--
-- * 'cStackSetName' - The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
createStackSet ::
  -- | 'cStackSetName'
  Text ->
  CreateStackSet
createStackSet pStackSetName_ =
  CreateStackSet'
    { _cPermissionModel = Nothing,
      _cExecutionRoleName = Nothing,
      _cCapabilities = Nothing,
      _cTemplateURL = Nothing,
      _cCallAs = Nothing,
      _cAdministrationRoleARN = Nothing,
      _cTags = Nothing,
      _cAutoDeployment = Nothing,
      _cDescription = Nothing,
      _cClientRequestToken = Nothing,
      _cTemplateBody = Nothing,
      _cParameters = Nothing,
      _cStackSetName = pStackSetName_
    }

-- | Describes how the IAM roles required for stack set operations are created. By default, @SELF-MANAGED@ is specified.     * With @self-managed@ permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html Grant Self-Managed Stack Set Permissions> .     * With @service-managed@ permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html Grant Service-Managed Stack Set Permissions> .
cPermissionModel :: Lens' CreateStackSet (Maybe PermissionModels)
cPermissionModel = lens _cPermissionModel (\s a -> s {_cPermissionModel = a})

-- | The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the @AWSCloudFormationStackSetExecutionRole@ role for the stack set operation. Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.
cExecutionRoleName :: Lens' CreateStackSet (Maybe Text)
cExecutionRoleName = lens _cExecutionRoleName (\s a -> s {_cExecutionRoleName = a})

-- | In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.     * @CAPABILITY_IAM@ and @CAPABILITY_NAMED_IAM@  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the @CAPABILITY_IAM@ or @CAPABILITY_NAMED_IAM@ capability.     * If you have IAM resources, you can specify either capability.      * If you have IAM resources with custom names, you /must/ specify @CAPABILITY_NAMED_IAM@ .      * If you don't specify either of these capabilities, AWS CloudFormation returns an @InsufficientCapabilities@ error. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html AWS::IAM::AccessKey>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html AWS::IAM::Policy>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html AWS::IAM::User>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html AWS::IAM::UserToGroupAddition>  For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .     * @CAPABILITY_AUTO_EXPAND@  Some templates contain macros. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html Using AWS CloudFormation Macros to Perform Custom Processing on Templates> .
cCapabilities :: Lens' CreateStackSet [Capability]
cCapabilities = lens _cCapabilities (\s a -> s {_cCapabilities = a}) . _Default . _Coerce

-- | The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager document. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
cTemplateURL :: Lens' CreateStackSet (Maybe Text)
cTemplateURL = lens _cTemplateURL (\s a -> s {_cTemplateURL = a})

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * To create a stack set with service-managed permissions while signed in to the management account, specify @SELF@ .     * To create a stack set with service-managed permissions while signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated admin in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ . Stack sets with service-managed permissions are created in the management account, including stack sets that are created by delegated administrators.
cCallAs :: Lens' CreateStackSet (Maybe CallAs)
cCallAs = lens _cCallAs (\s a -> s {_cCallAs = a})

-- | The Amazon Resource Number (ARN) of the IAM role to use to create this stack set.  Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html Prerequisites: Granting Permissions for Stack Set Operations> in the /AWS CloudFormation User Guide/ .
cAdministrationRoleARN :: Lens' CreateStackSet (Maybe Text)
cAdministrationRoleARN = lens _cAdministrationRoleARN (\s a -> s {_cAdministrationRoleARN = a})

-- | The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified. If you specify tags as part of a @CreateStackSet@ action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you don't, the entire @CreateStackSet@ action fails with an @access denied@ error, and the stack set is not created.
cTags :: Lens' CreateStackSet [Tag]
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Coerce

-- | Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if @PermissionModel@ is @SERVICE_MANAGED@ .
cAutoDeployment :: Lens' CreateStackSet (Maybe AutoDeployment)
cAutoDeployment = lens _cAutoDeployment (\s a -> s {_cAutoDeployment = a})

-- | A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
cDescription :: Lens' CreateStackSet (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

-- | A unique identifier for this @CreateStackSet@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another stack set with the same name. You might retry @CreateStackSet@ requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically.
cClientRequestToken :: Lens' CreateStackSet (Maybe Text)
cClientRequestToken = lens _cClientRequestToken (\s a -> s {_cClientRequestToken = a})

-- | The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.
cTemplateBody :: Lens' CreateStackSet (Maybe Text)
cTemplateBody = lens _cTemplateBody (\s a -> s {_cTemplateBody = a})

-- | The input parameters for the stack set template.
cParameters :: Lens' CreateStackSet [Parameter]
cParameters = lens _cParameters (\s a -> s {_cParameters = a}) . _Default . _Coerce

-- | The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
cStackSetName :: Lens' CreateStackSet Text
cStackSetName = lens _cStackSetName (\s a -> s {_cStackSetName = a})

instance AWSRequest CreateStackSet where
  type Rs CreateStackSet = CreateStackSetResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "CreateStackSetResult"
      ( \s h x ->
          CreateStackSetResponse'
            <$> (x .@? "StackSetId") <*> (pure (fromEnum s))
      )

instance Hashable CreateStackSet

instance NFData CreateStackSet

instance ToHeaders CreateStackSet where
  toHeaders = const mempty

instance ToPath CreateStackSet where
  toPath = const "/"

instance ToQuery CreateStackSet where
  toQuery CreateStackSet' {..} =
    mconcat
      [ "Action" =: ("CreateStackSet" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "PermissionModel" =: _cPermissionModel,
        "ExecutionRoleName" =: _cExecutionRoleName,
        "Capabilities"
          =: toQuery (toQueryList "member" <$> _cCapabilities),
        "TemplateURL" =: _cTemplateURL,
        "CallAs" =: _cCallAs,
        "AdministrationRoleARN" =: _cAdministrationRoleARN,
        "Tags" =: toQuery (toQueryList "member" <$> _cTags),
        "AutoDeployment" =: _cAutoDeployment,
        "Description" =: _cDescription,
        "ClientRequestToken" =: _cClientRequestToken,
        "TemplateBody" =: _cTemplateBody,
        "Parameters"
          =: toQuery (toQueryList "member" <$> _cParameters),
        "StackSetName" =: _cStackSetName
      ]

-- | /See:/ 'createStackSetResponse' smart constructor.
data CreateStackSetResponse = CreateStackSetResponse'
  { _cssrrsStackSetId ::
      !(Maybe Text),
    _cssrrsResponseStatus ::
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

-- | Creates a value of 'CreateStackSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssrrsStackSetId' - The ID of the stack set that you're creating.
--
-- * 'cssrrsResponseStatus' - -- | The response status code.
createStackSetResponse ::
  -- | 'cssrrsResponseStatus'
  Int ->
  CreateStackSetResponse
createStackSetResponse pResponseStatus_ =
  CreateStackSetResponse'
    { _cssrrsStackSetId =
        Nothing,
      _cssrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the stack set that you're creating.
cssrrsStackSetId :: Lens' CreateStackSetResponse (Maybe Text)
cssrrsStackSetId = lens _cssrrsStackSetId (\s a -> s {_cssrrsStackSetId = a})

-- | -- | The response status code.
cssrrsResponseStatus :: Lens' CreateStackSetResponse Int
cssrrsResponseStatus = lens _cssrrsResponseStatus (\s a -> s {_cssrrsResponseStatus = a})

instance NFData CreateStackSetResponse
