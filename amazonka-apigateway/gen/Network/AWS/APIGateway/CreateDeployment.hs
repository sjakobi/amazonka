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
-- Module      : Network.AWS.APIGateway.CreateDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 'Deployment' resource, which makes a specified 'RestApi' callable over the internet.
module Network.AWS.APIGateway.CreateDeployment
  ( -- * Creating a Request
    createDeployment,
    CreateDeployment,

    -- * Request Lenses
    cdTracingEnabled,
    cdCacheClusterEnabled,
    cdStageName,
    cdVariables,
    cdStageDescription,
    cdDescription,
    cdCanarySettings,
    cdCacheClusterSize,
    cdRestAPIId,

    -- * Destructuring the Response
    deployment,
    Deployment,

    -- * Response Lenses
    dCreatedDate,
    dId,
    dApiSummary,
    dDescription,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Requests API Gateway to create a 'Deployment' resource.
--
--
--
-- /See:/ 'createDeployment' smart constructor.
data CreateDeployment = CreateDeployment'
  { _cdTracingEnabled ::
      !(Maybe Bool),
    _cdCacheClusterEnabled ::
      !(Maybe Bool),
    _cdStageName :: !(Maybe Text),
    _cdVariables ::
      !(Maybe (Map Text Text)),
    _cdStageDescription :: !(Maybe Text),
    _cdDescription :: !(Maybe Text),
    _cdCanarySettings ::
      !(Maybe DeploymentCanarySettings),
    _cdCacheClusterSize ::
      !(Maybe CacheClusterSize),
    _cdRestAPIId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDeployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdTracingEnabled' - Specifies whether active tracing with X-ray is enabled for the 'Stage' .
--
-- * 'cdCacheClusterEnabled' - Enables a cache cluster for the 'Stage' resource specified in the input.
--
-- * 'cdStageName' - The name of the 'Stage' resource for the 'Deployment' resource to create.
--
-- * 'cdVariables' - A map that defines the stage variables for the 'Stage' resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
--
-- * 'cdStageDescription' - The description of the 'Stage' resource for the 'Deployment' resource to create.
--
-- * 'cdDescription' - The description for the 'Deployment' resource to create.
--
-- * 'cdCanarySettings' - The input configuration for the canary deployment when the deployment is a canary release deployment.
--
-- * 'cdCacheClusterSize' - Specifies the cache cluster size for the 'Stage' resource specified in the input, if a cache cluster is enabled.
--
-- * 'cdRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
createDeployment ::
  -- | 'cdRestAPIId'
  Text ->
  CreateDeployment
createDeployment pRestAPIId_ =
  CreateDeployment'
    { _cdTracingEnabled = Nothing,
      _cdCacheClusterEnabled = Nothing,
      _cdStageName = Nothing,
      _cdVariables = Nothing,
      _cdStageDescription = Nothing,
      _cdDescription = Nothing,
      _cdCanarySettings = Nothing,
      _cdCacheClusterSize = Nothing,
      _cdRestAPIId = pRestAPIId_
    }

-- | Specifies whether active tracing with X-ray is enabled for the 'Stage' .
cdTracingEnabled :: Lens' CreateDeployment (Maybe Bool)
cdTracingEnabled = lens _cdTracingEnabled (\s a -> s {_cdTracingEnabled = a})

-- | Enables a cache cluster for the 'Stage' resource specified in the input.
cdCacheClusterEnabled :: Lens' CreateDeployment (Maybe Bool)
cdCacheClusterEnabled = lens _cdCacheClusterEnabled (\s a -> s {_cdCacheClusterEnabled = a})

-- | The name of the 'Stage' resource for the 'Deployment' resource to create.
cdStageName :: Lens' CreateDeployment (Maybe Text)
cdStageName = lens _cdStageName (\s a -> s {_cdStageName = a})

-- | A map that defines the stage variables for the 'Stage' resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match @[A-Za-z0-9-._~:/?#&=,]+@ .
cdVariables :: Lens' CreateDeployment (HashMap Text Text)
cdVariables = lens _cdVariables (\s a -> s {_cdVariables = a}) . _Default . _Map

-- | The description of the 'Stage' resource for the 'Deployment' resource to create.
cdStageDescription :: Lens' CreateDeployment (Maybe Text)
cdStageDescription = lens _cdStageDescription (\s a -> s {_cdStageDescription = a})

-- | The description for the 'Deployment' resource to create.
cdDescription :: Lens' CreateDeployment (Maybe Text)
cdDescription = lens _cdDescription (\s a -> s {_cdDescription = a})

-- | The input configuration for the canary deployment when the deployment is a canary release deployment.
cdCanarySettings :: Lens' CreateDeployment (Maybe DeploymentCanarySettings)
cdCanarySettings = lens _cdCanarySettings (\s a -> s {_cdCanarySettings = a})

-- | Specifies the cache cluster size for the 'Stage' resource specified in the input, if a cache cluster is enabled.
cdCacheClusterSize :: Lens' CreateDeployment (Maybe CacheClusterSize)
cdCacheClusterSize = lens _cdCacheClusterSize (\s a -> s {_cdCacheClusterSize = a})

-- | [Required] The string identifier of the associated 'RestApi' .
cdRestAPIId :: Lens' CreateDeployment Text
cdRestAPIId = lens _cdRestAPIId (\s a -> s {_cdRestAPIId = a})

instance AWSRequest CreateDeployment where
  type Rs CreateDeployment = Deployment
  request = postJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable CreateDeployment

instance NFData CreateDeployment

instance ToHeaders CreateDeployment where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON CreateDeployment where
  toJSON CreateDeployment' {..} =
    object
      ( catMaybes
          [ ("tracingEnabled" .=) <$> _cdTracingEnabled,
            ("cacheClusterEnabled" .=)
              <$> _cdCacheClusterEnabled,
            ("stageName" .=) <$> _cdStageName,
            ("variables" .=) <$> _cdVariables,
            ("stageDescription" .=) <$> _cdStageDescription,
            ("description" .=) <$> _cdDescription,
            ("canarySettings" .=) <$> _cdCanarySettings,
            ("cacheClusterSize" .=) <$> _cdCacheClusterSize
          ]
      )

instance ToPath CreateDeployment where
  toPath CreateDeployment' {..} =
    mconcat
      ["/restapis/", toBS _cdRestAPIId, "/deployments"]

instance ToQuery CreateDeployment where
  toQuery = const mempty
