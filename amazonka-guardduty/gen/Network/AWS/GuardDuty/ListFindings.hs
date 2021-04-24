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
-- Module      : Network.AWS.GuardDuty.ListFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Amazon GuardDuty findings for the specified detector ID.
--
--
--
-- This operation returns paginated results.
module Network.AWS.GuardDuty.ListFindings
  ( -- * Creating a Request
    listFindings,
    ListFindings,

    -- * Request Lenses
    lfNextToken,
    lfSortCriteria,
    lfFindingCriteria,
    lfMaxResults,
    lfDetectorId,

    -- * Destructuring the Response
    listFindingsResponse,
    ListFindingsResponse,

    -- * Response Lenses
    lfrrsNextToken,
    lfrrsResponseStatus,
    lfrrsFindingIds,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFindings' smart constructor.
data ListFindings = ListFindings'
  { _lfNextToken ::
      !(Maybe Text),
    _lfSortCriteria :: !(Maybe SortCriteria),
    _lfFindingCriteria ::
      !(Maybe FindingCriteria),
    _lfMaxResults :: !(Maybe Nat),
    _lfDetectorId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
--
-- * 'lfSortCriteria' - Represents the criteria used for sorting findings.
--
-- * 'lfFindingCriteria' - Represents the criteria used for querying findings. Valid values include:     * JSON field name     * accountId     * region     * confidence     * id     * resource.accessKeyDetails.accessKeyId     * resource.accessKeyDetails.principalId     * resource.accessKeyDetails.userName     * resource.accessKeyDetails.userType     * resource.instanceDetails.iamInstanceProfile.id     * resource.instanceDetails.imageId     * resource.instanceDetails.instanceId     * resource.instanceDetails.networkInterfaces.ipv6Addresses     * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress     * resource.instanceDetails.networkInterfaces.publicDnsName     * resource.instanceDetails.networkInterfaces.publicIp     * resource.instanceDetails.networkInterfaces.securityGroups.groupId     * resource.instanceDetails.networkInterfaces.securityGroups.groupName     * resource.instanceDetails.networkInterfaces.subnetId     * resource.instanceDetails.networkInterfaces.vpcId     * resource.instanceDetails.tags.key     * resource.instanceDetails.tags.value     * resource.resourceType     * service.action.actionType     * service.action.awsApiCallAction.api     * service.action.awsApiCallAction.callerType     * service.action.awsApiCallAction.remoteIpDetails.city.cityName     * service.action.awsApiCallAction.remoteIpDetails.country.countryName     * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4     * service.action.awsApiCallAction.remoteIpDetails.organization.asn     * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg     * service.action.awsApiCallAction.serviceName     * service.action.dnsRequestAction.domain     * service.action.networkConnectionAction.blocked     * service.action.networkConnectionAction.connectionDirection     * service.action.networkConnectionAction.localPortDetails.port     * service.action.networkConnectionAction.protocol     * service.action.networkConnectionAction.remoteIpDetails.city.cityName     * service.action.networkConnectionAction.remoteIpDetails.country.countryName     * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4     * service.action.networkConnectionAction.remoteIpDetails.organization.asn     * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg     * service.action.networkConnectionAction.remotePortDetails.port     * service.additionalInfo.threatListName     * service.archived When this attribute is set to 'true', only archived findings are listed. When it's set to 'false', only unarchived findings are listed. When this attribute is not set, all existing findings are listed.     * service.resourceRole     * severity     * type     * updatedAt Type: Timestamp in Unix Epoch millisecond format: 1486685375000
--
-- * 'lfMaxResults' - You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.
--
-- * 'lfDetectorId' - The ID of the detector that specifies the GuardDuty service whose findings you want to list.
listFindings ::
  -- | 'lfDetectorId'
  Text ->
  ListFindings
listFindings pDetectorId_ =
  ListFindings'
    { _lfNextToken = Nothing,
      _lfSortCriteria = Nothing,
      _lfFindingCriteria = Nothing,
      _lfMaxResults = Nothing,
      _lfDetectorId = pDetectorId_
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
lfNextToken :: Lens' ListFindings (Maybe Text)
lfNextToken = lens _lfNextToken (\s a -> s {_lfNextToken = a})

-- | Represents the criteria used for sorting findings.
lfSortCriteria :: Lens' ListFindings (Maybe SortCriteria)
lfSortCriteria = lens _lfSortCriteria (\s a -> s {_lfSortCriteria = a})

-- | Represents the criteria used for querying findings. Valid values include:     * JSON field name     * accountId     * region     * confidence     * id     * resource.accessKeyDetails.accessKeyId     * resource.accessKeyDetails.principalId     * resource.accessKeyDetails.userName     * resource.accessKeyDetails.userType     * resource.instanceDetails.iamInstanceProfile.id     * resource.instanceDetails.imageId     * resource.instanceDetails.instanceId     * resource.instanceDetails.networkInterfaces.ipv6Addresses     * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress     * resource.instanceDetails.networkInterfaces.publicDnsName     * resource.instanceDetails.networkInterfaces.publicIp     * resource.instanceDetails.networkInterfaces.securityGroups.groupId     * resource.instanceDetails.networkInterfaces.securityGroups.groupName     * resource.instanceDetails.networkInterfaces.subnetId     * resource.instanceDetails.networkInterfaces.vpcId     * resource.instanceDetails.tags.key     * resource.instanceDetails.tags.value     * resource.resourceType     * service.action.actionType     * service.action.awsApiCallAction.api     * service.action.awsApiCallAction.callerType     * service.action.awsApiCallAction.remoteIpDetails.city.cityName     * service.action.awsApiCallAction.remoteIpDetails.country.countryName     * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4     * service.action.awsApiCallAction.remoteIpDetails.organization.asn     * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg     * service.action.awsApiCallAction.serviceName     * service.action.dnsRequestAction.domain     * service.action.networkConnectionAction.blocked     * service.action.networkConnectionAction.connectionDirection     * service.action.networkConnectionAction.localPortDetails.port     * service.action.networkConnectionAction.protocol     * service.action.networkConnectionAction.remoteIpDetails.city.cityName     * service.action.networkConnectionAction.remoteIpDetails.country.countryName     * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4     * service.action.networkConnectionAction.remoteIpDetails.organization.asn     * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg     * service.action.networkConnectionAction.remotePortDetails.port     * service.additionalInfo.threatListName     * service.archived When this attribute is set to 'true', only archived findings are listed. When it's set to 'false', only unarchived findings are listed. When this attribute is not set, all existing findings are listed.     * service.resourceRole     * severity     * type     * updatedAt Type: Timestamp in Unix Epoch millisecond format: 1486685375000
lfFindingCriteria :: Lens' ListFindings (Maybe FindingCriteria)
lfFindingCriteria = lens _lfFindingCriteria (\s a -> s {_lfFindingCriteria = a})

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.
lfMaxResults :: Lens' ListFindings (Maybe Natural)
lfMaxResults = lens _lfMaxResults (\s a -> s {_lfMaxResults = a}) . mapping _Nat

-- | The ID of the detector that specifies the GuardDuty service whose findings you want to list.
lfDetectorId :: Lens' ListFindings Text
lfDetectorId = lens _lfDetectorId (\s a -> s {_lfDetectorId = a})

instance AWSPager ListFindings where
  page rq rs
    | stop (rs ^. lfrrsNextToken) = Nothing
    | stop (rs ^. lfrrsFindingIds) = Nothing
    | otherwise =
      Just $ rq & lfNextToken .~ rs ^. lfrrsNextToken

instance AWSRequest ListFindings where
  type Rs ListFindings = ListFindingsResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          ListFindingsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "findingIds" .!@ mempty)
      )

instance Hashable ListFindings

instance NFData ListFindings

instance ToHeaders ListFindings where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListFindings where
  toJSON ListFindings' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lfNextToken,
            ("sortCriteria" .=) <$> _lfSortCriteria,
            ("findingCriteria" .=) <$> _lfFindingCriteria,
            ("maxResults" .=) <$> _lfMaxResults
          ]
      )

instance ToPath ListFindings where
  toPath ListFindings' {..} =
    mconcat
      ["/detector/", toBS _lfDetectorId, "/findings"]

instance ToQuery ListFindings where
  toQuery = const mempty

-- | /See:/ 'listFindingsResponse' smart constructor.
data ListFindingsResponse = ListFindingsResponse'
  { _lfrrsNextToken ::
      !(Maybe Text),
    _lfrrsResponseStatus :: !Int,
    _lfrrsFindingIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrrsNextToken' - The pagination parameter to be used on the next list operation to retrieve more items.
--
-- * 'lfrrsResponseStatus' - -- | The response status code.
--
-- * 'lfrrsFindingIds' - The IDs of the findings that you're listing.
listFindingsResponse ::
  -- | 'lfrrsResponseStatus'
  Int ->
  ListFindingsResponse
listFindingsResponse pResponseStatus_ =
  ListFindingsResponse'
    { _lfrrsNextToken = Nothing,
      _lfrrsResponseStatus = pResponseStatus_,
      _lfrrsFindingIds = mempty
    }

-- | The pagination parameter to be used on the next list operation to retrieve more items.
lfrrsNextToken :: Lens' ListFindingsResponse (Maybe Text)
lfrrsNextToken = lens _lfrrsNextToken (\s a -> s {_lfrrsNextToken = a})

-- | -- | The response status code.
lfrrsResponseStatus :: Lens' ListFindingsResponse Int
lfrrsResponseStatus = lens _lfrrsResponseStatus (\s a -> s {_lfrrsResponseStatus = a})

-- | The IDs of the findings that you're listing.
lfrrsFindingIds :: Lens' ListFindingsResponse [Text]
lfrrsFindingIds = lens _lfrrsFindingIds (\s a -> s {_lfrrsFindingIds = a}) . _Coerce

instance NFData ListFindingsResponse
