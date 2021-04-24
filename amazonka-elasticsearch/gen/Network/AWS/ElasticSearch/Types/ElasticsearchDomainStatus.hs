{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ElasticsearchDomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ElasticsearchDomainStatus where

import Network.AWS.ElasticSearch.Types.AdvancedSecurityOptions
import Network.AWS.ElasticSearch.Types.AutoTuneOptionsOutput
import Network.AWS.ElasticSearch.Types.CognitoOptions
import Network.AWS.ElasticSearch.Types.DomainEndpointOptions
import Network.AWS.ElasticSearch.Types.EBSOptions
import Network.AWS.ElasticSearch.Types.ElasticsearchClusterConfig
import Network.AWS.ElasticSearch.Types.EncryptionAtRestOptions
import Network.AWS.ElasticSearch.Types.LogPublishingOption
import Network.AWS.ElasticSearch.Types.LogType
import Network.AWS.ElasticSearch.Types.NodeToNodeEncryptionOptions
import Network.AWS.ElasticSearch.Types.ServiceSoftwareOptions
import Network.AWS.ElasticSearch.Types.SnapshotOptions
import Network.AWS.ElasticSearch.Types.VPCDerivedInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The current status of an Elasticsearch domain.
--
--
--
-- /See:/ 'elasticsearchDomainStatus' smart constructor.
data ElasticsearchDomainStatus = ElasticsearchDomainStatus'
  { _edsEBSOptions ::
      !(Maybe EBSOptions),
    _edsSnapshotOptions ::
      !( Maybe
           SnapshotOptions
       ),
    _edsDomainEndpointOptions ::
      !( Maybe
           DomainEndpointOptions
       ),
    _edsUpgradeProcessing ::
      !(Maybe Bool),
    _edsEndpoints ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _edsVPCOptions ::
      !( Maybe
           VPCDerivedInfo
       ),
    _edsAutoTuneOptions ::
      !( Maybe
           AutoTuneOptionsOutput
       ),
    _edsAccessPolicies ::
      !(Maybe Text),
    _edsEncryptionAtRestOptions ::
      !( Maybe
           EncryptionAtRestOptions
       ),
    _edsServiceSoftwareOptions ::
      !( Maybe
           ServiceSoftwareOptions
       ),
    _edsCognitoOptions ::
      !( Maybe
           CognitoOptions
       ),
    _edsNodeToNodeEncryptionOptions ::
      !( Maybe
           NodeToNodeEncryptionOptions
       ),
    _edsElasticsearchVersion ::
      !(Maybe Text),
    _edsAdvancedOptions ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _edsProcessing ::
      !(Maybe Bool),
    _edsEndpoint ::
      !(Maybe Text),
    _edsCreated ::
      !(Maybe Bool),
    _edsAdvancedSecurityOptions ::
      !( Maybe
           AdvancedSecurityOptions
       ),
    _edsLogPublishingOptions ::
      !( Maybe
           ( Map
               LogType
               LogPublishingOption
           )
       ),
    _edsDeleted ::
      !(Maybe Bool),
    _edsDomainId ::
      !Text,
    _edsDomainName ::
      !Text,
    _edsARN :: !Text,
    _edsElasticsearchClusterConfig ::
      !ElasticsearchClusterConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ElasticsearchDomainStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edsEBSOptions' - The @EBSOptions@ for the specified domain. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs Configuring EBS-based Storage> for more information.
--
-- * 'edsSnapshotOptions' - Specifies the status of the @SnapshotOptions@
--
-- * 'edsDomainEndpointOptions' - The current status of the Elasticsearch domain's endpoint options.
--
-- * 'edsUpgradeProcessing' - The status of an Elasticsearch domain version upgrade. @True@ if Amazon Elasticsearch Service is undergoing a version upgrade. @False@ if the configuration is active.
--
-- * 'edsEndpoints' - Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example @key, value@ : @'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'@ .
--
-- * 'edsVPCOptions' - The @VPCOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html VPC Endpoints for Amazon Elasticsearch Service Domains> .
--
-- * 'edsAutoTuneOptions' - The current status of the Elasticsearch domain's Auto-Tune options.
--
-- * 'edsAccessPolicies' - IAM access policy as a JSON-formatted string.
--
-- * 'edsEncryptionAtRestOptions' - Specifies the status of the @EncryptionAtRestOptions@ .
--
-- * 'edsServiceSoftwareOptions' - The current status of the Elasticsearch domain's service software.
--
-- * 'edsCognitoOptions' - The @CognitoOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
--
-- * 'edsNodeToNodeEncryptionOptions' - Specifies the status of the @NodeToNodeEncryptionOptions@ .
--
-- * 'edsElasticsearchVersion' - Undocumented member.
--
-- * 'edsAdvancedOptions' - Specifies the status of the @AdvancedOptions@
--
-- * 'edsProcessing' - The status of the Elasticsearch domain configuration. @True@ if Amazon Elasticsearch Service is processing configuration changes. @False@ if the configuration is active.
--
-- * 'edsEndpoint' - The Elasticsearch domain endpoint that you use to submit index and search requests.
--
-- * 'edsCreated' - The domain creation status. @True@ if the creation of an Elasticsearch domain is complete. @False@ if domain creation is still in progress.
--
-- * 'edsAdvancedSecurityOptions' - The current status of the Elasticsearch domain's advanced security options.
--
-- * 'edsLogPublishingOptions' - Log publishing options for the given domain.
--
-- * 'edsDeleted' - The domain deletion status. @True@ if a delete request has been received for the domain but resource cleanup is still in progress. @False@ if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.
--
-- * 'edsDomainId' - The unique identifier for the specified Elasticsearch domain.
--
-- * 'edsDomainName' - The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
--
-- * 'edsARN' - The Amazon resource name (ARN) of an Elasticsearch domain. See <http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html Identifiers for IAM Entities> in /Using AWS Identity and Access Management/ for more information.
--
-- * 'edsElasticsearchClusterConfig' - The type and number of instances in the domain cluster.
elasticsearchDomainStatus ::
  -- | 'edsDomainId'
  Text ->
  -- | 'edsDomainName'
  Text ->
  -- | 'edsARN'
  Text ->
  -- | 'edsElasticsearchClusterConfig'
  ElasticsearchClusterConfig ->
  ElasticsearchDomainStatus
elasticsearchDomainStatus
  pDomainId_
  pDomainName_
  pARN_
  pElasticsearchClusterConfig_ =
    ElasticsearchDomainStatus'
      { _edsEBSOptions =
          Nothing,
        _edsSnapshotOptions = Nothing,
        _edsDomainEndpointOptions = Nothing,
        _edsUpgradeProcessing = Nothing,
        _edsEndpoints = Nothing,
        _edsVPCOptions = Nothing,
        _edsAutoTuneOptions = Nothing,
        _edsAccessPolicies = Nothing,
        _edsEncryptionAtRestOptions = Nothing,
        _edsServiceSoftwareOptions = Nothing,
        _edsCognitoOptions = Nothing,
        _edsNodeToNodeEncryptionOptions = Nothing,
        _edsElasticsearchVersion = Nothing,
        _edsAdvancedOptions = Nothing,
        _edsProcessing = Nothing,
        _edsEndpoint = Nothing,
        _edsCreated = Nothing,
        _edsAdvancedSecurityOptions = Nothing,
        _edsLogPublishingOptions = Nothing,
        _edsDeleted = Nothing,
        _edsDomainId = pDomainId_,
        _edsDomainName = pDomainName_,
        _edsARN = pARN_,
        _edsElasticsearchClusterConfig =
          pElasticsearchClusterConfig_
      }

-- | The @EBSOptions@ for the specified domain. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs Configuring EBS-based Storage> for more information.
edsEBSOptions :: Lens' ElasticsearchDomainStatus (Maybe EBSOptions)
edsEBSOptions = lens _edsEBSOptions (\s a -> s {_edsEBSOptions = a})

-- | Specifies the status of the @SnapshotOptions@
edsSnapshotOptions :: Lens' ElasticsearchDomainStatus (Maybe SnapshotOptions)
edsSnapshotOptions = lens _edsSnapshotOptions (\s a -> s {_edsSnapshotOptions = a})

-- | The current status of the Elasticsearch domain's endpoint options.
edsDomainEndpointOptions :: Lens' ElasticsearchDomainStatus (Maybe DomainEndpointOptions)
edsDomainEndpointOptions = lens _edsDomainEndpointOptions (\s a -> s {_edsDomainEndpointOptions = a})

-- | The status of an Elasticsearch domain version upgrade. @True@ if Amazon Elasticsearch Service is undergoing a version upgrade. @False@ if the configuration is active.
edsUpgradeProcessing :: Lens' ElasticsearchDomainStatus (Maybe Bool)
edsUpgradeProcessing = lens _edsUpgradeProcessing (\s a -> s {_edsUpgradeProcessing = a})

-- | Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example @key, value@ : @'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'@ .
edsEndpoints :: Lens' ElasticsearchDomainStatus (HashMap Text Text)
edsEndpoints = lens _edsEndpoints (\s a -> s {_edsEndpoints = a}) . _Default . _Map

-- | The @VPCOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html VPC Endpoints for Amazon Elasticsearch Service Domains> .
edsVPCOptions :: Lens' ElasticsearchDomainStatus (Maybe VPCDerivedInfo)
edsVPCOptions = lens _edsVPCOptions (\s a -> s {_edsVPCOptions = a})

-- | The current status of the Elasticsearch domain's Auto-Tune options.
edsAutoTuneOptions :: Lens' ElasticsearchDomainStatus (Maybe AutoTuneOptionsOutput)
edsAutoTuneOptions = lens _edsAutoTuneOptions (\s a -> s {_edsAutoTuneOptions = a})

-- | IAM access policy as a JSON-formatted string.
edsAccessPolicies :: Lens' ElasticsearchDomainStatus (Maybe Text)
edsAccessPolicies = lens _edsAccessPolicies (\s a -> s {_edsAccessPolicies = a})

-- | Specifies the status of the @EncryptionAtRestOptions@ .
edsEncryptionAtRestOptions :: Lens' ElasticsearchDomainStatus (Maybe EncryptionAtRestOptions)
edsEncryptionAtRestOptions = lens _edsEncryptionAtRestOptions (\s a -> s {_edsEncryptionAtRestOptions = a})

-- | The current status of the Elasticsearch domain's service software.
edsServiceSoftwareOptions :: Lens' ElasticsearchDomainStatus (Maybe ServiceSoftwareOptions)
edsServiceSoftwareOptions = lens _edsServiceSoftwareOptions (\s a -> s {_edsServiceSoftwareOptions = a})

-- | The @CognitoOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
edsCognitoOptions :: Lens' ElasticsearchDomainStatus (Maybe CognitoOptions)
edsCognitoOptions = lens _edsCognitoOptions (\s a -> s {_edsCognitoOptions = a})

-- | Specifies the status of the @NodeToNodeEncryptionOptions@ .
edsNodeToNodeEncryptionOptions :: Lens' ElasticsearchDomainStatus (Maybe NodeToNodeEncryptionOptions)
edsNodeToNodeEncryptionOptions = lens _edsNodeToNodeEncryptionOptions (\s a -> s {_edsNodeToNodeEncryptionOptions = a})

-- | Undocumented member.
edsElasticsearchVersion :: Lens' ElasticsearchDomainStatus (Maybe Text)
edsElasticsearchVersion = lens _edsElasticsearchVersion (\s a -> s {_edsElasticsearchVersion = a})

-- | Specifies the status of the @AdvancedOptions@
edsAdvancedOptions :: Lens' ElasticsearchDomainStatus (HashMap Text Text)
edsAdvancedOptions = lens _edsAdvancedOptions (\s a -> s {_edsAdvancedOptions = a}) . _Default . _Map

-- | The status of the Elasticsearch domain configuration. @True@ if Amazon Elasticsearch Service is processing configuration changes. @False@ if the configuration is active.
edsProcessing :: Lens' ElasticsearchDomainStatus (Maybe Bool)
edsProcessing = lens _edsProcessing (\s a -> s {_edsProcessing = a})

-- | The Elasticsearch domain endpoint that you use to submit index and search requests.
edsEndpoint :: Lens' ElasticsearchDomainStatus (Maybe Text)
edsEndpoint = lens _edsEndpoint (\s a -> s {_edsEndpoint = a})

-- | The domain creation status. @True@ if the creation of an Elasticsearch domain is complete. @False@ if domain creation is still in progress.
edsCreated :: Lens' ElasticsearchDomainStatus (Maybe Bool)
edsCreated = lens _edsCreated (\s a -> s {_edsCreated = a})

-- | The current status of the Elasticsearch domain's advanced security options.
edsAdvancedSecurityOptions :: Lens' ElasticsearchDomainStatus (Maybe AdvancedSecurityOptions)
edsAdvancedSecurityOptions = lens _edsAdvancedSecurityOptions (\s a -> s {_edsAdvancedSecurityOptions = a})

-- | Log publishing options for the given domain.
edsLogPublishingOptions :: Lens' ElasticsearchDomainStatus (HashMap LogType LogPublishingOption)
edsLogPublishingOptions = lens _edsLogPublishingOptions (\s a -> s {_edsLogPublishingOptions = a}) . _Default . _Map

-- | The domain deletion status. @True@ if a delete request has been received for the domain but resource cleanup is still in progress. @False@ if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.
edsDeleted :: Lens' ElasticsearchDomainStatus (Maybe Bool)
edsDeleted = lens _edsDeleted (\s a -> s {_edsDeleted = a})

-- | The unique identifier for the specified Elasticsearch domain.
edsDomainId :: Lens' ElasticsearchDomainStatus Text
edsDomainId = lens _edsDomainId (\s a -> s {_edsDomainId = a})

-- | The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
edsDomainName :: Lens' ElasticsearchDomainStatus Text
edsDomainName = lens _edsDomainName (\s a -> s {_edsDomainName = a})

-- | The Amazon resource name (ARN) of an Elasticsearch domain. See <http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html Identifiers for IAM Entities> in /Using AWS Identity and Access Management/ for more information.
edsARN :: Lens' ElasticsearchDomainStatus Text
edsARN = lens _edsARN (\s a -> s {_edsARN = a})

-- | The type and number of instances in the domain cluster.
edsElasticsearchClusterConfig :: Lens' ElasticsearchDomainStatus ElasticsearchClusterConfig
edsElasticsearchClusterConfig = lens _edsElasticsearchClusterConfig (\s a -> s {_edsElasticsearchClusterConfig = a})

instance FromJSON ElasticsearchDomainStatus where
  parseJSON =
    withObject
      "ElasticsearchDomainStatus"
      ( \x ->
          ElasticsearchDomainStatus'
            <$> (x .:? "EBSOptions")
            <*> (x .:? "SnapshotOptions")
            <*> (x .:? "DomainEndpointOptions")
            <*> (x .:? "UpgradeProcessing")
            <*> (x .:? "Endpoints" .!= mempty)
            <*> (x .:? "VPCOptions")
            <*> (x .:? "AutoTuneOptions")
            <*> (x .:? "AccessPolicies")
            <*> (x .:? "EncryptionAtRestOptions")
            <*> (x .:? "ServiceSoftwareOptions")
            <*> (x .:? "CognitoOptions")
            <*> (x .:? "NodeToNodeEncryptionOptions")
            <*> (x .:? "ElasticsearchVersion")
            <*> (x .:? "AdvancedOptions" .!= mempty)
            <*> (x .:? "Processing")
            <*> (x .:? "Endpoint")
            <*> (x .:? "Created")
            <*> (x .:? "AdvancedSecurityOptions")
            <*> (x .:? "LogPublishingOptions" .!= mempty)
            <*> (x .:? "Deleted")
            <*> (x .: "DomainId")
            <*> (x .: "DomainName")
            <*> (x .: "ARN")
            <*> (x .: "ElasticsearchClusterConfig")
      )

instance Hashable ElasticsearchDomainStatus

instance NFData ElasticsearchDomainStatus
