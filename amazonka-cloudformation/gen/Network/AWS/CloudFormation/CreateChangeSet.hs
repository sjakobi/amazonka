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
-- Module      : Network.AWS.CloudFormation.CreateChangeSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that AWS CloudFormation will create. If you create a change set for an existing stack, AWS CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources AWS CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack.
--
--
-- To create a change set for a stack that doesn't exist, for the @ChangeSetType@ parameter, specify @CREATE@ . To create a change set for an existing stack, specify @UPDATE@ for the @ChangeSetType@ parameter. To create a change set for an import operation, specify @IMPORT@ for the @ChangeSetType@ parameter. After the @CreateChangeSet@ call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set or to review it, use the 'DescribeChangeSet' action.
--
-- When you are satisfied with the changes the change set will make, execute the change set by using the 'ExecuteChangeSet' action. AWS CloudFormation doesn't make changes until you execute the change set.
--
-- To create a change set for the entire stack hierachy, set @IncludeNestedStacks@ to @True@ .
module Network.AWS.CloudFormation.CreateChangeSet
  ( -- * Creating a Request
    createChangeSet,
    CreateChangeSet,

    -- * Request Lenses
    ccsResourcesToImport,
    ccsIncludeNestedStacks,
    ccsRoleARN,
    ccsResourceTypes,
    ccsCapabilities,
    ccsTemplateURL,
    ccsNotificationARNs,
    ccsChangeSetType,
    ccsTags,
    ccsRollbackConfiguration,
    ccsDescription,
    ccsTemplateBody,
    ccsParameters,
    ccsClientToken,
    ccsUsePreviousTemplate,
    ccsStackName,
    ccsChangeSetName,

    -- * Destructuring the Response
    createChangeSetResponse,
    CreateChangeSetResponse,

    -- * Response Lenses
    ccsrrsStackId,
    ccsrrsId,
    ccsrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'CreateChangeSet' action.
--
--
--
-- /See:/ 'createChangeSet' smart constructor.
data CreateChangeSet = CreateChangeSet'
  { _ccsResourcesToImport ::
      !(Maybe [ResourceToImport]),
    _ccsIncludeNestedStacks ::
      !(Maybe Bool),
    _ccsRoleARN :: !(Maybe Text),
    _ccsResourceTypes :: !(Maybe [Text]),
    _ccsCapabilities ::
      !(Maybe [Capability]),
    _ccsTemplateURL :: !(Maybe Text),
    _ccsNotificationARNs :: !(Maybe [Text]),
    _ccsChangeSetType ::
      !(Maybe ChangeSetType),
    _ccsTags :: !(Maybe [Tag]),
    _ccsRollbackConfiguration ::
      !(Maybe RollbackConfiguration),
    _ccsDescription :: !(Maybe Text),
    _ccsTemplateBody :: !(Maybe Text),
    _ccsParameters :: !(Maybe [Parameter]),
    _ccsClientToken :: !(Maybe Text),
    _ccsUsePreviousTemplate ::
      !(Maybe Bool),
    _ccsStackName :: !Text,
    _ccsChangeSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateChangeSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccsResourcesToImport' - The resources to import into your stack.
--
-- * 'ccsIncludeNestedStacks' - Creates a change set for the all nested stacks specified in the template. The default behavior of this action is set to @False@ . To include nested sets in a change set, specify @True@ .
--
-- * 'ccsRoleARN' - The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
--
-- * 'ccsResourceTypes' - The template resource types that you have permissions to work with if you execute this change set, such as @AWS::EC2::Instance@ , @AWS::EC2::*@ , or @Custom::MyCustomInstance@ . If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html Controlling Access with AWS Identity and Access Management> in the AWS CloudFormation User Guide.
--
-- * 'ccsCapabilities' - In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to create the stack.     * @CAPABILITY_IAM@ and @CAPABILITY_NAMED_IAM@  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the @CAPABILITY_IAM@ or @CAPABILITY_NAMED_IAM@ capability.     * If you have IAM resources, you can specify either capability.      * If you have IAM resources with custom names, you /must/ specify @CAPABILITY_NAMED_IAM@ .      * If you don't specify either of these capabilities, AWS CloudFormation returns an @InsufficientCapabilities@ error. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html AWS::IAM::AccessKey>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html AWS::IAM::Policy>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html AWS::IAM::User>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html AWS::IAM::UserToGroupAddition>  For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .     * @CAPABILITY_AUTO_EXPAND@  Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html AWS::Include> and <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html AWS::Serverless> transforms, which are macros hosted by AWS CloudFormation. For more information on macros, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html Using AWS CloudFormation Macros to Perform Custom Processing on Templates> .
--
-- * 'ccsTemplateURL' - The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket or a Systems Manager document. AWS CloudFormation generates the change set by comparing this template with the stack that you specified. Conditional: You must specify only @TemplateBody@ or @TemplateURL@ .
--
-- * 'ccsNotificationARNs' - The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.
--
-- * 'ccsChangeSetType' - The type of change set operation. To create a change set for a new stack, specify @CREATE@ . To create a change set for an existing stack, specify @UPDATE@ . To create a change set for an import operation, specify @IMPORT@ . If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995 @REVIEW_IN_PROGRESS@ > state until you execute the change set. By default, AWS CloudFormation specifies @UPDATE@ . You can't use the @UPDATE@ type to create a change set for a new stack or the @CREATE@ type to create a change set for an existing stack.
--
-- * 'ccsTags' - Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.
--
-- * 'ccsRollbackConfiguration' - The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
--
-- * 'ccsDescription' - A description to help you identify this change set.
--
-- * 'ccsTemplateBody' - A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by comparing this template with the template of the stack that you specified. Conditional: You must specify only @TemplateBody@ or @TemplateURL@ .
--
-- * 'ccsParameters' - A list of @Parameter@ structures that specify input parameters for the change set. For more information, see the 'Parameter' data type.
--
-- * 'ccsClientToken' - A unique identifier for this @CreateChangeSet@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry @CreateChangeSet@ requests to ensure that AWS CloudFormation successfully received them.
--
-- * 'ccsUsePreviousTemplate' - Whether to reuse the template that is associated with the stack to create the change set.
--
-- * 'ccsStackName' - The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.
--
-- * 'ccsChangeSetName' - The name of the change set. The name must be unique among all change sets that are associated with the specified stack. A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.
createChangeSet ::
  -- | 'ccsStackName'
  Text ->
  -- | 'ccsChangeSetName'
  Text ->
  CreateChangeSet
createChangeSet pStackName_ pChangeSetName_ =
  CreateChangeSet'
    { _ccsResourcesToImport = Nothing,
      _ccsIncludeNestedStacks = Nothing,
      _ccsRoleARN = Nothing,
      _ccsResourceTypes = Nothing,
      _ccsCapabilities = Nothing,
      _ccsTemplateURL = Nothing,
      _ccsNotificationARNs = Nothing,
      _ccsChangeSetType = Nothing,
      _ccsTags = Nothing,
      _ccsRollbackConfiguration = Nothing,
      _ccsDescription = Nothing,
      _ccsTemplateBody = Nothing,
      _ccsParameters = Nothing,
      _ccsClientToken = Nothing,
      _ccsUsePreviousTemplate = Nothing,
      _ccsStackName = pStackName_,
      _ccsChangeSetName = pChangeSetName_
    }

-- | The resources to import into your stack.
ccsResourcesToImport :: Lens' CreateChangeSet [ResourceToImport]
ccsResourcesToImport = lens _ccsResourcesToImport (\s a -> s {_ccsResourcesToImport = a}) . _Default . _Coerce

-- | Creates a change set for the all nested stacks specified in the template. The default behavior of this action is set to @False@ . To include nested sets in a change set, specify @True@ .
ccsIncludeNestedStacks :: Lens' CreateChangeSet (Maybe Bool)
ccsIncludeNestedStacks = lens _ccsIncludeNestedStacks (\s a -> s {_ccsIncludeNestedStacks = a})

-- | The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.
ccsRoleARN :: Lens' CreateChangeSet (Maybe Text)
ccsRoleARN = lens _ccsRoleARN (\s a -> s {_ccsRoleARN = a})

-- | The template resource types that you have permissions to work with if you execute this change set, such as @AWS::EC2::Instance@ , @AWS::EC2::*@ , or @Custom::MyCustomInstance@ . If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html Controlling Access with AWS Identity and Access Management> in the AWS CloudFormation User Guide.
ccsResourceTypes :: Lens' CreateChangeSet [Text]
ccsResourceTypes = lens _ccsResourceTypes (\s a -> s {_ccsResourceTypes = a}) . _Default . _Coerce

-- | In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to create the stack.     * @CAPABILITY_IAM@ and @CAPABILITY_NAMED_IAM@  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the @CAPABILITY_IAM@ or @CAPABILITY_NAMED_IAM@ capability.     * If you have IAM resources, you can specify either capability.      * If you have IAM resources with custom names, you /must/ specify @CAPABILITY_NAMED_IAM@ .      * If you don't specify either of these capabilities, AWS CloudFormation returns an @InsufficientCapabilities@ error. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html AWS::IAM::AccessKey>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html AWS::IAM::Policy>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html AWS::IAM::User>      * <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html AWS::IAM::UserToGroupAddition>  For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .     * @CAPABILITY_AUTO_EXPAND@  Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html AWS::Include> and <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html AWS::Serverless> transforms, which are macros hosted by AWS CloudFormation. For more information on macros, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html Using AWS CloudFormation Macros to Perform Custom Processing on Templates> .
ccsCapabilities :: Lens' CreateChangeSet [Capability]
ccsCapabilities = lens _ccsCapabilities (\s a -> s {_ccsCapabilities = a}) . _Default . _Coerce

-- | The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket or a Systems Manager document. AWS CloudFormation generates the change set by comparing this template with the stack that you specified. Conditional: You must specify only @TemplateBody@ or @TemplateURL@ .
ccsTemplateURL :: Lens' CreateChangeSet (Maybe Text)
ccsTemplateURL = lens _ccsTemplateURL (\s a -> s {_ccsTemplateURL = a})

-- | The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.
ccsNotificationARNs :: Lens' CreateChangeSet [Text]
ccsNotificationARNs = lens _ccsNotificationARNs (\s a -> s {_ccsNotificationARNs = a}) . _Default . _Coerce

-- | The type of change set operation. To create a change set for a new stack, specify @CREATE@ . To create a change set for an existing stack, specify @UPDATE@ . To create a change set for an import operation, specify @IMPORT@ . If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995 @REVIEW_IN_PROGRESS@ > state until you execute the change set. By default, AWS CloudFormation specifies @UPDATE@ . You can't use the @UPDATE@ type to create a change set for a new stack or the @CREATE@ type to create a change set for an existing stack.
ccsChangeSetType :: Lens' CreateChangeSet (Maybe ChangeSetType)
ccsChangeSetType = lens _ccsChangeSetType (\s a -> s {_ccsChangeSetType = a})

-- | Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.
ccsTags :: Lens' CreateChangeSet [Tag]
ccsTags = lens _ccsTags (\s a -> s {_ccsTags = a}) . _Default . _Coerce

-- | The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
ccsRollbackConfiguration :: Lens' CreateChangeSet (Maybe RollbackConfiguration)
ccsRollbackConfiguration = lens _ccsRollbackConfiguration (\s a -> s {_ccsRollbackConfiguration = a})

-- | A description to help you identify this change set.
ccsDescription :: Lens' CreateChangeSet (Maybe Text)
ccsDescription = lens _ccsDescription (\s a -> s {_ccsDescription = a})

-- | A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by comparing this template with the template of the stack that you specified. Conditional: You must specify only @TemplateBody@ or @TemplateURL@ .
ccsTemplateBody :: Lens' CreateChangeSet (Maybe Text)
ccsTemplateBody = lens _ccsTemplateBody (\s a -> s {_ccsTemplateBody = a})

-- | A list of @Parameter@ structures that specify input parameters for the change set. For more information, see the 'Parameter' data type.
ccsParameters :: Lens' CreateChangeSet [Parameter]
ccsParameters = lens _ccsParameters (\s a -> s {_ccsParameters = a}) . _Default . _Coerce

-- | A unique identifier for this @CreateChangeSet@ request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry @CreateChangeSet@ requests to ensure that AWS CloudFormation successfully received them.
ccsClientToken :: Lens' CreateChangeSet (Maybe Text)
ccsClientToken = lens _ccsClientToken (\s a -> s {_ccsClientToken = a})

-- | Whether to reuse the template that is associated with the stack to create the change set.
ccsUsePreviousTemplate :: Lens' CreateChangeSet (Maybe Bool)
ccsUsePreviousTemplate = lens _ccsUsePreviousTemplate (\s a -> s {_ccsUsePreviousTemplate = a})

-- | The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.
ccsStackName :: Lens' CreateChangeSet Text
ccsStackName = lens _ccsStackName (\s a -> s {_ccsStackName = a})

-- | The name of the change set. The name must be unique among all change sets that are associated with the specified stack. A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.
ccsChangeSetName :: Lens' CreateChangeSet Text
ccsChangeSetName = lens _ccsChangeSetName (\s a -> s {_ccsChangeSetName = a})

instance AWSRequest CreateChangeSet where
  type Rs CreateChangeSet = CreateChangeSetResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "CreateChangeSetResult"
      ( \s h x ->
          CreateChangeSetResponse'
            <$> (x .@? "StackId")
            <*> (x .@? "Id")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateChangeSet

instance NFData CreateChangeSet

instance ToHeaders CreateChangeSet where
  toHeaders = const mempty

instance ToPath CreateChangeSet where
  toPath = const "/"

instance ToQuery CreateChangeSet where
  toQuery CreateChangeSet' {..} =
    mconcat
      [ "Action" =: ("CreateChangeSet" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "ResourcesToImport"
          =: toQuery
            (toQueryList "member" <$> _ccsResourcesToImport),
        "IncludeNestedStacks" =: _ccsIncludeNestedStacks,
        "RoleARN" =: _ccsRoleARN,
        "ResourceTypes"
          =: toQuery (toQueryList "member" <$> _ccsResourceTypes),
        "Capabilities"
          =: toQuery (toQueryList "member" <$> _ccsCapabilities),
        "TemplateURL" =: _ccsTemplateURL,
        "NotificationARNs"
          =: toQuery
            (toQueryList "member" <$> _ccsNotificationARNs),
        "ChangeSetType" =: _ccsChangeSetType,
        "Tags"
          =: toQuery (toQueryList "member" <$> _ccsTags),
        "RollbackConfiguration" =: _ccsRollbackConfiguration,
        "Description" =: _ccsDescription,
        "TemplateBody" =: _ccsTemplateBody,
        "Parameters"
          =: toQuery (toQueryList "member" <$> _ccsParameters),
        "ClientToken" =: _ccsClientToken,
        "UsePreviousTemplate" =: _ccsUsePreviousTemplate,
        "StackName" =: _ccsStackName,
        "ChangeSetName" =: _ccsChangeSetName
      ]

-- | The output for the 'CreateChangeSet' action.
--
--
--
-- /See:/ 'createChangeSetResponse' smart constructor.
data CreateChangeSetResponse = CreateChangeSetResponse'
  { _ccsrrsStackId ::
      !(Maybe Text),
    _ccsrrsId ::
      !(Maybe Text),
    _ccsrrsResponseStatus ::
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

-- | Creates a value of 'CreateChangeSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccsrrsStackId' - The unique ID of the stack.
--
-- * 'ccsrrsId' - The Amazon Resource Name (ARN) of the change set.
--
-- * 'ccsrrsResponseStatus' - -- | The response status code.
createChangeSetResponse ::
  -- | 'ccsrrsResponseStatus'
  Int ->
  CreateChangeSetResponse
createChangeSetResponse pResponseStatus_ =
  CreateChangeSetResponse'
    { _ccsrrsStackId = Nothing,
      _ccsrrsId = Nothing,
      _ccsrrsResponseStatus = pResponseStatus_
    }

-- | The unique ID of the stack.
ccsrrsStackId :: Lens' CreateChangeSetResponse (Maybe Text)
ccsrrsStackId = lens _ccsrrsStackId (\s a -> s {_ccsrrsStackId = a})

-- | The Amazon Resource Name (ARN) of the change set.
ccsrrsId :: Lens' CreateChangeSetResponse (Maybe Text)
ccsrrsId = lens _ccsrrsId (\s a -> s {_ccsrrsId = a})

-- | -- | The response status code.
ccsrrsResponseStatus :: Lens' CreateChangeSetResponse Int
ccsrrsResponseStatus = lens _ccsrrsResponseStatus (\s a -> s {_ccsrrsResponseStatus = a})

instance NFData CreateChangeSetResponse
