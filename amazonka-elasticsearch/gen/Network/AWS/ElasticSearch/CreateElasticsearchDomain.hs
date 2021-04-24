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
-- Module      : Network.AWS.ElasticSearch.CreateElasticsearchDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Elasticsearch domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains Creating Elasticsearch Domains> in the /Amazon Elasticsearch Service Developer Guide/ .
module Network.AWS.ElasticSearch.CreateElasticsearchDomain
  ( -- * Creating a Request
    createElasticsearchDomain,
    CreateElasticsearchDomain,

    -- * Request Lenses
    cedEBSOptions,
    cedSnapshotOptions,
    cedElasticsearchClusterConfig,
    cedDomainEndpointOptions,
    cedVPCOptions,
    cedAutoTuneOptions,
    cedAccessPolicies,
    cedEncryptionAtRestOptions,
    cedCognitoOptions,
    cedNodeToNodeEncryptionOptions,
    cedElasticsearchVersion,
    cedAdvancedOptions,
    cedTagList,
    cedAdvancedSecurityOptions,
    cedLogPublishingOptions,
    cedDomainName,

    -- * Destructuring the Response
    createElasticsearchDomainResponse,
    CreateElasticsearchDomainResponse,

    -- * Response Lenses
    cedrrsDomainStatus,
    cedrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createElasticsearchDomain' smart constructor.
data CreateElasticsearchDomain = CreateElasticsearchDomain'
  { _cedEBSOptions ::
      !(Maybe EBSOptions),
    _cedSnapshotOptions ::
      !( Maybe
           SnapshotOptions
       ),
    _cedElasticsearchClusterConfig ::
      !( Maybe
           ElasticsearchClusterConfig
       ),
    _cedDomainEndpointOptions ::
      !( Maybe
           DomainEndpointOptions
       ),
    _cedVPCOptions ::
      !(Maybe VPCOptions),
    _cedAutoTuneOptions ::
      !( Maybe
           AutoTuneOptionsInput
       ),
    _cedAccessPolicies ::
      !(Maybe Text),
    _cedEncryptionAtRestOptions ::
      !( Maybe
           EncryptionAtRestOptions
       ),
    _cedCognitoOptions ::
      !( Maybe
           CognitoOptions
       ),
    _cedNodeToNodeEncryptionOptions ::
      !( Maybe
           NodeToNodeEncryptionOptions
       ),
    _cedElasticsearchVersion ::
      !(Maybe Text),
    _cedAdvancedOptions ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _cedTagList ::
      !(Maybe [Tag]),
    _cedAdvancedSecurityOptions ::
      !( Maybe
           AdvancedSecurityOptionsInput
       ),
    _cedLogPublishingOptions ::
      !( Maybe
           ( Map
               LogType
               LogPublishingOption
           )
       ),
    _cedDomainName ::
      !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateElasticsearchDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cedEBSOptions' - Options to enable, disable and specify the type and size of EBS storage volumes.
--
-- * 'cedSnapshotOptions' - Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours.
--
-- * 'cedElasticsearchClusterConfig' - Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster.
--
-- * 'cedDomainEndpointOptions' - Options to specify configuration that will be applied to the domain endpoint.
--
-- * 'cedVPCOptions' - Options to specify the subnets and security groups for VPC endpoint. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc Creating a VPC> in /VPC Endpoints for Amazon Elasticsearch Service Domains/
--
-- * 'cedAutoTuneOptions' - Specifies Auto-Tune options.
--
-- * 'cedAccessPolicies' - IAM access policy as a JSON-formatted string.
--
-- * 'cedEncryptionAtRestOptions' - Specifies the Encryption At Rest Options.
--
-- * 'cedCognitoOptions' - Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
--
-- * 'cedNodeToNodeEncryptionOptions' - Specifies the NodeToNodeEncryptionOptions.
--
-- * 'cedElasticsearchVersion' - String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains Creating Elasticsearch Domains> in the /Amazon Elasticsearch Service Developer Guide/ .
--
-- * 'cedAdvancedOptions' - Option to allow references to indices in an HTTP request body. Must be @false@ when configuring access to individual sub-resources. By default, the value is @true@ . See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options Configuration Advanced Options> for more information.
--
-- * 'cedTagList' - A list of @Tag@ added during domain creation.
--
-- * 'cedAdvancedSecurityOptions' - Specifies advanced security options.
--
-- * 'cedLogPublishingOptions' - Map of @LogType@ and @LogPublishingOption@ , each containing options to publish a given type of Elasticsearch log.
--
-- * 'cedDomainName' - The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
createElasticsearchDomain ::
  -- | 'cedDomainName'
  Text ->
  CreateElasticsearchDomain
createElasticsearchDomain pDomainName_ =
  CreateElasticsearchDomain'
    { _cedEBSOptions =
        Nothing,
      _cedSnapshotOptions = Nothing,
      _cedElasticsearchClusterConfig = Nothing,
      _cedDomainEndpointOptions = Nothing,
      _cedVPCOptions = Nothing,
      _cedAutoTuneOptions = Nothing,
      _cedAccessPolicies = Nothing,
      _cedEncryptionAtRestOptions = Nothing,
      _cedCognitoOptions = Nothing,
      _cedNodeToNodeEncryptionOptions = Nothing,
      _cedElasticsearchVersion = Nothing,
      _cedAdvancedOptions = Nothing,
      _cedTagList = Nothing,
      _cedAdvancedSecurityOptions = Nothing,
      _cedLogPublishingOptions = Nothing,
      _cedDomainName = pDomainName_
    }

-- | Options to enable, disable and specify the type and size of EBS storage volumes.
cedEBSOptions :: Lens' CreateElasticsearchDomain (Maybe EBSOptions)
cedEBSOptions = lens _cedEBSOptions (\s a -> s {_cedEBSOptions = a})

-- | Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours.
cedSnapshotOptions :: Lens' CreateElasticsearchDomain (Maybe SnapshotOptions)
cedSnapshotOptions = lens _cedSnapshotOptions (\s a -> s {_cedSnapshotOptions = a})

-- | Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster.
cedElasticsearchClusterConfig :: Lens' CreateElasticsearchDomain (Maybe ElasticsearchClusterConfig)
cedElasticsearchClusterConfig = lens _cedElasticsearchClusterConfig (\s a -> s {_cedElasticsearchClusterConfig = a})

-- | Options to specify configuration that will be applied to the domain endpoint.
cedDomainEndpointOptions :: Lens' CreateElasticsearchDomain (Maybe DomainEndpointOptions)
cedDomainEndpointOptions = lens _cedDomainEndpointOptions (\s a -> s {_cedDomainEndpointOptions = a})

-- | Options to specify the subnets and security groups for VPC endpoint. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc Creating a VPC> in /VPC Endpoints for Amazon Elasticsearch Service Domains/
cedVPCOptions :: Lens' CreateElasticsearchDomain (Maybe VPCOptions)
cedVPCOptions = lens _cedVPCOptions (\s a -> s {_cedVPCOptions = a})

-- | Specifies Auto-Tune options.
cedAutoTuneOptions :: Lens' CreateElasticsearchDomain (Maybe AutoTuneOptionsInput)
cedAutoTuneOptions = lens _cedAutoTuneOptions (\s a -> s {_cedAutoTuneOptions = a})

-- | IAM access policy as a JSON-formatted string.
cedAccessPolicies :: Lens' CreateElasticsearchDomain (Maybe Text)
cedAccessPolicies = lens _cedAccessPolicies (\s a -> s {_cedAccessPolicies = a})

-- | Specifies the Encryption At Rest Options.
cedEncryptionAtRestOptions :: Lens' CreateElasticsearchDomain (Maybe EncryptionAtRestOptions)
cedEncryptionAtRestOptions = lens _cedEncryptionAtRestOptions (\s a -> s {_cedEncryptionAtRestOptions = a})

-- | Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
cedCognitoOptions :: Lens' CreateElasticsearchDomain (Maybe CognitoOptions)
cedCognitoOptions = lens _cedCognitoOptions (\s a -> s {_cedCognitoOptions = a})

-- | Specifies the NodeToNodeEncryptionOptions.
cedNodeToNodeEncryptionOptions :: Lens' CreateElasticsearchDomain (Maybe NodeToNodeEncryptionOptions)
cedNodeToNodeEncryptionOptions = lens _cedNodeToNodeEncryptionOptions (\s a -> s {_cedNodeToNodeEncryptionOptions = a})

-- | String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains Creating Elasticsearch Domains> in the /Amazon Elasticsearch Service Developer Guide/ .
cedElasticsearchVersion :: Lens' CreateElasticsearchDomain (Maybe Text)
cedElasticsearchVersion = lens _cedElasticsearchVersion (\s a -> s {_cedElasticsearchVersion = a})

-- | Option to allow references to indices in an HTTP request body. Must be @false@ when configuring access to individual sub-resources. By default, the value is @true@ . See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options Configuration Advanced Options> for more information.
cedAdvancedOptions :: Lens' CreateElasticsearchDomain (HashMap Text Text)
cedAdvancedOptions = lens _cedAdvancedOptions (\s a -> s {_cedAdvancedOptions = a}) . _Default . _Map

-- | A list of @Tag@ added during domain creation.
cedTagList :: Lens' CreateElasticsearchDomain [Tag]
cedTagList = lens _cedTagList (\s a -> s {_cedTagList = a}) . _Default . _Coerce

-- | Specifies advanced security options.
cedAdvancedSecurityOptions :: Lens' CreateElasticsearchDomain (Maybe AdvancedSecurityOptionsInput)
cedAdvancedSecurityOptions = lens _cedAdvancedSecurityOptions (\s a -> s {_cedAdvancedSecurityOptions = a})

-- | Map of @LogType@ and @LogPublishingOption@ , each containing options to publish a given type of Elasticsearch log.
cedLogPublishingOptions :: Lens' CreateElasticsearchDomain (HashMap LogType LogPublishingOption)
cedLogPublishingOptions = lens _cedLogPublishingOptions (\s a -> s {_cedLogPublishingOptions = a}) . _Default . _Map

-- | The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
cedDomainName :: Lens' CreateElasticsearchDomain Text
cedDomainName = lens _cedDomainName (\s a -> s {_cedDomainName = a})

instance AWSRequest CreateElasticsearchDomain where
  type
    Rs CreateElasticsearchDomain =
      CreateElasticsearchDomainResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          CreateElasticsearchDomainResponse'
            <$> (x .?> "DomainStatus") <*> (pure (fromEnum s))
      )

instance Hashable CreateElasticsearchDomain

instance NFData CreateElasticsearchDomain

instance ToHeaders CreateElasticsearchDomain where
  toHeaders = const mempty

instance ToJSON CreateElasticsearchDomain where
  toJSON CreateElasticsearchDomain' {..} =
    object
      ( catMaybes
          [ ("EBSOptions" .=) <$> _cedEBSOptions,
            ("SnapshotOptions" .=) <$> _cedSnapshotOptions,
            ("ElasticsearchClusterConfig" .=)
              <$> _cedElasticsearchClusterConfig,
            ("DomainEndpointOptions" .=)
              <$> _cedDomainEndpointOptions,
            ("VPCOptions" .=) <$> _cedVPCOptions,
            ("AutoTuneOptions" .=) <$> _cedAutoTuneOptions,
            ("AccessPolicies" .=) <$> _cedAccessPolicies,
            ("EncryptionAtRestOptions" .=)
              <$> _cedEncryptionAtRestOptions,
            ("CognitoOptions" .=) <$> _cedCognitoOptions,
            ("NodeToNodeEncryptionOptions" .=)
              <$> _cedNodeToNodeEncryptionOptions,
            ("ElasticsearchVersion" .=)
              <$> _cedElasticsearchVersion,
            ("AdvancedOptions" .=) <$> _cedAdvancedOptions,
            ("TagList" .=) <$> _cedTagList,
            ("AdvancedSecurityOptions" .=)
              <$> _cedAdvancedSecurityOptions,
            ("LogPublishingOptions" .=)
              <$> _cedLogPublishingOptions,
            Just ("DomainName" .= _cedDomainName)
          ]
      )

instance ToPath CreateElasticsearchDomain where
  toPath = const "/2015-01-01/es/domain"

instance ToQuery CreateElasticsearchDomain where
  toQuery = const mempty

-- | The result of a @CreateElasticsearchDomain@ operation. Contains the status of the newly created Elasticsearch domain.
--
--
--
-- /See:/ 'createElasticsearchDomainResponse' smart constructor.
data CreateElasticsearchDomainResponse = CreateElasticsearchDomainResponse'
  { _cedrrsDomainStatus ::
      !( Maybe
           ElasticsearchDomainStatus
       ),
    _cedrrsResponseStatus ::
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

-- | Creates a value of 'CreateElasticsearchDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cedrrsDomainStatus' - The status of the newly created Elasticsearch domain.
--
-- * 'cedrrsResponseStatus' - -- | The response status code.
createElasticsearchDomainResponse ::
  -- | 'cedrrsResponseStatus'
  Int ->
  CreateElasticsearchDomainResponse
createElasticsearchDomainResponse pResponseStatus_ =
  CreateElasticsearchDomainResponse'
    { _cedrrsDomainStatus =
        Nothing,
      _cedrrsResponseStatus = pResponseStatus_
    }

-- | The status of the newly created Elasticsearch domain.
cedrrsDomainStatus :: Lens' CreateElasticsearchDomainResponse (Maybe ElasticsearchDomainStatus)
cedrrsDomainStatus = lens _cedrrsDomainStatus (\s a -> s {_cedrrsDomainStatus = a})

-- | -- | The response status code.
cedrrsResponseStatus :: Lens' CreateElasticsearchDomainResponse Int
cedrrsResponseStatus = lens _cedrrsResponseStatus (\s a -> s {_cedrrsResponseStatus = a})

instance NFData CreateElasticsearchDomainResponse
