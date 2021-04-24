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
-- Module      : Network.AWS.CloudFormation.RegisterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers an extension with the CloudFormation service. Registering an extension makes it available for use in CloudFormation templates in your AWS account, and includes:
--
--
--     * Validating the extension schema
--
--     * Determining which handlers, if any, have been specified for the extension
--
--     * Making the extension available for use in your account
--
--
--
-- For more information on how to develop extensions and ready them for registeration, see <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html Creating Resource Providers> in the /CloudFormation CLI User Guide/ .
--
-- You can have a maximum of 50 resource extension versions registered at a time. This maximum is per account and per region. Use <AWSCloudFormation/latest/APIReference/API_DeregisterType.html DeregisterType> to deregister specific extension versions if necessary.
--
-- Once you have initiated a registration request using @'RegisterType' @ , you can use @'DescribeTypeRegistration' @ to monitor the progress of the registration request.
module Network.AWS.CloudFormation.RegisterType
  ( -- * Creating a Request
    registerType,
    RegisterType,

    -- * Request Lenses
    rLoggingConfig,
    rExecutionRoleARN,
    rClientRequestToken,
    rType,
    rTypeName,
    rSchemaHandlerPackage,

    -- * Destructuring the Response
    registerTypeResponse,
    RegisterTypeResponse,

    -- * Response Lenses
    rtrrsRegistrationToken,
    rtrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'registerType' smart constructor.
data RegisterType = RegisterType'
  { _rLoggingConfig ::
      !(Maybe LoggingConfig),
    _rExecutionRoleARN :: !(Maybe Text),
    _rClientRequestToken :: !(Maybe Text),
    _rType :: !(Maybe RegistryType),
    _rTypeName :: !Text,
    _rSchemaHandlerPackage :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rLoggingConfig' - Specifies logging configuration information for an extension.
--
-- * 'rExecutionRoleARN' - The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an /<https:\/\/docs.aws.amazon.com\/IAM\/latest\/UserGuide\/id_roles.html IAM execution role> / that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
--
-- * 'rClientRequestToken' - A unique identifier that acts as an idempotency key for this registration request. Specifying a client request token prevents CloudFormation from generating more than one version of an extension from the same registeration request, even if the request is submitted multiple times.
--
-- * 'rType' - The kind of extension.
--
-- * 'rTypeName' - The name of the extension being registered. We recommend that extension names adhere to the following pattern: /company_or_organization/ ::/service/ ::/type/ .
--
-- * 'rSchemaHandlerPackage' - A url to the S3 bucket containing the extension project package that contains the neccessary files for the extension you want to register. For information on generating a schema handler package for the extension you want to register, see <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html submit> in the /CloudFormation CLI User Guide/ .
registerType ::
  -- | 'rTypeName'
  Text ->
  -- | 'rSchemaHandlerPackage'
  Text ->
  RegisterType
registerType pTypeName_ pSchemaHandlerPackage_ =
  RegisterType'
    { _rLoggingConfig = Nothing,
      _rExecutionRoleARN = Nothing,
      _rClientRequestToken = Nothing,
      _rType = Nothing,
      _rTypeName = pTypeName_,
      _rSchemaHandlerPackage = pSchemaHandlerPackage_
    }

-- | Specifies logging configuration information for an extension.
rLoggingConfig :: Lens' RegisterType (Maybe LoggingConfig)
rLoggingConfig = lens _rLoggingConfig (\s a -> s {_rLoggingConfig = a})

-- | The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an /<https:\/\/docs.aws.amazon.com\/IAM\/latest\/UserGuide\/id_roles.html IAM execution role> / that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
rExecutionRoleARN :: Lens' RegisterType (Maybe Text)
rExecutionRoleARN = lens _rExecutionRoleARN (\s a -> s {_rExecutionRoleARN = a})

-- | A unique identifier that acts as an idempotency key for this registration request. Specifying a client request token prevents CloudFormation from generating more than one version of an extension from the same registeration request, even if the request is submitted multiple times.
rClientRequestToken :: Lens' RegisterType (Maybe Text)
rClientRequestToken = lens _rClientRequestToken (\s a -> s {_rClientRequestToken = a})

-- | The kind of extension.
rType :: Lens' RegisterType (Maybe RegistryType)
rType = lens _rType (\s a -> s {_rType = a})

-- | The name of the extension being registered. We recommend that extension names adhere to the following pattern: /company_or_organization/ ::/service/ ::/type/ .
rTypeName :: Lens' RegisterType Text
rTypeName = lens _rTypeName (\s a -> s {_rTypeName = a})

-- | A url to the S3 bucket containing the extension project package that contains the neccessary files for the extension you want to register. For information on generating a schema handler package for the extension you want to register, see <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html submit> in the /CloudFormation CLI User Guide/ .
rSchemaHandlerPackage :: Lens' RegisterType Text
rSchemaHandlerPackage = lens _rSchemaHandlerPackage (\s a -> s {_rSchemaHandlerPackage = a})

instance AWSRequest RegisterType where
  type Rs RegisterType = RegisterTypeResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "RegisterTypeResult"
      ( \s h x ->
          RegisterTypeResponse'
            <$> (x .@? "RegistrationToken") <*> (pure (fromEnum s))
      )

instance Hashable RegisterType

instance NFData RegisterType

instance ToHeaders RegisterType where
  toHeaders = const mempty

instance ToPath RegisterType where
  toPath = const "/"

instance ToQuery RegisterType where
  toQuery RegisterType' {..} =
    mconcat
      [ "Action" =: ("RegisterType" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "LoggingConfig" =: _rLoggingConfig,
        "ExecutionRoleArn" =: _rExecutionRoleARN,
        "ClientRequestToken" =: _rClientRequestToken,
        "Type" =: _rType,
        "TypeName" =: _rTypeName,
        "SchemaHandlerPackage" =: _rSchemaHandlerPackage
      ]

-- | /See:/ 'registerTypeResponse' smart constructor.
data RegisterTypeResponse = RegisterTypeResponse'
  { _rtrrsRegistrationToken ::
      !(Maybe Text),
    _rtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrrsRegistrationToken' - The identifier for this registration request. Use this registration token when calling @'DescribeTypeRegistration' @ , which returns information about the status and IDs of the extension registration.
--
-- * 'rtrrsResponseStatus' - -- | The response status code.
registerTypeResponse ::
  -- | 'rtrrsResponseStatus'
  Int ->
  RegisterTypeResponse
registerTypeResponse pResponseStatus_ =
  RegisterTypeResponse'
    { _rtrrsRegistrationToken =
        Nothing,
      _rtrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for this registration request. Use this registration token when calling @'DescribeTypeRegistration' @ , which returns information about the status and IDs of the extension registration.
rtrrsRegistrationToken :: Lens' RegisterTypeResponse (Maybe Text)
rtrrsRegistrationToken = lens _rtrrsRegistrationToken (\s a -> s {_rtrrsRegistrationToken = a})

-- | -- | The response status code.
rtrrsResponseStatus :: Lens' RegisterTypeResponse Int
rtrrsResponseStatus = lens _rtrrsResponseStatus (\s a -> s {_rtrrsResponseStatus = a})

instance NFData RegisterTypeResponse
