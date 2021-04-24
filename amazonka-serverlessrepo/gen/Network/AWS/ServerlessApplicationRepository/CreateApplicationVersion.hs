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
-- Module      : Network.AWS.ServerlessApplicationRepository.CreateApplicationVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application version.
module Network.AWS.ServerlessApplicationRepository.CreateApplicationVersion
  ( -- * Creating a Request
    createApplicationVersion,
    CreateApplicationVersion,

    -- * Request Lenses
    cavTemplateURL,
    cavSourceCodeArchiveURL,
    cavSourceCodeURL,
    cavTemplateBody,
    cavApplicationId,
    cavSemanticVersion,

    -- * Destructuring the Response
    createApplicationVersionResponse,
    CreateApplicationVersionResponse,

    -- * Response Lenses
    cavrrsParameterDefinitions,
    cavrrsApplicationId,
    cavrrsRequiredCapabilities,
    cavrrsResourcesSupported,
    cavrrsCreationTime,
    cavrrsTemplateURL,
    cavrrsSourceCodeArchiveURL,
    cavrrsSourceCodeURL,
    cavrrsSemanticVersion,
    cavrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'createApplicationVersion' smart constructor.
data CreateApplicationVersion = CreateApplicationVersion'
  { _cavTemplateURL ::
      !(Maybe Text),
    _cavSourceCodeArchiveURL ::
      !(Maybe Text),
    _cavSourceCodeURL ::
      !(Maybe Text),
    _cavTemplateBody ::
      !(Maybe Text),
    _cavApplicationId ::
      !Text,
    _cavSemanticVersion ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateApplicationVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cavTemplateURL' - A link to the packaged AWS SAM template of your application.
--
-- * 'cavSourceCodeArchiveURL' - A link to the S3 object that contains the ZIP archive of the source code for this version of your application. Maximum size 50 MB
--
-- * 'cavSourceCodeURL' - A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.
--
-- * 'cavTemplateBody' - The raw packaged AWS SAM template of your application.
--
-- * 'cavApplicationId' - The Amazon Resource Name (ARN) of the application.
--
-- * 'cavSemanticVersion' - The semantic version of the new version.
createApplicationVersion ::
  -- | 'cavApplicationId'
  Text ->
  -- | 'cavSemanticVersion'
  Text ->
  CreateApplicationVersion
createApplicationVersion
  pApplicationId_
  pSemanticVersion_ =
    CreateApplicationVersion'
      { _cavTemplateURL =
          Nothing,
        _cavSourceCodeArchiveURL = Nothing,
        _cavSourceCodeURL = Nothing,
        _cavTemplateBody = Nothing,
        _cavApplicationId = pApplicationId_,
        _cavSemanticVersion = pSemanticVersion_
      }

-- | A link to the packaged AWS SAM template of your application.
cavTemplateURL :: Lens' CreateApplicationVersion (Maybe Text)
cavTemplateURL = lens _cavTemplateURL (\s a -> s {_cavTemplateURL = a})

-- | A link to the S3 object that contains the ZIP archive of the source code for this version of your application. Maximum size 50 MB
cavSourceCodeArchiveURL :: Lens' CreateApplicationVersion (Maybe Text)
cavSourceCodeArchiveURL = lens _cavSourceCodeArchiveURL (\s a -> s {_cavSourceCodeArchiveURL = a})

-- | A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.
cavSourceCodeURL :: Lens' CreateApplicationVersion (Maybe Text)
cavSourceCodeURL = lens _cavSourceCodeURL (\s a -> s {_cavSourceCodeURL = a})

-- | The raw packaged AWS SAM template of your application.
cavTemplateBody :: Lens' CreateApplicationVersion (Maybe Text)
cavTemplateBody = lens _cavTemplateBody (\s a -> s {_cavTemplateBody = a})

-- | The Amazon Resource Name (ARN) of the application.
cavApplicationId :: Lens' CreateApplicationVersion Text
cavApplicationId = lens _cavApplicationId (\s a -> s {_cavApplicationId = a})

-- | The semantic version of the new version.
cavSemanticVersion :: Lens' CreateApplicationVersion Text
cavSemanticVersion = lens _cavSemanticVersion (\s a -> s {_cavSemanticVersion = a})

instance AWSRequest CreateApplicationVersion where
  type
    Rs CreateApplicationVersion =
      CreateApplicationVersionResponse
  request = putJSON serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          CreateApplicationVersionResponse'
            <$> (x .?> "parameterDefinitions" .!@ mempty)
            <*> (x .?> "applicationId")
            <*> (x .?> "requiredCapabilities" .!@ mempty)
            <*> (x .?> "resourcesSupported")
            <*> (x .?> "creationTime")
            <*> (x .?> "templateUrl")
            <*> (x .?> "sourceCodeArchiveUrl")
            <*> (x .?> "sourceCodeUrl")
            <*> (x .?> "semanticVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateApplicationVersion

instance NFData CreateApplicationVersion

instance ToHeaders CreateApplicationVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateApplicationVersion where
  toJSON CreateApplicationVersion' {..} =
    object
      ( catMaybes
          [ ("templateUrl" .=) <$> _cavTemplateURL,
            ("sourceCodeArchiveUrl" .=)
              <$> _cavSourceCodeArchiveURL,
            ("sourceCodeUrl" .=) <$> _cavSourceCodeURL,
            ("templateBody" .=) <$> _cavTemplateBody
          ]
      )

instance ToPath CreateApplicationVersion where
  toPath CreateApplicationVersion' {..} =
    mconcat
      [ "/applications/",
        toBS _cavApplicationId,
        "/versions/",
        toBS _cavSemanticVersion
      ]

instance ToQuery CreateApplicationVersion where
  toQuery = const mempty

-- | /See:/ 'createApplicationVersionResponse' smart constructor.
data CreateApplicationVersionResponse = CreateApplicationVersionResponse'
  { _cavrrsParameterDefinitions ::
      !( Maybe
           [ParameterDefinition]
       ),
    _cavrrsApplicationId ::
      !( Maybe
           Text
       ),
    _cavrrsRequiredCapabilities ::
      !( Maybe
           [Capability]
       ),
    _cavrrsResourcesSupported ::
      !( Maybe
           Bool
       ),
    _cavrrsCreationTime ::
      !( Maybe
           Text
       ),
    _cavrrsTemplateURL ::
      !( Maybe
           Text
       ),
    _cavrrsSourceCodeArchiveURL ::
      !( Maybe
           Text
       ),
    _cavrrsSourceCodeURL ::
      !( Maybe
           Text
       ),
    _cavrrsSemanticVersion ::
      !( Maybe
           Text
       ),
    _cavrrsResponseStatus ::
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

-- | Creates a value of 'CreateApplicationVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cavrrsParameterDefinitions' - An array of parameter types supported by the application.
--
-- * 'cavrrsApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'cavrrsRequiredCapabilities' - A list of values that you must specify before you can deploy certain applications.  Some applications might include resources that can affect permissions in your AWS  account, for example, by creating new AWS Identity and Access Management (IAM) users.  For those applications, you must explicitly acknowledge their capabilities by  specifying this parameter. The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,  CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND. The following resources require you to specify CAPABILITY_IAM or  CAPABILITY_NAMED_IAM:  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html AWS::IAM::Policy> , and  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role> .  If the application contains IAM resources, you can specify either CAPABILITY_IAM  or CAPABILITY_NAMED_IAM. If the application contains IAM resources  with custom names, you must specify CAPABILITY_NAMED_IAM. The following resources require you to specify CAPABILITY_RESOURCE_POLICY:  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html AWS::Lambda::Permission> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html AWS::IAM:Policy> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html AWS::ApplicationAutoScaling::ScalingPolicy> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html AWS::S3::BucketPolicy> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html AWS::SQS::QueuePolicy> , and  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html AWS::SNS::TopicPolicy> . Applications that contain one or more nested applications require you to specify  CAPABILITY_AUTO_EXPAND. If your application template contains any of the above resources, we recommend that you review  all permissions associated with the application before deploying. If you don't specify  this parameter for an application that requires capabilities, the call will fail.
--
-- * 'cavrrsResourcesSupported' - Whether all of the AWS resources contained in this application are supported in the region  in which it is being retrieved.
--
-- * 'cavrrsCreationTime' - The date and time this resource was created.
--
-- * 'cavrrsTemplateURL' - A link to the packaged AWS SAM template of your application.
--
-- * 'cavrrsSourceCodeArchiveURL' - A link to the S3 object that contains the ZIP archive of the source code for this version of your application. Maximum size 50 MB
--
-- * 'cavrrsSourceCodeURL' - A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.
--
-- * 'cavrrsSemanticVersion' - The semantic version of the application: <https://semver.org/ https://semver.org/>
--
-- * 'cavrrsResponseStatus' - -- | The response status code.
createApplicationVersionResponse ::
  -- | 'cavrrsResponseStatus'
  Int ->
  CreateApplicationVersionResponse
createApplicationVersionResponse pResponseStatus_ =
  CreateApplicationVersionResponse'
    { _cavrrsParameterDefinitions =
        Nothing,
      _cavrrsApplicationId = Nothing,
      _cavrrsRequiredCapabilities = Nothing,
      _cavrrsResourcesSupported = Nothing,
      _cavrrsCreationTime = Nothing,
      _cavrrsTemplateURL = Nothing,
      _cavrrsSourceCodeArchiveURL = Nothing,
      _cavrrsSourceCodeURL = Nothing,
      _cavrrsSemanticVersion = Nothing,
      _cavrrsResponseStatus = pResponseStatus_
    }

-- | An array of parameter types supported by the application.
cavrrsParameterDefinitions :: Lens' CreateApplicationVersionResponse [ParameterDefinition]
cavrrsParameterDefinitions = lens _cavrrsParameterDefinitions (\s a -> s {_cavrrsParameterDefinitions = a}) . _Default . _Coerce

-- | The application Amazon Resource Name (ARN).
cavrrsApplicationId :: Lens' CreateApplicationVersionResponse (Maybe Text)
cavrrsApplicationId = lens _cavrrsApplicationId (\s a -> s {_cavrrsApplicationId = a})

-- | A list of values that you must specify before you can deploy certain applications.  Some applications might include resources that can affect permissions in your AWS  account, for example, by creating new AWS Identity and Access Management (IAM) users.  For those applications, you must explicitly acknowledge their capabilities by  specifying this parameter. The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,  CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND. The following resources require you to specify CAPABILITY_IAM or  CAPABILITY_NAMED_IAM:  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html AWS::IAM::Group> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html AWS::IAM::InstanceProfile> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html AWS::IAM::Policy> , and  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html AWS::IAM::Role> .  If the application contains IAM resources, you can specify either CAPABILITY_IAM  or CAPABILITY_NAMED_IAM. If the application contains IAM resources  with custom names, you must specify CAPABILITY_NAMED_IAM. The following resources require you to specify CAPABILITY_RESOURCE_POLICY:  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html AWS::Lambda::Permission> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html AWS::IAM:Policy> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html AWS::ApplicationAutoScaling::ScalingPolicy> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html AWS::S3::BucketPolicy> ,  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html AWS::SQS::QueuePolicy> , and  <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html AWS::SNS::TopicPolicy> . Applications that contain one or more nested applications require you to specify  CAPABILITY_AUTO_EXPAND. If your application template contains any of the above resources, we recommend that you review  all permissions associated with the application before deploying. If you don't specify  this parameter for an application that requires capabilities, the call will fail.
cavrrsRequiredCapabilities :: Lens' CreateApplicationVersionResponse [Capability]
cavrrsRequiredCapabilities = lens _cavrrsRequiredCapabilities (\s a -> s {_cavrrsRequiredCapabilities = a}) . _Default . _Coerce

-- | Whether all of the AWS resources contained in this application are supported in the region  in which it is being retrieved.
cavrrsResourcesSupported :: Lens' CreateApplicationVersionResponse (Maybe Bool)
cavrrsResourcesSupported = lens _cavrrsResourcesSupported (\s a -> s {_cavrrsResourcesSupported = a})

-- | The date and time this resource was created.
cavrrsCreationTime :: Lens' CreateApplicationVersionResponse (Maybe Text)
cavrrsCreationTime = lens _cavrrsCreationTime (\s a -> s {_cavrrsCreationTime = a})

-- | A link to the packaged AWS SAM template of your application.
cavrrsTemplateURL :: Lens' CreateApplicationVersionResponse (Maybe Text)
cavrrsTemplateURL = lens _cavrrsTemplateURL (\s a -> s {_cavrrsTemplateURL = a})

-- | A link to the S3 object that contains the ZIP archive of the source code for this version of your application. Maximum size 50 MB
cavrrsSourceCodeArchiveURL :: Lens' CreateApplicationVersionResponse (Maybe Text)
cavrrsSourceCodeArchiveURL = lens _cavrrsSourceCodeArchiveURL (\s a -> s {_cavrrsSourceCodeArchiveURL = a})

-- | A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.
cavrrsSourceCodeURL :: Lens' CreateApplicationVersionResponse (Maybe Text)
cavrrsSourceCodeURL = lens _cavrrsSourceCodeURL (\s a -> s {_cavrrsSourceCodeURL = a})

-- | The semantic version of the application: <https://semver.org/ https://semver.org/>
cavrrsSemanticVersion :: Lens' CreateApplicationVersionResponse (Maybe Text)
cavrrsSemanticVersion = lens _cavrrsSemanticVersion (\s a -> s {_cavrrsSemanticVersion = a})

-- | -- | The response status code.
cavrrsResponseStatus :: Lens' CreateApplicationVersionResponse Int
cavrrsResponseStatus = lens _cavrrsResponseStatus (\s a -> s {_cavrrsResponseStatus = a})

instance NFData CreateApplicationVersionResponse
