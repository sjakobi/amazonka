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
-- Module      : Network.AWS.CloudFormation.DescribeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about an extension that has been registered.
--
--
-- If you specify a @VersionId@ , @DescribeType@ returns information about that specific extension version. Otherwise, it returns information about the default extension version.
module Network.AWS.CloudFormation.DescribeType
  ( -- * Creating a Request
    describeType,
    DescribeType,

    -- * Request Lenses
    dTypeName,
    dARN,
    dVersionId,
    dType,

    -- * Destructuring the Response
    describeTypeResponse,
    DescribeTypeResponse,

    -- * Response Lenses
    dtrrsTypeName,
    dtrrsSchema,
    dtrrsLoggingConfig,
    dtrrsExecutionRoleARN,
    dtrrsARN,
    dtrrsDeprecatedStatus,
    dtrrsLastUpdated,
    dtrrsDefaultVersionId,
    dtrrsDocumentationURL,
    dtrrsProvisioningType,
    dtrrsVisibility,
    dtrrsDescription,
    dtrrsSourceURL,
    dtrrsIsDefaultVersion,
    dtrrsType,
    dtrrsTimeCreated,
    dtrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeType' smart constructor.
data DescribeType = DescribeType'
  { _dTypeName ::
      !(Maybe Text),
    _dARN :: !(Maybe Text),
    _dVersionId :: !(Maybe Text),
    _dType :: !(Maybe RegistryType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dTypeName' - The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'dARN' - The Amazon Resource Name (ARN) of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'dVersionId' - The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered. If you specify a @VersionId@ , @DescribeType@ returns information about that specific extension version. Otherwise, it returns information about the default extension version.
--
-- * 'dType' - The kind of extension.  Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
describeType ::
  DescribeType
describeType =
  DescribeType'
    { _dTypeName = Nothing,
      _dARN = Nothing,
      _dVersionId = Nothing,
      _dType = Nothing
    }

-- | The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
dTypeName :: Lens' DescribeType (Maybe Text)
dTypeName = lens _dTypeName (\s a -> s {_dTypeName = a})

-- | The Amazon Resource Name (ARN) of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
dARN :: Lens' DescribeType (Maybe Text)
dARN = lens _dARN (\s a -> s {_dARN = a})

-- | The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered. If you specify a @VersionId@ , @DescribeType@ returns information about that specific extension version. Otherwise, it returns information about the default extension version.
dVersionId :: Lens' DescribeType (Maybe Text)
dVersionId = lens _dVersionId (\s a -> s {_dVersionId = a})

-- | The kind of extension.  Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
dType :: Lens' DescribeType (Maybe RegistryType)
dType = lens _dType (\s a -> s {_dType = a})

instance AWSRequest DescribeType where
  type Rs DescribeType = DescribeTypeResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeTypeResult"
      ( \s h x ->
          DescribeTypeResponse'
            <$> (x .@? "TypeName")
            <*> (x .@? "Schema")
            <*> (x .@? "LoggingConfig")
            <*> (x .@? "ExecutionRoleArn")
            <*> (x .@? "Arn")
            <*> (x .@? "DeprecatedStatus")
            <*> (x .@? "LastUpdated")
            <*> (x .@? "DefaultVersionId")
            <*> (x .@? "DocumentationUrl")
            <*> (x .@? "ProvisioningType")
            <*> (x .@? "Visibility")
            <*> (x .@? "Description")
            <*> (x .@? "SourceUrl")
            <*> (x .@? "IsDefaultVersion")
            <*> (x .@? "Type")
            <*> (x .@? "TimeCreated")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeType

instance NFData DescribeType

instance ToHeaders DescribeType where
  toHeaders = const mempty

instance ToPath DescribeType where
  toPath = const "/"

instance ToQuery DescribeType where
  toQuery DescribeType' {..} =
    mconcat
      [ "Action" =: ("DescribeType" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "TypeName" =: _dTypeName,
        "Arn" =: _dARN,
        "VersionId" =: _dVersionId,
        "Type" =: _dType
      ]

-- | /See:/ 'describeTypeResponse' smart constructor.
data DescribeTypeResponse = DescribeTypeResponse'
  { _dtrrsTypeName ::
      !(Maybe Text),
    _dtrrsSchema :: !(Maybe Text),
    _dtrrsLoggingConfig ::
      !(Maybe LoggingConfig),
    _dtrrsExecutionRoleARN ::
      !(Maybe Text),
    _dtrrsARN :: !(Maybe Text),
    _dtrrsDeprecatedStatus ::
      !(Maybe DeprecatedStatus),
    _dtrrsLastUpdated ::
      !(Maybe ISO8601),
    _dtrrsDefaultVersionId ::
      !(Maybe Text),
    _dtrrsDocumentationURL ::
      !(Maybe Text),
    _dtrrsProvisioningType ::
      !(Maybe ProvisioningType),
    _dtrrsVisibility ::
      !(Maybe Visibility),
    _dtrrsDescription ::
      !(Maybe Text),
    _dtrrsSourceURL ::
      !(Maybe Text),
    _dtrrsIsDefaultVersion ::
      !(Maybe Bool),
    _dtrrsType ::
      !(Maybe RegistryType),
    _dtrrsTimeCreated ::
      !(Maybe ISO8601),
    _dtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsTypeName' - The name of the registered extension.
--
-- * 'dtrrsSchema' - The schema that defines the extension. For more information on extension schemas, see <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html Resource Provider Schema> in the /CloudFormation CLI User Guide/ .
--
-- * 'dtrrsLoggingConfig' - Contains logging configuration information for an extension.
--
-- * 'dtrrsExecutionRoleARN' - The Amazon Resource Name (ARN) of the IAM execution role used to register the extension. If your resource type calls AWS APIs in any of its handlers, you must create an /<https:\/\/docs.aws.amazon.com\/IAM\/latest\/UserGuide\/id_roles.html IAM execution role> / that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. CloudFormation then assumes that execution role to provide your extension with the appropriate credentials.
--
-- * 'dtrrsARN' - The Amazon Resource Name (ARN) of the extension.
--
-- * 'dtrrsDeprecatedStatus' - The deprecation status of the extension version. Valid values include:     * @LIVE@ : The extension is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.     * @DEPRECATED@ : The extension has been deregistered and can no longer be used in CloudFormation operations.
--
-- * 'dtrrsLastUpdated' - When the specified extension version was registered.
--
-- * 'dtrrsDefaultVersionId' - The ID of the default version of the extension. The default version is used when the extension version is not specified. To set the default version of an extension, use @'SetTypeDefaultVersion' @ .
--
-- * 'dtrrsDocumentationURL' - The URL of a page providing detailed documentation for this extension.
--
-- * 'dtrrsProvisioningType' - The provisioning behavior of the extension. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted. Valid values include:     * @FULLY_MUTABLE@ : The extension includes an update handler to process updates to the extension during stack update operations.     * @IMMUTABLE@ : The extension does not include an update handler, so the extension cannot be updated and must instead be replaced during stack update operations.     * @NON_PROVISIONABLE@ : The extension does not include all of the following handlers, and therefore cannot actually be provisioned.     * create     * read     * delete
--
-- * 'dtrrsVisibility' - The scope at which the extension is visible and usable in CloudFormation operations. Valid values include:     * @PRIVATE@ : The extension is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any types you register as @PRIVATE@ .     * @PUBLIC@ : The extension is publically visible and usable within any Amazon account.
--
-- * 'dtrrsDescription' - The description of the registered extension.
--
-- * 'dtrrsSourceURL' - The URL of the source code for the extension.
--
-- * 'dtrrsIsDefaultVersion' - Whether the specified extension version is set as the default version.
--
-- * 'dtrrsType' - The kind of extension.
--
-- * 'dtrrsTimeCreated' - When the specified extension version was registered.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTypeResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTypeResponse
describeTypeResponse pResponseStatus_ =
  DescribeTypeResponse'
    { _dtrrsTypeName = Nothing,
      _dtrrsSchema = Nothing,
      _dtrrsLoggingConfig = Nothing,
      _dtrrsExecutionRoleARN = Nothing,
      _dtrrsARN = Nothing,
      _dtrrsDeprecatedStatus = Nothing,
      _dtrrsLastUpdated = Nothing,
      _dtrrsDefaultVersionId = Nothing,
      _dtrrsDocumentationURL = Nothing,
      _dtrrsProvisioningType = Nothing,
      _dtrrsVisibility = Nothing,
      _dtrrsDescription = Nothing,
      _dtrrsSourceURL = Nothing,
      _dtrrsIsDefaultVersion = Nothing,
      _dtrrsType = Nothing,
      _dtrrsTimeCreated = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | The name of the registered extension.
dtrrsTypeName :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsTypeName = lens _dtrrsTypeName (\s a -> s {_dtrrsTypeName = a})

-- | The schema that defines the extension. For more information on extension schemas, see <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html Resource Provider Schema> in the /CloudFormation CLI User Guide/ .
dtrrsSchema :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsSchema = lens _dtrrsSchema (\s a -> s {_dtrrsSchema = a})

-- | Contains logging configuration information for an extension.
dtrrsLoggingConfig :: Lens' DescribeTypeResponse (Maybe LoggingConfig)
dtrrsLoggingConfig = lens _dtrrsLoggingConfig (\s a -> s {_dtrrsLoggingConfig = a})

-- | The Amazon Resource Name (ARN) of the IAM execution role used to register the extension. If your resource type calls AWS APIs in any of its handlers, you must create an /<https:\/\/docs.aws.amazon.com\/IAM\/latest\/UserGuide\/id_roles.html IAM execution role> / that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. CloudFormation then assumes that execution role to provide your extension with the appropriate credentials.
dtrrsExecutionRoleARN :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsExecutionRoleARN = lens _dtrrsExecutionRoleARN (\s a -> s {_dtrrsExecutionRoleARN = a})

-- | The Amazon Resource Name (ARN) of the extension.
dtrrsARN :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsARN = lens _dtrrsARN (\s a -> s {_dtrrsARN = a})

-- | The deprecation status of the extension version. Valid values include:     * @LIVE@ : The extension is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.     * @DEPRECATED@ : The extension has been deregistered and can no longer be used in CloudFormation operations.
dtrrsDeprecatedStatus :: Lens' DescribeTypeResponse (Maybe DeprecatedStatus)
dtrrsDeprecatedStatus = lens _dtrrsDeprecatedStatus (\s a -> s {_dtrrsDeprecatedStatus = a})

-- | When the specified extension version was registered.
dtrrsLastUpdated :: Lens' DescribeTypeResponse (Maybe UTCTime)
dtrrsLastUpdated = lens _dtrrsLastUpdated (\s a -> s {_dtrrsLastUpdated = a}) . mapping _Time

-- | The ID of the default version of the extension. The default version is used when the extension version is not specified. To set the default version of an extension, use @'SetTypeDefaultVersion' @ .
dtrrsDefaultVersionId :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsDefaultVersionId = lens _dtrrsDefaultVersionId (\s a -> s {_dtrrsDefaultVersionId = a})

-- | The URL of a page providing detailed documentation for this extension.
dtrrsDocumentationURL :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsDocumentationURL = lens _dtrrsDocumentationURL (\s a -> s {_dtrrsDocumentationURL = a})

-- | The provisioning behavior of the extension. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted. Valid values include:     * @FULLY_MUTABLE@ : The extension includes an update handler to process updates to the extension during stack update operations.     * @IMMUTABLE@ : The extension does not include an update handler, so the extension cannot be updated and must instead be replaced during stack update operations.     * @NON_PROVISIONABLE@ : The extension does not include all of the following handlers, and therefore cannot actually be provisioned.     * create     * read     * delete
dtrrsProvisioningType :: Lens' DescribeTypeResponse (Maybe ProvisioningType)
dtrrsProvisioningType = lens _dtrrsProvisioningType (\s a -> s {_dtrrsProvisioningType = a})

-- | The scope at which the extension is visible and usable in CloudFormation operations. Valid values include:     * @PRIVATE@ : The extension is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any types you register as @PRIVATE@ .     * @PUBLIC@ : The extension is publically visible and usable within any Amazon account.
dtrrsVisibility :: Lens' DescribeTypeResponse (Maybe Visibility)
dtrrsVisibility = lens _dtrrsVisibility (\s a -> s {_dtrrsVisibility = a})

-- | The description of the registered extension.
dtrrsDescription :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsDescription = lens _dtrrsDescription (\s a -> s {_dtrrsDescription = a})

-- | The URL of the source code for the extension.
dtrrsSourceURL :: Lens' DescribeTypeResponse (Maybe Text)
dtrrsSourceURL = lens _dtrrsSourceURL (\s a -> s {_dtrrsSourceURL = a})

-- | Whether the specified extension version is set as the default version.
dtrrsIsDefaultVersion :: Lens' DescribeTypeResponse (Maybe Bool)
dtrrsIsDefaultVersion = lens _dtrrsIsDefaultVersion (\s a -> s {_dtrrsIsDefaultVersion = a})

-- | The kind of extension.
dtrrsType :: Lens' DescribeTypeResponse (Maybe RegistryType)
dtrrsType = lens _dtrrsType (\s a -> s {_dtrrsType = a})

-- | When the specified extension version was registered.
dtrrsTimeCreated :: Lens' DescribeTypeResponse (Maybe UTCTime)
dtrrsTimeCreated = lens _dtrrsTimeCreated (\s a -> s {_dtrrsTimeCreated = a}) . mapping _Time

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTypeResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTypeResponse
