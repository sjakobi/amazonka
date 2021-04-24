{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.Stage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.Stage where

import Network.AWS.APIGateway.Types.AccessLogSettings
import Network.AWS.APIGateway.Types.CacheClusterSize
import Network.AWS.APIGateway.Types.CacheClusterStatus
import Network.AWS.APIGateway.Types.CanarySettings
import Network.AWS.APIGateway.Types.MethodSetting
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a unique identifier for a version of a deployed 'RestApi' that is callable by users.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html Deploy an API>
--
-- /See:/ 'stage' smart constructor.
data Stage = Stage'
  { _sDeploymentId :: !(Maybe Text),
    _sCreatedDate :: !(Maybe POSIX),
    _sTracingEnabled :: !(Maybe Bool),
    _sWebACLARN :: !(Maybe Text),
    _sLastUpdatedDate :: !(Maybe POSIX),
    _sCacheClusterEnabled :: !(Maybe Bool),
    _sStageName :: !(Maybe Text),
    _sDocumentationVersion :: !(Maybe Text),
    _sVariables :: !(Maybe (Map Text Text)),
    _sAccessLogSettings :: !(Maybe AccessLogSettings),
    _sTags :: !(Maybe (Map Text Text)),
    _sClientCertificateId :: !(Maybe Text),
    _sDescription :: !(Maybe Text),
    _sCanarySettings :: !(Maybe CanarySettings),
    _sCacheClusterSize :: !(Maybe CacheClusterSize),
    _sMethodSettings ::
      !(Maybe (Map Text MethodSetting)),
    _sCacheClusterStatus :: !(Maybe CacheClusterStatus)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Stage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDeploymentId' - The identifier of the 'Deployment' that the stage points to.
--
-- * 'sCreatedDate' - The timestamp when the stage was created.
--
-- * 'sTracingEnabled' - Specifies whether active tracing with X-ray is enabled for the 'Stage' .
--
-- * 'sWebACLARN' - The ARN of the WebAcl associated with the 'Stage' .
--
-- * 'sLastUpdatedDate' - The timestamp when the stage last updated.
--
-- * 'sCacheClusterEnabled' - Specifies whether a cache cluster is enabled for the stage.
--
-- * 'sStageName' - The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
--
-- * 'sDocumentationVersion' - The version of the associated API documentation.
--
-- * 'sVariables' - A map that defines the stage variables for a 'Stage' resource. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
--
-- * 'sAccessLogSettings' - Settings for logging access in this stage.
--
-- * 'sTags' - The collection of tags. Each tag element is associated with a given resource.
--
-- * 'sClientCertificateId' - The identifier of a client certificate for an API stage.
--
-- * 'sDescription' - The stage's description.
--
-- * 'sCanarySettings' - Settings for the canary deployment in this stage.
--
-- * 'sCacheClusterSize' - The size of the cache cluster for the stage, if enabled.
--
-- * 'sMethodSettings' - A map that defines the method settings for a 'Stage' resource. Keys (designated as @/{method_setting_key@ below) are method paths defined as @{resource_path}/{http_method}@ for an individual method override, or @/\*/\*@ for overriding all methods in the stage.
--
-- * 'sCacheClusterStatus' - The status of the cache cluster for the stage, if enabled.
stage ::
  Stage
stage =
  Stage'
    { _sDeploymentId = Nothing,
      _sCreatedDate = Nothing,
      _sTracingEnabled = Nothing,
      _sWebACLARN = Nothing,
      _sLastUpdatedDate = Nothing,
      _sCacheClusterEnabled = Nothing,
      _sStageName = Nothing,
      _sDocumentationVersion = Nothing,
      _sVariables = Nothing,
      _sAccessLogSettings = Nothing,
      _sTags = Nothing,
      _sClientCertificateId = Nothing,
      _sDescription = Nothing,
      _sCanarySettings = Nothing,
      _sCacheClusterSize = Nothing,
      _sMethodSettings = Nothing,
      _sCacheClusterStatus = Nothing
    }

-- | The identifier of the 'Deployment' that the stage points to.
sDeploymentId :: Lens' Stage (Maybe Text)
sDeploymentId = lens _sDeploymentId (\s a -> s {_sDeploymentId = a})

-- | The timestamp when the stage was created.
sCreatedDate :: Lens' Stage (Maybe UTCTime)
sCreatedDate = lens _sCreatedDate (\s a -> s {_sCreatedDate = a}) . mapping _Time

-- | Specifies whether active tracing with X-ray is enabled for the 'Stage' .
sTracingEnabled :: Lens' Stage (Maybe Bool)
sTracingEnabled = lens _sTracingEnabled (\s a -> s {_sTracingEnabled = a})

-- | The ARN of the WebAcl associated with the 'Stage' .
sWebACLARN :: Lens' Stage (Maybe Text)
sWebACLARN = lens _sWebACLARN (\s a -> s {_sWebACLARN = a})

-- | The timestamp when the stage last updated.
sLastUpdatedDate :: Lens' Stage (Maybe UTCTime)
sLastUpdatedDate = lens _sLastUpdatedDate (\s a -> s {_sLastUpdatedDate = a}) . mapping _Time

-- | Specifies whether a cache cluster is enabled for the stage.
sCacheClusterEnabled :: Lens' Stage (Maybe Bool)
sCacheClusterEnabled = lens _sCacheClusterEnabled (\s a -> s {_sCacheClusterEnabled = a})

-- | The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
sStageName :: Lens' Stage (Maybe Text)
sStageName = lens _sStageName (\s a -> s {_sStageName = a})

-- | The version of the associated API documentation.
sDocumentationVersion :: Lens' Stage (Maybe Text)
sDocumentationVersion = lens _sDocumentationVersion (\s a -> s {_sDocumentationVersion = a})

-- | A map that defines the stage variables for a 'Stage' resource. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
sVariables :: Lens' Stage (HashMap Text Text)
sVariables = lens _sVariables (\s a -> s {_sVariables = a}) . _Default . _Map

-- | Settings for logging access in this stage.
sAccessLogSettings :: Lens' Stage (Maybe AccessLogSettings)
sAccessLogSettings = lens _sAccessLogSettings (\s a -> s {_sAccessLogSettings = a})

-- | The collection of tags. Each tag element is associated with a given resource.
sTags :: Lens' Stage (HashMap Text Text)
sTags = lens _sTags (\s a -> s {_sTags = a}) . _Default . _Map

-- | The identifier of a client certificate for an API stage.
sClientCertificateId :: Lens' Stage (Maybe Text)
sClientCertificateId = lens _sClientCertificateId (\s a -> s {_sClientCertificateId = a})

-- | The stage's description.
sDescription :: Lens' Stage (Maybe Text)
sDescription = lens _sDescription (\s a -> s {_sDescription = a})

-- | Settings for the canary deployment in this stage.
sCanarySettings :: Lens' Stage (Maybe CanarySettings)
sCanarySettings = lens _sCanarySettings (\s a -> s {_sCanarySettings = a})

-- | The size of the cache cluster for the stage, if enabled.
sCacheClusterSize :: Lens' Stage (Maybe CacheClusterSize)
sCacheClusterSize = lens _sCacheClusterSize (\s a -> s {_sCacheClusterSize = a})

-- | A map that defines the method settings for a 'Stage' resource. Keys (designated as @/{method_setting_key@ below) are method paths defined as @{resource_path}/{http_method}@ for an individual method override, or @/\*/\*@ for overriding all methods in the stage.
sMethodSettings :: Lens' Stage (HashMap Text MethodSetting)
sMethodSettings = lens _sMethodSettings (\s a -> s {_sMethodSettings = a}) . _Default . _Map

-- | The status of the cache cluster for the stage, if enabled.
sCacheClusterStatus :: Lens' Stage (Maybe CacheClusterStatus)
sCacheClusterStatus = lens _sCacheClusterStatus (\s a -> s {_sCacheClusterStatus = a})

instance FromJSON Stage where
  parseJSON =
    withObject
      "Stage"
      ( \x ->
          Stage'
            <$> (x .:? "deploymentId")
            <*> (x .:? "createdDate")
            <*> (x .:? "tracingEnabled")
            <*> (x .:? "webAclArn")
            <*> (x .:? "lastUpdatedDate")
            <*> (x .:? "cacheClusterEnabled")
            <*> (x .:? "stageName")
            <*> (x .:? "documentationVersion")
            <*> (x .:? "variables" .!= mempty)
            <*> (x .:? "accessLogSettings")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "clientCertificateId")
            <*> (x .:? "description")
            <*> (x .:? "canarySettings")
            <*> (x .:? "cacheClusterSize")
            <*> (x .:? "methodSettings" .!= mempty)
            <*> (x .:? "cacheClusterStatus")
      )

instance Hashable Stage

instance NFData Stage
