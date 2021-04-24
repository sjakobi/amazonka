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
-- Module      : Network.AWS.CloudFormation.CreateStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the 'DescribeStacks' API.
module Network.AWS.CloudFormation.CreateStack
  ( -- * Creating a Request
    createStack,
    CreateStack,

    -- * Request Lenses
    csOnFailure,
    csRoleARN,
    csResourceTypes,
    csCapabilities,
    csStackPolicyBody,
    csEnableTerminationProtection,
    csTemplateURL,
    csNotificationARNs,
    csStackPolicyURL,
    csTags,
    csTimeoutInMinutes,
    csRollbackConfiguration,
    csClientRequestToken,
    csTemplateBody,
    csDisableRollback,
    csParameters,
    csStackName,

    -- * Destructuring the Response
    createStackResponse,
    CreateStackResponse,

    -- * Response Lenses
    csrrsStackId,
    csrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for 'CreateStack' action.
--
--
--
-- /See:/ 'createStack' smart constructor.
data CreateStack = CreateStack'
  { _csOnFailure ::
      !(Maybe OnFailure),
    _csRoleARN :: !(Maybe Text),
    _csResourceTypes :: !(Maybe [Text]),
    _csCapabilities :: !(Maybe [Capability]),
    _csStackPolicyBody :: !(Maybe Text),
    _csEnableTerminationProtection :: !(Maybe Bool),
    _csTemplateURL :: !(Maybe Text),
    _csNotificationARNs :: !(Maybe [Text]),
    _csStackPolicyURL :: !(Maybe Text),
    _csTags :: !(Maybe [Tag]),
    _csTimeoutInMinutes :: !(Maybe Nat),
    _csRollbackConfiguration ::
      !(Maybe RollbackConfiguration),
    _csClientRequestToken :: !(Maybe Text),
    _csTemplateBody :: !(Maybe Text),
    _csDisableRollback :: !(Maybe Bool),
    _csParameters :: !(Maybe [Parameter]),
    _csStackName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csOnFailure' - Determines what action will be taken if stack creation fails. This must be one of: DO_NOTHING, ROLLBACK, or DELETE. You can specify either @OnFailure@ or @DisableRollback@ , but not both. Default: @ROLLBACK@
--
-- * 'csRoleARN' - The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
--
-- * 'csResourceTypes' - The template resource types that you have permissions to work with for this create stack action, such as @AWS::EC2::Instance@ , @AWS::EC2::*@ , or @Custom::MyCustomInstance@ . Use the following syntax to describe template resource types: @AWS::*@ (for all AWS resource), @Custom::*@ (for all custom resources), @Custom::/logical_ID/ @ (for a specific custom resource), @AWS::/service_name/ ::*@ (for all resources of a particular AWS service), and @AWS::/service_name/ ::/resource_logical_ID/ @ (for a specific AWS resource). If the list of resource types doesn't include a resource that you're creating, the stack creation fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html Controlling Access with AWS Identity and Access Management> .
--
-- * 'csCapabilities' - In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to create the stack.     * @CAPABILITY_IAM@ and @CAPABILITY_NAMED_IAM@  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the @CAPABILITY_IAM@ or @CAPABILITY_NAMED_IAM@ capability.     * If you have IAM resources, you can specify either capability.      * If you have IAM resources with custom names, you /must/ specify @CAPABILITY_NAMED_IAM@ .      * If you don't specify either of these capabilities, AWS CloudFormation returns an @InsufficientCapabilities@ error. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html AWS::IAM::AccessKey>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html AWS::IAM::Policy>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html AWS::IAM::User>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html AWS::IAM::UserToGroupAddition>  For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .     * @CAPABILITY_AUTO_EXPAND@  Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html AWS::Include> and <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html AWS::Serverless> transforms, which are macros hosted by AWS CloudFormation. If you want to create a stack from a stack template that contains macros /and/ nested stacks, you must create the stack directly from the template using this capability. /Important:/ You should only create stacks directly from a stack template that contains macros if you know what processing the macro performs. Each macro relies on an underlying Lambda service function for processing stack templates. Be aware that the Lambda function owner can update the function operation without AWS CloudFormation being notified. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html Using AWS CloudFormation Macros to Perform Custom Processing on Templates> .
--
-- * 'csStackPolicyBody' - Structure containing the stack policy body. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html Prevent Updates to Stack Resources> in the /AWS CloudFormation User Guide/ . You can specify either the @StackPolicyBody@ or the @StackPolicyURL@ parameter, but not both.
--
-- * 'csEnableTerminationProtection' - Whether to enable termination protection on the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html Protecting a Stack From Being Deleted> in the /AWS CloudFormation User Guide/ . Termination protection is disabled on stacks by default.  For <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html nested stacks> , termination protection is set on the root stack and cannot be changed directly on the nested stack.
--
-- * 'csTemplateURL' - Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to the <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the @TemplateBody@ or the @TemplateURL@ parameter, but not both.
--
-- * 'csNotificationARNs' - The Simple Notification Service (SNS) topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).
--
-- * 'csStackPolicyURL' - Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same Region as the stack. You can specify either the @StackPolicyBody@ or the @StackPolicyURL@ parameter, but not both.
--
-- * 'csTags' - Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.
--
-- * 'csTimeoutInMinutes' - The amount of time that can pass before the stack status becomes CREATE_FAILED; if @DisableRollback@ is not set or is set to @false@ , the stack will be rolled back.
--
-- * 'csRollbackConfiguration' - The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
--
-- * 'csClientRequestToken' - A unique identifier for this @CreateStack@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name. You might retry @CreateStack@ requests to ensure that AWS CloudFormation successfully received them. All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a @CreateStack@ operation with the token @token1@ , then all the @StackEvents@ generated by that operation will have @ClientRequestToken@ set as @token1@ . In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format /Console-StackOperation-ID/ , which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: @Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002@ .
--
-- * 'csTemplateBody' - Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the @TemplateBody@ or the @TemplateURL@ parameter, but not both.
--
-- * 'csDisableRollback' - Set to @true@ to disable rollback of the stack if stack creation failed. You can specify either @DisableRollback@ or @OnFailure@ , but not both. Default: @false@
--
-- * 'csParameters' - A list of @Parameter@ structures that specify input parameters for the stack. For more information, see the <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html Parameter> data type.
--
-- * 'csStackName' - The name that is associated with the stack. The name must be unique in the Region in which you are creating the stack.
createStack ::
  -- | 'csStackName'
  Text ->
  CreateStack
createStack pStackName_ =
  CreateStack'
    { _csOnFailure = Nothing,
      _csRoleARN = Nothing,
      _csResourceTypes = Nothing,
      _csCapabilities = Nothing,
      _csStackPolicyBody = Nothing,
      _csEnableTerminationProtection = Nothing,
      _csTemplateURL = Nothing,
      _csNotificationARNs = Nothing,
      _csStackPolicyURL = Nothing,
      _csTags = Nothing,
      _csTimeoutInMinutes = Nothing,
      _csRollbackConfiguration = Nothing,
      _csClientRequestToken = Nothing,
      _csTemplateBody = Nothing,
      _csDisableRollback = Nothing,
      _csParameters = Nothing,
      _csStackName = pStackName_
    }

-- | Determines what action will be taken if stack creation fails. This must be one of: DO_NOTHING, ROLLBACK, or DELETE. You can specify either @OnFailure@ or @DisableRollback@ , but not both. Default: @ROLLBACK@
csOnFailure :: Lens' CreateStack (Maybe OnFailure)
csOnFailure = lens _csOnFailure (\s a -> s {_csOnFailure = a})

-- | The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
csRoleARN :: Lens' CreateStack (Maybe Text)
csRoleARN = lens _csRoleARN (\s a -> s {_csRoleARN = a})

-- | The template resource types that you have permissions to work with for this create stack action, such as @AWS::EC2::Instance@ , @AWS::EC2::*@ , or @Custom::MyCustomInstance@ . Use the following syntax to describe template resource types: @AWS::*@ (for all AWS resource), @Custom::*@ (for all custom resources), @Custom::/logical_ID/ @ (for a specific custom resource), @AWS::/service_name/ ::*@ (for all resources of a particular AWS service), and @AWS::/service_name/ ::/resource_logical_ID/ @ (for a specific AWS resource). If the list of resource types doesn't include a resource that you're creating, the stack creation fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html Controlling Access with AWS Identity and Access Management> .
csResourceTypes :: Lens' CreateStack [Text]
csResourceTypes = lens _csResourceTypes (\s a -> s {_csResourceTypes = a}) . _Default . _Coerce

-- | In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to create the stack.     * @CAPABILITY_IAM@ and @CAPABILITY_NAMED_IAM@  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the @CAPABILITY_IAM@ or @CAPABILITY_NAMED_IAM@ capability.     * If you have IAM resources, you can specify either capability.      * If you have IAM resources with custom names, you /must/ specify @CAPABILITY_NAMED_IAM@ .      * If you don't specify either of these capabilities, AWS CloudFormation returns an @InsufficientCapabilities@ error. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html AWS::IAM::AccessKey>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html AWS::IAM::Policy>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html AWS::IAM::User>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html AWS::IAM::UserToGroupAddition>  For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .     * @CAPABILITY_AUTO_EXPAND@  Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html AWS::Include> and <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html AWS::Serverless> transforms, which are macros hosted by AWS CloudFormation. If you want to create a stack from a stack template that contains macros /and/ nested stacks, you must create the stack directly from the template using this capability. /Important:/ You should only create stacks directly from a stack template that contains macros if you know what processing the macro performs. Each macro relies on an underlying Lambda service function for processing stack templates. Be aware that the Lambda function owner can update the function operation without AWS CloudFormation being notified. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html Using AWS CloudFormation Macros to Perform Custom Processing on Templates> .
csCapabilities :: Lens' CreateStack [Capability]
csCapabilities = lens _csCapabilities (\s a -> s {_csCapabilities = a}) . _Default . _Coerce

-- | Structure containing the stack policy body. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html Prevent Updates to Stack Resources> in the /AWS CloudFormation User Guide/ . You can specify either the @StackPolicyBody@ or the @StackPolicyURL@ parameter, but not both.
csStackPolicyBody :: Lens' CreateStack (Maybe Text)
csStackPolicyBody = lens _csStackPolicyBody (\s a -> s {_csStackPolicyBody = a})

-- | Whether to enable termination protection on the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html Protecting a Stack From Being Deleted> in the /AWS CloudFormation User Guide/ . Termination protection is disabled on stacks by default.  For <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html nested stacks> , termination protection is set on the root stack and cannot be changed directly on the nested stack.
csEnableTerminationProtection :: Lens' CreateStack (Maybe Bool)
csEnableTerminationProtection = lens _csEnableTerminationProtection (\s a -> s {_csEnableTerminationProtection = a})

-- | Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to the <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the @TemplateBody@ or the @TemplateURL@ parameter, but not both.
csTemplateURL :: Lens' CreateStack (Maybe Text)
csTemplateURL = lens _csTemplateURL (\s a -> s {_csTemplateURL = a})

-- | The Simple Notification Service (SNS) topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).
csNotificationARNs :: Lens' CreateStack [Text]
csNotificationARNs = lens _csNotificationARNs (\s a -> s {_csNotificationARNs = a}) . _Default . _Coerce

-- | Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same Region as the stack. You can specify either the @StackPolicyBody@ or the @StackPolicyURL@ parameter, but not both.
csStackPolicyURL :: Lens' CreateStack (Maybe Text)
csStackPolicyURL = lens _csStackPolicyURL (\s a -> s {_csStackPolicyURL = a})

-- | Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.
csTags :: Lens' CreateStack [Tag]
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Coerce

-- | The amount of time that can pass before the stack status becomes CREATE_FAILED; if @DisableRollback@ is not set or is set to @false@ , the stack will be rolled back.
csTimeoutInMinutes :: Lens' CreateStack (Maybe Natural)
csTimeoutInMinutes = lens _csTimeoutInMinutes (\s a -> s {_csTimeoutInMinutes = a}) . mapping _Nat

-- | The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
csRollbackConfiguration :: Lens' CreateStack (Maybe RollbackConfiguration)
csRollbackConfiguration = lens _csRollbackConfiguration (\s a -> s {_csRollbackConfiguration = a})

-- | A unique identifier for this @CreateStack@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name. You might retry @CreateStack@ requests to ensure that AWS CloudFormation successfully received them. All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a @CreateStack@ operation with the token @token1@ , then all the @StackEvents@ generated by that operation will have @ClientRequestToken@ set as @token1@ . In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format /Console-StackOperation-ID/ , which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: @Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002@ .
csClientRequestToken :: Lens' CreateStack (Maybe Text)
csClientRequestToken = lens _csClientRequestToken (\s a -> s {_csClientRequestToken = a})

-- | Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must specify either the @TemplateBody@ or the @TemplateURL@ parameter, but not both.
csTemplateBody :: Lens' CreateStack (Maybe Text)
csTemplateBody = lens _csTemplateBody (\s a -> s {_csTemplateBody = a})

-- | Set to @true@ to disable rollback of the stack if stack creation failed. You can specify either @DisableRollback@ or @OnFailure@ , but not both. Default: @false@
csDisableRollback :: Lens' CreateStack (Maybe Bool)
csDisableRollback = lens _csDisableRollback (\s a -> s {_csDisableRollback = a})

-- | A list of @Parameter@ structures that specify input parameters for the stack. For more information, see the <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html Parameter> data type.
csParameters :: Lens' CreateStack [Parameter]
csParameters = lens _csParameters (\s a -> s {_csParameters = a}) . _Default . _Coerce

-- | The name that is associated with the stack. The name must be unique in the Region in which you are creating the stack.
csStackName :: Lens' CreateStack Text
csStackName = lens _csStackName (\s a -> s {_csStackName = a})

instance AWSRequest CreateStack where
  type Rs CreateStack = CreateStackResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "CreateStackResult"
      ( \s h x ->
          CreateStackResponse'
            <$> (x .@? "StackId") <*> (pure (fromEnum s))
      )

instance Hashable CreateStack

instance NFData CreateStack

instance ToHeaders CreateStack where
  toHeaders = const mempty

instance ToPath CreateStack where
  toPath = const "/"

instance ToQuery CreateStack where
  toQuery CreateStack' {..} =
    mconcat
      [ "Action" =: ("CreateStack" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "OnFailure" =: _csOnFailure,
        "RoleARN" =: _csRoleARN,
        "ResourceTypes"
          =: toQuery (toQueryList "member" <$> _csResourceTypes),
        "Capabilities"
          =: toQuery (toQueryList "member" <$> _csCapabilities),
        "StackPolicyBody" =: _csStackPolicyBody,
        "EnableTerminationProtection"
          =: _csEnableTerminationProtection,
        "TemplateURL" =: _csTemplateURL,
        "NotificationARNs"
          =: toQuery
            (toQueryList "member" <$> _csNotificationARNs),
        "StackPolicyURL" =: _csStackPolicyURL,
        "Tags" =: toQuery (toQueryList "member" <$> _csTags),
        "TimeoutInMinutes" =: _csTimeoutInMinutes,
        "RollbackConfiguration" =: _csRollbackConfiguration,
        "ClientRequestToken" =: _csClientRequestToken,
        "TemplateBody" =: _csTemplateBody,
        "DisableRollback" =: _csDisableRollback,
        "Parameters"
          =: toQuery (toQueryList "member" <$> _csParameters),
        "StackName" =: _csStackName
      ]

-- | The output for a 'CreateStack' action.
--
--
--
-- /See:/ 'createStackResponse' smart constructor.
data CreateStackResponse = CreateStackResponse'
  { _csrrsStackId ::
      !(Maybe Text),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsStackId' - Unique identifier of the stack.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createStackResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateStackResponse
createStackResponse pResponseStatus_ =
  CreateStackResponse'
    { _csrrsStackId = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | Unique identifier of the stack.
csrrsStackId :: Lens' CreateStackResponse (Maybe Text)
csrrsStackId = lens _csrrsStackId (\s a -> s {_csrrsStackId = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateStackResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateStackResponse
