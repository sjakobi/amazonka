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
-- Module      : Network.AWS.Route53.ListVPCAssociationAuthorizations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more @CreateVPCAssociationAuthorization@ requests.
--
--
-- The response includes a @VPCs@ element with a @VPC@ child element for each VPC that can be associated with the hosted zone.
--
--
-- This operation returns paginated results.
module Network.AWS.Route53.ListVPCAssociationAuthorizations
  ( -- * Creating a Request
    listVPCAssociationAuthorizations,
    ListVPCAssociationAuthorizations,

    -- * Request Lenses
    lvaaNextToken,
    lvaaMaxResults,
    lvaaHostedZoneId,

    -- * Destructuring the Response
    listVPCAssociationAuthorizationsResponse,
    ListVPCAssociationAuthorizationsResponse,

    -- * Response Lenses
    lvaarrsNextToken,
    lvaarrsResponseStatus,
    lvaarrsHostedZoneId,
    lvaarrsVPCs,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains information about that can be associated with your hosted zone.
--
--
--
-- /See:/ 'listVPCAssociationAuthorizations' smart constructor.
data ListVPCAssociationAuthorizations = ListVPCAssociationAuthorizations'
  { _lvaaNextToken ::
      !( Maybe
           Text
       ),
    _lvaaMaxResults ::
      !( Maybe
           Text
       ),
    _lvaaHostedZoneId ::
      !ResourceId
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListVPCAssociationAuthorizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvaaNextToken' - /Optional/ : If a response includes a @NextToken@ element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of results, submit another request, and include the value of @NextToken@ from the response in the @nexttoken@ parameter in another @ListVPCAssociationAuthorizations@ request.
--
-- * 'lvaaMaxResults' - /Optional/ : An integer that specifies the maximum number of VPCs that you want Amazon Route 53 to return. If you don't specify a value for @MaxResults@ , Route 53 returns up to 50 VPCs per page.
--
-- * 'lvaaHostedZoneId' - The ID of the hosted zone for which you want a list of VPCs that can be associated with the hosted zone.
listVPCAssociationAuthorizations ::
  -- | 'lvaaHostedZoneId'
  ResourceId ->
  ListVPCAssociationAuthorizations
listVPCAssociationAuthorizations pHostedZoneId_ =
  ListVPCAssociationAuthorizations'
    { _lvaaNextToken =
        Nothing,
      _lvaaMaxResults = Nothing,
      _lvaaHostedZoneId = pHostedZoneId_
    }

-- | /Optional/ : If a response includes a @NextToken@ element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of results, submit another request, and include the value of @NextToken@ from the response in the @nexttoken@ parameter in another @ListVPCAssociationAuthorizations@ request.
lvaaNextToken :: Lens' ListVPCAssociationAuthorizations (Maybe Text)
lvaaNextToken = lens _lvaaNextToken (\s a -> s {_lvaaNextToken = a})

-- | /Optional/ : An integer that specifies the maximum number of VPCs that you want Amazon Route 53 to return. If you don't specify a value for @MaxResults@ , Route 53 returns up to 50 VPCs per page.
lvaaMaxResults :: Lens' ListVPCAssociationAuthorizations (Maybe Text)
lvaaMaxResults = lens _lvaaMaxResults (\s a -> s {_lvaaMaxResults = a})

-- | The ID of the hosted zone for which you want a list of VPCs that can be associated with the hosted zone.
lvaaHostedZoneId :: Lens' ListVPCAssociationAuthorizations ResourceId
lvaaHostedZoneId = lens _lvaaHostedZoneId (\s a -> s {_lvaaHostedZoneId = a})

instance AWSPager ListVPCAssociationAuthorizations where
  page rq rs
    | stop (rs ^. lvaarrsNextToken) = Nothing
    | stop (rs ^. lvaarrsVPCs) = Nothing
    | otherwise =
      Just $ rq & lvaaNextToken .~ rs ^. lvaarrsNextToken

instance AWSRequest ListVPCAssociationAuthorizations where
  type
    Rs ListVPCAssociationAuthorizations =
      ListVPCAssociationAuthorizationsResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListVPCAssociationAuthorizationsResponse'
            <$> (x .@? "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .@ "HostedZoneId")
            <*> (x .@? "VPCs" .!@ mempty >>= parseXMLList1 "VPC")
      )

instance Hashable ListVPCAssociationAuthorizations

instance NFData ListVPCAssociationAuthorizations

instance ToHeaders ListVPCAssociationAuthorizations where
  toHeaders = const mempty

instance ToPath ListVPCAssociationAuthorizations where
  toPath ListVPCAssociationAuthorizations' {..} =
    mconcat
      [ "/2013-04-01/hostedzone/",
        toBS _lvaaHostedZoneId,
        "/authorizevpcassociation"
      ]

instance ToQuery ListVPCAssociationAuthorizations where
  toQuery ListVPCAssociationAuthorizations' {..} =
    mconcat
      [ "nexttoken" =: _lvaaNextToken,
        "maxresults" =: _lvaaMaxResults
      ]

-- | A complex type that contains the response information for the request.
--
--
--
-- /See:/ 'listVPCAssociationAuthorizationsResponse' smart constructor.
data ListVPCAssociationAuthorizationsResponse = ListVPCAssociationAuthorizationsResponse'
  { _lvaarrsNextToken ::
      !( Maybe
           Text
       ),
    _lvaarrsResponseStatus ::
      !Int,
    _lvaarrsHostedZoneId ::
      !ResourceId,
    _lvaarrsVPCs ::
      !( List1
           VPC
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListVPCAssociationAuthorizationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvaarrsNextToken' - When the response includes a @NextToken@ element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of VPCs, submit another @ListVPCAssociationAuthorizations@ request, and include the value of the @NextToken@ element from the response in the @nexttoken@ request parameter.
--
-- * 'lvaarrsResponseStatus' - -- | The response status code.
--
-- * 'lvaarrsHostedZoneId' - The ID of the hosted zone that you can associate the listed VPCs with.
--
-- * 'lvaarrsVPCs' - The list of VPCs that are authorized to be associated with the specified hosted zone.
listVPCAssociationAuthorizationsResponse ::
  -- | 'lvaarrsResponseStatus'
  Int ->
  -- | 'lvaarrsHostedZoneId'
  ResourceId ->
  -- | 'lvaarrsVPCs'
  NonEmpty VPC ->
  ListVPCAssociationAuthorizationsResponse
listVPCAssociationAuthorizationsResponse
  pResponseStatus_
  pHostedZoneId_
  pVPCs_ =
    ListVPCAssociationAuthorizationsResponse'
      { _lvaarrsNextToken =
          Nothing,
        _lvaarrsResponseStatus =
          pResponseStatus_,
        _lvaarrsHostedZoneId =
          pHostedZoneId_,
        _lvaarrsVPCs = _List1 # pVPCs_
      }

-- | When the response includes a @NextToken@ element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of VPCs, submit another @ListVPCAssociationAuthorizations@ request, and include the value of the @NextToken@ element from the response in the @nexttoken@ request parameter.
lvaarrsNextToken :: Lens' ListVPCAssociationAuthorizationsResponse (Maybe Text)
lvaarrsNextToken = lens _lvaarrsNextToken (\s a -> s {_lvaarrsNextToken = a})

-- | -- | The response status code.
lvaarrsResponseStatus :: Lens' ListVPCAssociationAuthorizationsResponse Int
lvaarrsResponseStatus = lens _lvaarrsResponseStatus (\s a -> s {_lvaarrsResponseStatus = a})

-- | The ID of the hosted zone that you can associate the listed VPCs with.
lvaarrsHostedZoneId :: Lens' ListVPCAssociationAuthorizationsResponse ResourceId
lvaarrsHostedZoneId = lens _lvaarrsHostedZoneId (\s a -> s {_lvaarrsHostedZoneId = a})

-- | The list of VPCs that are authorized to be associated with the specified hosted zone.
lvaarrsVPCs :: Lens' ListVPCAssociationAuthorizationsResponse (NonEmpty VPC)
lvaarrsVPCs = lens _lvaarrsVPCs (\s a -> s {_lvaarrsVPCs = a}) . _List1

instance
  NFData
    ListVPCAssociationAuthorizationsResponse
