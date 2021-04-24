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
-- Module      : Network.AWS.ElasticBeanstalk.CreateEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration.
module Network.AWS.ElasticBeanstalk.CreateEnvironment
  ( -- * Creating a Request
    createEnvironment,
    CreateEnvironment,

    -- * Request Lenses
    ceTemplateName,
    ceGroupName,
    ceSolutionStackName,
    ceOptionsToRemove,
    ceEnvironmentName,
    cePlatformARN,
    ceVersionLabel,
    ceCNAMEPrefix,
    ceTags,
    ceOptionSettings,
    ceDescription,
    ceTier,
    ceOperationsRole,
    ceApplicationName,

    -- * Destructuring the Response
    environmentDescription,
    EnvironmentDescription,

    -- * Response Lenses
    eAbortableOperationInProgress,
    eTemplateName,
    eStatus,
    eDateCreated,
    eEnvironmentLinks,
    eSolutionStackName,
    eEnvironmentId,
    eEnvironmentName,
    ePlatformARN,
    eVersionLabel,
    eHealth,
    eCNAME,
    eResources,
    eDateUpdated,
    eDescription,
    eHealthStatus,
    eEnvironmentARN,
    eEndpointURL,
    eApplicationName,
    eTier,
    eOperationsRole,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'createEnvironment' smart constructor.
data CreateEnvironment = CreateEnvironment'
  { _ceTemplateName ::
      !(Maybe Text),
    _ceGroupName :: !(Maybe Text),
    _ceSolutionStackName ::
      !(Maybe Text),
    _ceOptionsToRemove ::
      !(Maybe [OptionSpecification]),
    _ceEnvironmentName :: !(Maybe Text),
    _cePlatformARN :: !(Maybe Text),
    _ceVersionLabel :: !(Maybe Text),
    _ceCNAMEPrefix :: !(Maybe Text),
    _ceTags :: !(Maybe [Tag]),
    _ceOptionSettings ::
      !( Maybe
           [ConfigurationOptionSetting]
       ),
    _ceDescription :: !(Maybe Text),
    _ceTier :: !(Maybe EnvironmentTier),
    _ceOperationsRole :: !(Maybe Text),
    _ceApplicationName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceTemplateName' - The name of the Elastic Beanstalk configuration template to use with the environment.
--
-- * 'ceGroupName' - The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name parameter. See <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html Environment Manifest (env.yaml)> for details.
--
-- * 'ceSolutionStackName' - The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If specified, Elastic Beanstalk sets the configuration values to the default values associated with the specified solution stack. For a list of current solution stacks, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html Elastic Beanstalk Supported Platforms> in the /AWS Elastic Beanstalk Platforms/ guide.
--
-- * 'ceOptionsToRemove' - A list of custom user-defined configuration options to remove from the configuration set for this new environment.
--
-- * 'ceEnvironmentName' - A unique name for the environment. Constraint: Must be from 4 to 40 characters in length. The name can contain only letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an @InvalidParameterValue@ error.  If you don't specify the @CNAMEPrefix@ parameter, the environment name becomes part of the CNAME, and therefore part of the visible URL for your application.
--
-- * 'cePlatformARN' - The Amazon Resource Name (ARN) of the custom platform to use with the environment. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html Custom Platforms> in the /AWS Elastic Beanstalk Developer Guide/ .
--
-- * 'ceVersionLabel' - The name of the application version to deploy. Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.
--
-- * 'ceCNAMEPrefix' - If specified, the environment attempts to use this value as the prefix for the CNAME in your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.
--
-- * 'ceTags' - Specifies the tags applied to resources in the environment.
--
-- * 'ceOptionSettings' - If specified, AWS Elastic Beanstalk sets the specified configuration options to the requested value in the configuration set for the new environment. These override the values obtained from the solution stack or the configuration template.
--
-- * 'ceDescription' - Your description for this environment.
--
-- * 'ceTier' - Specifies the tier to use in creating this environment. The environment tier that you choose determines whether Elastic Beanstalk provisions resources to support a web application that handles HTTP(S) requests or a web application that handles background-processing tasks.
--
-- * 'ceOperationsRole' - The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream services during this call and during subsequent calls acting on this environment. To specify an operations role, you must have the @iam:PassRole@ permission for the role. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles> in the /AWS Elastic Beanstalk Developer Guide/ .
--
-- * 'ceApplicationName' - The name of the application that is associated with this environment.
createEnvironment ::
  -- | 'ceApplicationName'
  Text ->
  CreateEnvironment
createEnvironment pApplicationName_ =
  CreateEnvironment'
    { _ceTemplateName = Nothing,
      _ceGroupName = Nothing,
      _ceSolutionStackName = Nothing,
      _ceOptionsToRemove = Nothing,
      _ceEnvironmentName = Nothing,
      _cePlatformARN = Nothing,
      _ceVersionLabel = Nothing,
      _ceCNAMEPrefix = Nothing,
      _ceTags = Nothing,
      _ceOptionSettings = Nothing,
      _ceDescription = Nothing,
      _ceTier = Nothing,
      _ceOperationsRole = Nothing,
      _ceApplicationName = pApplicationName_
    }

-- | The name of the Elastic Beanstalk configuration template to use with the environment.
ceTemplateName :: Lens' CreateEnvironment (Maybe Text)
ceTemplateName = lens _ceTemplateName (\s a -> s {_ceTemplateName = a})

-- | The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name parameter. See <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html Environment Manifest (env.yaml)> for details.
ceGroupName :: Lens' CreateEnvironment (Maybe Text)
ceGroupName = lens _ceGroupName (\s a -> s {_ceGroupName = a})

-- | The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If specified, Elastic Beanstalk sets the configuration values to the default values associated with the specified solution stack. For a list of current solution stacks, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html Elastic Beanstalk Supported Platforms> in the /AWS Elastic Beanstalk Platforms/ guide.
ceSolutionStackName :: Lens' CreateEnvironment (Maybe Text)
ceSolutionStackName = lens _ceSolutionStackName (\s a -> s {_ceSolutionStackName = a})

-- | A list of custom user-defined configuration options to remove from the configuration set for this new environment.
ceOptionsToRemove :: Lens' CreateEnvironment [OptionSpecification]
ceOptionsToRemove = lens _ceOptionsToRemove (\s a -> s {_ceOptionsToRemove = a}) . _Default . _Coerce

-- | A unique name for the environment. Constraint: Must be from 4 to 40 characters in length. The name can contain only letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an @InvalidParameterValue@ error.  If you don't specify the @CNAMEPrefix@ parameter, the environment name becomes part of the CNAME, and therefore part of the visible URL for your application.
ceEnvironmentName :: Lens' CreateEnvironment (Maybe Text)
ceEnvironmentName = lens _ceEnvironmentName (\s a -> s {_ceEnvironmentName = a})

-- | The Amazon Resource Name (ARN) of the custom platform to use with the environment. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html Custom Platforms> in the /AWS Elastic Beanstalk Developer Guide/ .
cePlatformARN :: Lens' CreateEnvironment (Maybe Text)
cePlatformARN = lens _cePlatformARN (\s a -> s {_cePlatformARN = a})

-- | The name of the application version to deploy. Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.
ceVersionLabel :: Lens' CreateEnvironment (Maybe Text)
ceVersionLabel = lens _ceVersionLabel (\s a -> s {_ceVersionLabel = a})

-- | If specified, the environment attempts to use this value as the prefix for the CNAME in your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.
ceCNAMEPrefix :: Lens' CreateEnvironment (Maybe Text)
ceCNAMEPrefix = lens _ceCNAMEPrefix (\s a -> s {_ceCNAMEPrefix = a})

-- | Specifies the tags applied to resources in the environment.
ceTags :: Lens' CreateEnvironment [Tag]
ceTags = lens _ceTags (\s a -> s {_ceTags = a}) . _Default . _Coerce

-- | If specified, AWS Elastic Beanstalk sets the specified configuration options to the requested value in the configuration set for the new environment. These override the values obtained from the solution stack or the configuration template.
ceOptionSettings :: Lens' CreateEnvironment [ConfigurationOptionSetting]
ceOptionSettings = lens _ceOptionSettings (\s a -> s {_ceOptionSettings = a}) . _Default . _Coerce

-- | Your description for this environment.
ceDescription :: Lens' CreateEnvironment (Maybe Text)
ceDescription = lens _ceDescription (\s a -> s {_ceDescription = a})

-- | Specifies the tier to use in creating this environment. The environment tier that you choose determines whether Elastic Beanstalk provisions resources to support a web application that handles HTTP(S) requests or a web application that handles background-processing tasks.
ceTier :: Lens' CreateEnvironment (Maybe EnvironmentTier)
ceTier = lens _ceTier (\s a -> s {_ceTier = a})

-- | The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream services during this call and during subsequent calls acting on this environment. To specify an operations role, you must have the @iam:PassRole@ permission for the role. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles> in the /AWS Elastic Beanstalk Developer Guide/ .
ceOperationsRole :: Lens' CreateEnvironment (Maybe Text)
ceOperationsRole = lens _ceOperationsRole (\s a -> s {_ceOperationsRole = a})

-- | The name of the application that is associated with this environment.
ceApplicationName :: Lens' CreateEnvironment Text
ceApplicationName = lens _ceApplicationName (\s a -> s {_ceApplicationName = a})

instance AWSRequest CreateEnvironment where
  type Rs CreateEnvironment = EnvironmentDescription
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "CreateEnvironmentResult"
      (\s h x -> parseXML x)

instance Hashable CreateEnvironment

instance NFData CreateEnvironment

instance ToHeaders CreateEnvironment where
  toHeaders = const mempty

instance ToPath CreateEnvironment where
  toPath = const "/"

instance ToQuery CreateEnvironment where
  toQuery CreateEnvironment' {..} =
    mconcat
      [ "Action" =: ("CreateEnvironment" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "TemplateName" =: _ceTemplateName,
        "GroupName" =: _ceGroupName,
        "SolutionStackName" =: _ceSolutionStackName,
        "OptionsToRemove"
          =: toQuery
            (toQueryList "member" <$> _ceOptionsToRemove),
        "EnvironmentName" =: _ceEnvironmentName,
        "PlatformArn" =: _cePlatformARN,
        "VersionLabel" =: _ceVersionLabel,
        "CNAMEPrefix" =: _ceCNAMEPrefix,
        "Tags" =: toQuery (toQueryList "member" <$> _ceTags),
        "OptionSettings"
          =: toQuery (toQueryList "member" <$> _ceOptionSettings),
        "Description" =: _ceDescription,
        "Tier" =: _ceTier,
        "OperationsRole" =: _ceOperationsRole,
        "ApplicationName" =: _ceApplicationName
      ]
