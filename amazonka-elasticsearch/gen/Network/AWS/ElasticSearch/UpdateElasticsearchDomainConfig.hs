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
-- Module      : Network.AWS.ElasticSearch.UpdateElasticsearchDomainConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances.
module Network.AWS.ElasticSearch.UpdateElasticsearchDomainConfig
  ( -- * Creating a Request
    updateElasticsearchDomainConfig,
    UpdateElasticsearchDomainConfig,

    -- * Request Lenses
    uedcEBSOptions,
    uedcSnapshotOptions,
    uedcElasticsearchClusterConfig,
    uedcDomainEndpointOptions,
    uedcVPCOptions,
    uedcAutoTuneOptions,
    uedcAccessPolicies,
    uedcEncryptionAtRestOptions,
    uedcCognitoOptions,
    uedcNodeToNodeEncryptionOptions,
    uedcAdvancedOptions,
    uedcAdvancedSecurityOptions,
    uedcLogPublishingOptions,
    uedcDomainName,

    -- * Destructuring the Response
    updateElasticsearchDomainConfigResponse,
    UpdateElasticsearchDomainConfigResponse,

    -- * Response Lenses
    uedcrrsResponseStatus,
    uedcrrsDomainConfig,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'UpdateElasticsearchDomain' @ operation. Specifies the type and number of instances in the domain cluster.
--
--
--
-- /See:/ 'updateElasticsearchDomainConfig' smart constructor.
data UpdateElasticsearchDomainConfig = UpdateElasticsearchDomainConfig'
  { _uedcEBSOptions ::
      !( Maybe
           EBSOptions
       ),
    _uedcSnapshotOptions ::
      !( Maybe
           SnapshotOptions
       ),
    _uedcElasticsearchClusterConfig ::
      !( Maybe
           ElasticsearchClusterConfig
       ),
    _uedcDomainEndpointOptions ::
      !( Maybe
           DomainEndpointOptions
       ),
    _uedcVPCOptions ::
      !( Maybe
           VPCOptions
       ),
    _uedcAutoTuneOptions ::
      !( Maybe
           AutoTuneOptions
       ),
    _uedcAccessPolicies ::
      !( Maybe
           Text
       ),
    _uedcEncryptionAtRestOptions ::
      !( Maybe
           EncryptionAtRestOptions
       ),
    _uedcCognitoOptions ::
      !( Maybe
           CognitoOptions
       ),
    _uedcNodeToNodeEncryptionOptions ::
      !( Maybe
           NodeToNodeEncryptionOptions
       ),
    _uedcAdvancedOptions ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _uedcAdvancedSecurityOptions ::
      !( Maybe
           AdvancedSecurityOptionsInput
       ),
    _uedcLogPublishingOptions ::
      !( Maybe
           ( Map
               LogType
               LogPublishingOption
           )
       ),
    _uedcDomainName ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateElasticsearchDomainConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uedcEBSOptions' - Specify the type and size of the EBS volume that you want to use.
--
-- * 'uedcSnapshotOptions' - Option to set the time, in UTC format, for the daily automated snapshot. Default value is @0@ hours.
--
-- * 'uedcElasticsearchClusterConfig' - The type and number of instances to instantiate for the domain cluster.
--
-- * 'uedcDomainEndpointOptions' - Options to specify configuration that will be applied to the domain endpoint.
--
-- * 'uedcVPCOptions' - Options to specify the subnets and security groups for VPC endpoint. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc Creating a VPC> in /VPC Endpoints for Amazon Elasticsearch Service Domains/
--
-- * 'uedcAutoTuneOptions' - Specifies Auto-Tune options.
--
-- * 'uedcAccessPolicies' - IAM access policy as a JSON-formatted string.
--
-- * 'uedcEncryptionAtRestOptions' - Specifies the Encryption At Rest Options.
--
-- * 'uedcCognitoOptions' - Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
--
-- * 'uedcNodeToNodeEncryptionOptions' - Specifies the NodeToNodeEncryptionOptions.
--
-- * 'uedcAdvancedOptions' - Modifies the advanced option to allow references to indices in an HTTP request body. Must be @false@ when configuring access to individual sub-resources. By default, the value is @true@ . See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options Configuration Advanced Options> for more information.
--
-- * 'uedcAdvancedSecurityOptions' - Specifies advanced security options.
--
-- * 'uedcLogPublishingOptions' - Map of @LogType@ and @LogPublishingOption@ , each containing options to publish a given type of Elasticsearch log.
--
-- * 'uedcDomainName' - The name of the Elasticsearch domain that you are updating.
updateElasticsearchDomainConfig ::
  -- | 'uedcDomainName'
  Text ->
  UpdateElasticsearchDomainConfig
updateElasticsearchDomainConfig pDomainName_ =
  UpdateElasticsearchDomainConfig'
    { _uedcEBSOptions =
        Nothing,
      _uedcSnapshotOptions = Nothing,
      _uedcElasticsearchClusterConfig = Nothing,
      _uedcDomainEndpointOptions = Nothing,
      _uedcVPCOptions = Nothing,
      _uedcAutoTuneOptions = Nothing,
      _uedcAccessPolicies = Nothing,
      _uedcEncryptionAtRestOptions = Nothing,
      _uedcCognitoOptions = Nothing,
      _uedcNodeToNodeEncryptionOptions = Nothing,
      _uedcAdvancedOptions = Nothing,
      _uedcAdvancedSecurityOptions = Nothing,
      _uedcLogPublishingOptions = Nothing,
      _uedcDomainName = pDomainName_
    }

-- | Specify the type and size of the EBS volume that you want to use.
uedcEBSOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe EBSOptions)
uedcEBSOptions = lens _uedcEBSOptions (\s a -> s {_uedcEBSOptions = a})

-- | Option to set the time, in UTC format, for the daily automated snapshot. Default value is @0@ hours.
uedcSnapshotOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe SnapshotOptions)
uedcSnapshotOptions = lens _uedcSnapshotOptions (\s a -> s {_uedcSnapshotOptions = a})

-- | The type and number of instances to instantiate for the domain cluster.
uedcElasticsearchClusterConfig :: Lens' UpdateElasticsearchDomainConfig (Maybe ElasticsearchClusterConfig)
uedcElasticsearchClusterConfig = lens _uedcElasticsearchClusterConfig (\s a -> s {_uedcElasticsearchClusterConfig = a})

-- | Options to specify configuration that will be applied to the domain endpoint.
uedcDomainEndpointOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe DomainEndpointOptions)
uedcDomainEndpointOptions = lens _uedcDomainEndpointOptions (\s a -> s {_uedcDomainEndpointOptions = a})

-- | Options to specify the subnets and security groups for VPC endpoint. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc Creating a VPC> in /VPC Endpoints for Amazon Elasticsearch Service Domains/
uedcVPCOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe VPCOptions)
uedcVPCOptions = lens _uedcVPCOptions (\s a -> s {_uedcVPCOptions = a})

-- | Specifies Auto-Tune options.
uedcAutoTuneOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe AutoTuneOptions)
uedcAutoTuneOptions = lens _uedcAutoTuneOptions (\s a -> s {_uedcAutoTuneOptions = a})

-- | IAM access policy as a JSON-formatted string.
uedcAccessPolicies :: Lens' UpdateElasticsearchDomainConfig (Maybe Text)
uedcAccessPolicies = lens _uedcAccessPolicies (\s a -> s {_uedcAccessPolicies = a})

-- | Specifies the Encryption At Rest Options.
uedcEncryptionAtRestOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe EncryptionAtRestOptions)
uedcEncryptionAtRestOptions = lens _uedcEncryptionAtRestOptions (\s a -> s {_uedcEncryptionAtRestOptions = a})

-- | Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
uedcCognitoOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe CognitoOptions)
uedcCognitoOptions = lens _uedcCognitoOptions (\s a -> s {_uedcCognitoOptions = a})

-- | Specifies the NodeToNodeEncryptionOptions.
uedcNodeToNodeEncryptionOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe NodeToNodeEncryptionOptions)
uedcNodeToNodeEncryptionOptions = lens _uedcNodeToNodeEncryptionOptions (\s a -> s {_uedcNodeToNodeEncryptionOptions = a})

-- | Modifies the advanced option to allow references to indices in an HTTP request body. Must be @false@ when configuring access to individual sub-resources. By default, the value is @true@ . See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options Configuration Advanced Options> for more information.
uedcAdvancedOptions :: Lens' UpdateElasticsearchDomainConfig (HashMap Text Text)
uedcAdvancedOptions = lens _uedcAdvancedOptions (\s a -> s {_uedcAdvancedOptions = a}) . _Default . _Map

-- | Specifies advanced security options.
uedcAdvancedSecurityOptions :: Lens' UpdateElasticsearchDomainConfig (Maybe AdvancedSecurityOptionsInput)
uedcAdvancedSecurityOptions = lens _uedcAdvancedSecurityOptions (\s a -> s {_uedcAdvancedSecurityOptions = a})

-- | Map of @LogType@ and @LogPublishingOption@ , each containing options to publish a given type of Elasticsearch log.
uedcLogPublishingOptions :: Lens' UpdateElasticsearchDomainConfig (HashMap LogType LogPublishingOption)
uedcLogPublishingOptions = lens _uedcLogPublishingOptions (\s a -> s {_uedcLogPublishingOptions = a}) . _Default . _Map

-- | The name of the Elasticsearch domain that you are updating.
uedcDomainName :: Lens' UpdateElasticsearchDomainConfig Text
uedcDomainName = lens _uedcDomainName (\s a -> s {_uedcDomainName = a})

instance AWSRequest UpdateElasticsearchDomainConfig where
  type
    Rs UpdateElasticsearchDomainConfig =
      UpdateElasticsearchDomainConfigResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          UpdateElasticsearchDomainConfigResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "DomainConfig")
      )

instance Hashable UpdateElasticsearchDomainConfig

instance NFData UpdateElasticsearchDomainConfig

instance ToHeaders UpdateElasticsearchDomainConfig where
  toHeaders = const mempty

instance ToJSON UpdateElasticsearchDomainConfig where
  toJSON UpdateElasticsearchDomainConfig' {..} =
    object
      ( catMaybes
          [ ("EBSOptions" .=) <$> _uedcEBSOptions,
            ("SnapshotOptions" .=) <$> _uedcSnapshotOptions,
            ("ElasticsearchClusterConfig" .=)
              <$> _uedcElasticsearchClusterConfig,
            ("DomainEndpointOptions" .=)
              <$> _uedcDomainEndpointOptions,
            ("VPCOptions" .=) <$> _uedcVPCOptions,
            ("AutoTuneOptions" .=) <$> _uedcAutoTuneOptions,
            ("AccessPolicies" .=) <$> _uedcAccessPolicies,
            ("EncryptionAtRestOptions" .=)
              <$> _uedcEncryptionAtRestOptions,
            ("CognitoOptions" .=) <$> _uedcCognitoOptions,
            ("NodeToNodeEncryptionOptions" .=)
              <$> _uedcNodeToNodeEncryptionOptions,
            ("AdvancedOptions" .=) <$> _uedcAdvancedOptions,
            ("AdvancedSecurityOptions" .=)
              <$> _uedcAdvancedSecurityOptions,
            ("LogPublishingOptions" .=)
              <$> _uedcLogPublishingOptions
          ]
      )

instance ToPath UpdateElasticsearchDomainConfig where
  toPath UpdateElasticsearchDomainConfig' {..} =
    mconcat
      [ "/2015-01-01/es/domain/",
        toBS _uedcDomainName,
        "/config"
      ]

instance ToQuery UpdateElasticsearchDomainConfig where
  toQuery = const mempty

-- | The result of an @UpdateElasticsearchDomain@ request. Contains the status of the Elasticsearch domain being updated.
--
--
--
-- /See:/ 'updateElasticsearchDomainConfigResponse' smart constructor.
data UpdateElasticsearchDomainConfigResponse = UpdateElasticsearchDomainConfigResponse'
  { _uedcrrsResponseStatus ::
      !Int,
    _uedcrrsDomainConfig ::
      !ElasticsearchDomainConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateElasticsearchDomainConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uedcrrsResponseStatus' - -- | The response status code.
--
-- * 'uedcrrsDomainConfig' - The status of the updated Elasticsearch domain.
updateElasticsearchDomainConfigResponse ::
  -- | 'uedcrrsResponseStatus'
  Int ->
  -- | 'uedcrrsDomainConfig'
  ElasticsearchDomainConfig ->
  UpdateElasticsearchDomainConfigResponse
updateElasticsearchDomainConfigResponse
  pResponseStatus_
  pDomainConfig_ =
    UpdateElasticsearchDomainConfigResponse'
      { _uedcrrsResponseStatus =
          pResponseStatus_,
        _uedcrrsDomainConfig =
          pDomainConfig_
      }

-- | -- | The response status code.
uedcrrsResponseStatus :: Lens' UpdateElasticsearchDomainConfigResponse Int
uedcrrsResponseStatus = lens _uedcrrsResponseStatus (\s a -> s {_uedcrrsResponseStatus = a})

-- | The status of the updated Elasticsearch domain.
uedcrrsDomainConfig :: Lens' UpdateElasticsearchDomainConfigResponse ElasticsearchDomainConfig
uedcrrsDomainConfig = lens _uedcrrsDomainConfig (\s a -> s {_uedcrrsDomainConfig = a})

instance
  NFData
    UpdateElasticsearchDomainConfigResponse
