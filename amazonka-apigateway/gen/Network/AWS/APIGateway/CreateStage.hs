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
-- Module      : Network.AWS.APIGateway.CreateStage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new 'Stage' resource that references a pre-existing 'Deployment' for the API.
module Network.AWS.APIGateway.CreateStage
  ( -- * Creating a Request
    createStage,
    CreateStage,

    -- * Request Lenses
    cTracingEnabled,
    cCacheClusterEnabled,
    cDocumentationVersion,
    cVariables,
    cTags,
    cDescription,
    cCanarySettings,
    cCacheClusterSize,
    cRestAPIId,
    cStageName,
    cDeploymentId,

    -- * Destructuring the Response
    stage,
    Stage,

    -- * Response Lenses
    sDeploymentId,
    sCreatedDate,
    sTracingEnabled,
    sWebACLARN,
    sLastUpdatedDate,
    sCacheClusterEnabled,
    sStageName,
    sDocumentationVersion,
    sVariables,
    sAccessLogSettings,
    sTags,
    sClientCertificateId,
    sDescription,
    sCanarySettings,
    sCacheClusterSize,
    sMethodSettings,
    sCacheClusterStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Requests API Gateway to create a 'Stage' resource.
--
--
--
-- /See:/ 'createStage' smart constructor.
data CreateStage = CreateStage'
  { _cTracingEnabled ::
      !(Maybe Bool),
    _cCacheClusterEnabled :: !(Maybe Bool),
    _cDocumentationVersion :: !(Maybe Text),
    _cVariables :: !(Maybe (Map Text Text)),
    _cTags :: !(Maybe (Map Text Text)),
    _cDescription :: !(Maybe Text),
    _cCanarySettings :: !(Maybe CanarySettings),
    _cCacheClusterSize :: !(Maybe CacheClusterSize),
    _cRestAPIId :: !Text,
    _cStageName :: !Text,
    _cDeploymentId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTracingEnabled' - Specifies whether active tracing with X-ray is enabled for the 'Stage' .
--
-- * 'cCacheClusterEnabled' - Whether cache clustering is enabled for the stage.
--
-- * 'cDocumentationVersion' - The version of the associated API documentation.
--
-- * 'cVariables' - A map that defines the stage variables for the new 'Stage' resource. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
--
-- * 'cTags' - The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
--
-- * 'cDescription' - The description of the 'Stage' resource.
--
-- * 'cCanarySettings' - The canary deployment settings of this stage.
--
-- * 'cCacheClusterSize' - The stage's cache cluster size.
--
-- * 'cRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'cStageName' - [Required] The name for the 'Stage' resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
--
-- * 'cDeploymentId' - [Required] The identifier of the 'Deployment' resource for the 'Stage' resource.
createStage ::
  -- | 'cRestAPIId'
  Text ->
  -- | 'cStageName'
  Text ->
  -- | 'cDeploymentId'
  Text ->
  CreateStage
createStage pRestAPIId_ pStageName_ pDeploymentId_ =
  CreateStage'
    { _cTracingEnabled = Nothing,
      _cCacheClusterEnabled = Nothing,
      _cDocumentationVersion = Nothing,
      _cVariables = Nothing,
      _cTags = Nothing,
      _cDescription = Nothing,
      _cCanarySettings = Nothing,
      _cCacheClusterSize = Nothing,
      _cRestAPIId = pRestAPIId_,
      _cStageName = pStageName_,
      _cDeploymentId = pDeploymentId_
    }

-- | Specifies whether active tracing with X-ray is enabled for the 'Stage' .
cTracingEnabled :: Lens' CreateStage (Maybe Bool)
cTracingEnabled = lens _cTracingEnabled (\s a -> s {_cTracingEnabled = a})

-- | Whether cache clustering is enabled for the stage.
cCacheClusterEnabled :: Lens' CreateStage (Maybe Bool)
cCacheClusterEnabled = lens _cCacheClusterEnabled (\s a -> s {_cCacheClusterEnabled = a})

-- | The version of the associated API documentation.
cDocumentationVersion :: Lens' CreateStage (Maybe Text)
cDocumentationVersion = lens _cDocumentationVersion (\s a -> s {_cDocumentationVersion = a})

-- | A map that defines the stage variables for the new 'Stage' resource. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
cVariables :: Lens' CreateStage (HashMap Text Text)
cVariables = lens _cVariables (\s a -> s {_cVariables = a}) . _Default . _Map

-- | The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
cTags :: Lens' CreateStage (HashMap Text Text)
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Map

-- | The description of the 'Stage' resource.
cDescription :: Lens' CreateStage (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

-- | The canary deployment settings of this stage.
cCanarySettings :: Lens' CreateStage (Maybe CanarySettings)
cCanarySettings = lens _cCanarySettings (\s a -> s {_cCanarySettings = a})

-- | The stage's cache cluster size.
cCacheClusterSize :: Lens' CreateStage (Maybe CacheClusterSize)
cCacheClusterSize = lens _cCacheClusterSize (\s a -> s {_cCacheClusterSize = a})

-- | [Required] The string identifier of the associated 'RestApi' .
cRestAPIId :: Lens' CreateStage Text
cRestAPIId = lens _cRestAPIId (\s a -> s {_cRestAPIId = a})

-- | [Required] The name for the 'Stage' resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
cStageName :: Lens' CreateStage Text
cStageName = lens _cStageName (\s a -> s {_cStageName = a})

-- | [Required] The identifier of the 'Deployment' resource for the 'Stage' resource.
cDeploymentId :: Lens' CreateStage Text
cDeploymentId = lens _cDeploymentId (\s a -> s {_cDeploymentId = a})

instance AWSRequest CreateStage where
  type Rs CreateStage = Stage
  request = postJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable CreateStage

instance NFData CreateStage

instance ToHeaders CreateStage where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON CreateStage where
  toJSON CreateStage' {..} =
    object
      ( catMaybes
          [ ("tracingEnabled" .=) <$> _cTracingEnabled,
            ("cacheClusterEnabled" .=) <$> _cCacheClusterEnabled,
            ("documentationVersion" .=)
              <$> _cDocumentationVersion,
            ("variables" .=) <$> _cVariables,
            ("tags" .=) <$> _cTags,
            ("description" .=) <$> _cDescription,
            ("canarySettings" .=) <$> _cCanarySettings,
            ("cacheClusterSize" .=) <$> _cCacheClusterSize,
            Just ("stageName" .= _cStageName),
            Just ("deploymentId" .= _cDeploymentId)
          ]
      )

instance ToPath CreateStage where
  toPath CreateStage' {..} =
    mconcat ["/restapis/", toBS _cRestAPIId, "/stages"]

instance ToQuery CreateStage where
  toQuery = const mempty
