{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.DomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.DomainStatus where

import Network.AWS.CloudSearch.Types.Limits
import Network.AWS.CloudSearch.Types.ServiceEndpoint
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The current status of the search domain.
--
--
--
-- /See:/ 'domainStatus' smart constructor.
data DomainStatus = DomainStatus'
  { _dsSearchInstanceType ::
      !(Maybe Text),
    _dsARN :: !(Maybe Text),
    _dsSearchPartitionCount :: !(Maybe Nat),
    _dsSearchInstanceCount :: !(Maybe Nat),
    _dsLimits :: !(Maybe Limits),
    _dsSearchService :: !(Maybe ServiceEndpoint),
    _dsProcessing :: !(Maybe Bool),
    _dsCreated :: !(Maybe Bool),
    _dsDeleted :: !(Maybe Bool),
    _dsDocService :: !(Maybe ServiceEndpoint),
    _dsDomainId :: !Text,
    _dsDomainName :: !Text,
    _dsRequiresIndexDocuments :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsSearchInstanceType' - The instance type that is being used to process search requests.
--
-- * 'dsARN' - Undocumented member.
--
-- * 'dsSearchPartitionCount' - The number of partitions across which the search index is spread.
--
-- * 'dsSearchInstanceCount' - The number of search instances that are available to process search requests.
--
-- * 'dsLimits' - Undocumented member.
--
-- * 'dsSearchService' - The service endpoint for requesting search results from a search domain.
--
-- * 'dsProcessing' - True if processing is being done to activate the current domain configuration.
--
-- * 'dsCreated' - True if the search domain is created. It can take several minutes to initialize a domain when 'CreateDomain' is called. Newly created search domains are returned from 'DescribeDomains' with a false value for Created until domain creation is complete.
--
-- * 'dsDeleted' - True if the search domain has been deleted. The system must clean up resources dedicated to the search domain when 'DeleteDomain' is called. Newly deleted search domains are returned from 'DescribeDomains' with a true value for IsDeleted for several minutes until resource cleanup is complete.
--
-- * 'dsDocService' - The service endpoint for updating documents in a search domain.
--
-- * 'dsDomainId' - Undocumented member.
--
-- * 'dsDomainName' - Undocumented member.
--
-- * 'dsRequiresIndexDocuments' - True if 'IndexDocuments' needs to be called to activate the current domain configuration.
domainStatus ::
  -- | 'dsDomainId'
  Text ->
  -- | 'dsDomainName'
  Text ->
  -- | 'dsRequiresIndexDocuments'
  Bool ->
  DomainStatus
domainStatus
  pDomainId_
  pDomainName_
  pRequiresIndexDocuments_ =
    DomainStatus'
      { _dsSearchInstanceType = Nothing,
        _dsARN = Nothing,
        _dsSearchPartitionCount = Nothing,
        _dsSearchInstanceCount = Nothing,
        _dsLimits = Nothing,
        _dsSearchService = Nothing,
        _dsProcessing = Nothing,
        _dsCreated = Nothing,
        _dsDeleted = Nothing,
        _dsDocService = Nothing,
        _dsDomainId = pDomainId_,
        _dsDomainName = pDomainName_,
        _dsRequiresIndexDocuments = pRequiresIndexDocuments_
      }

-- | The instance type that is being used to process search requests.
dsSearchInstanceType :: Lens' DomainStatus (Maybe Text)
dsSearchInstanceType = lens _dsSearchInstanceType (\s a -> s {_dsSearchInstanceType = a})

-- | Undocumented member.
dsARN :: Lens' DomainStatus (Maybe Text)
dsARN = lens _dsARN (\s a -> s {_dsARN = a})

-- | The number of partitions across which the search index is spread.
dsSearchPartitionCount :: Lens' DomainStatus (Maybe Natural)
dsSearchPartitionCount = lens _dsSearchPartitionCount (\s a -> s {_dsSearchPartitionCount = a}) . mapping _Nat

-- | The number of search instances that are available to process search requests.
dsSearchInstanceCount :: Lens' DomainStatus (Maybe Natural)
dsSearchInstanceCount = lens _dsSearchInstanceCount (\s a -> s {_dsSearchInstanceCount = a}) . mapping _Nat

-- | Undocumented member.
dsLimits :: Lens' DomainStatus (Maybe Limits)
dsLimits = lens _dsLimits (\s a -> s {_dsLimits = a})

-- | The service endpoint for requesting search results from a search domain.
dsSearchService :: Lens' DomainStatus (Maybe ServiceEndpoint)
dsSearchService = lens _dsSearchService (\s a -> s {_dsSearchService = a})

-- | True if processing is being done to activate the current domain configuration.
dsProcessing :: Lens' DomainStatus (Maybe Bool)
dsProcessing = lens _dsProcessing (\s a -> s {_dsProcessing = a})

-- | True if the search domain is created. It can take several minutes to initialize a domain when 'CreateDomain' is called. Newly created search domains are returned from 'DescribeDomains' with a false value for Created until domain creation is complete.
dsCreated :: Lens' DomainStatus (Maybe Bool)
dsCreated = lens _dsCreated (\s a -> s {_dsCreated = a})

-- | True if the search domain has been deleted. The system must clean up resources dedicated to the search domain when 'DeleteDomain' is called. Newly deleted search domains are returned from 'DescribeDomains' with a true value for IsDeleted for several minutes until resource cleanup is complete.
dsDeleted :: Lens' DomainStatus (Maybe Bool)
dsDeleted = lens _dsDeleted (\s a -> s {_dsDeleted = a})

-- | The service endpoint for updating documents in a search domain.
dsDocService :: Lens' DomainStatus (Maybe ServiceEndpoint)
dsDocService = lens _dsDocService (\s a -> s {_dsDocService = a})

-- | Undocumented member.
dsDomainId :: Lens' DomainStatus Text
dsDomainId = lens _dsDomainId (\s a -> s {_dsDomainId = a})

-- | Undocumented member.
dsDomainName :: Lens' DomainStatus Text
dsDomainName = lens _dsDomainName (\s a -> s {_dsDomainName = a})

-- | True if 'IndexDocuments' needs to be called to activate the current domain configuration.
dsRequiresIndexDocuments :: Lens' DomainStatus Bool
dsRequiresIndexDocuments = lens _dsRequiresIndexDocuments (\s a -> s {_dsRequiresIndexDocuments = a})

instance FromXML DomainStatus where
  parseXML x =
    DomainStatus'
      <$> (x .@? "SearchInstanceType")
      <*> (x .@? "ARN")
      <*> (x .@? "SearchPartitionCount")
      <*> (x .@? "SearchInstanceCount")
      <*> (x .@? "Limits")
      <*> (x .@? "SearchService")
      <*> (x .@? "Processing")
      <*> (x .@? "Created")
      <*> (x .@? "Deleted")
      <*> (x .@? "DocService")
      <*> (x .@ "DomainId")
      <*> (x .@ "DomainName")
      <*> (x .@ "RequiresIndexDocuments")

instance Hashable DomainStatus

instance NFData DomainStatus
