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
-- Module      : Network.AWS.Route53.ListHostedZones
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of the public and private hosted zones that are associated with the current AWS account. The response includes a @HostedZones@ child element for each hosted zone.
--
--
-- Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the @maxitems@ parameter to list them in groups of up to 100.
--
--
-- This operation returns paginated results.
module Network.AWS.Route53.ListHostedZones
  ( -- * Creating a Request
    listHostedZones,
    ListHostedZones,

    -- * Request Lenses
    lhzDelegationSetId,
    lhzMaxItems,
    lhzMarker,

    -- * Destructuring the Response
    listHostedZonesResponse,
    ListHostedZonesResponse,

    -- * Response Lenses
    lhzrrsNextMarker,
    lhzrrsMarker,
    lhzrrsResponseStatus,
    lhzrrsHostedZones,
    lhzrrsIsTruncated,
    lhzrrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to retrieve a list of the public and private hosted zones that are associated with the current AWS account.
--
--
--
-- /See:/ 'listHostedZones' smart constructor.
data ListHostedZones = ListHostedZones'
  { _lhzDelegationSetId ::
      !(Maybe ResourceId),
    _lhzMaxItems :: !(Maybe Text),
    _lhzMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHostedZones' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhzDelegationSetId' - If you're using reusable delegation sets and you want to list all of the hosted zones that are associated with a reusable delegation set, specify the ID of that reusable delegation set.
--
-- * 'lhzMaxItems' - (Optional) The maximum number of hosted zones that you want Amazon Route 53 to return. If you have more than @maxitems@ hosted zones, the value of @IsTruncated@ in the response is @true@ , and the value of @NextMarker@ is the hosted zone ID of the first hosted zone that Route 53 will return if you submit another request.
--
-- * 'lhzMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more hosted zones. To get more hosted zones, submit another @ListHostedZones@ request.  For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first hosted zone that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more hosted zones to get.
listHostedZones ::
  ListHostedZones
listHostedZones =
  ListHostedZones'
    { _lhzDelegationSetId = Nothing,
      _lhzMaxItems = Nothing,
      _lhzMarker = Nothing
    }

-- | If you're using reusable delegation sets and you want to list all of the hosted zones that are associated with a reusable delegation set, specify the ID of that reusable delegation set.
lhzDelegationSetId :: Lens' ListHostedZones (Maybe ResourceId)
lhzDelegationSetId = lens _lhzDelegationSetId (\s a -> s {_lhzDelegationSetId = a})

-- | (Optional) The maximum number of hosted zones that you want Amazon Route 53 to return. If you have more than @maxitems@ hosted zones, the value of @IsTruncated@ in the response is @true@ , and the value of @NextMarker@ is the hosted zone ID of the first hosted zone that Route 53 will return if you submit another request.
lhzMaxItems :: Lens' ListHostedZones (Maybe Text)
lhzMaxItems = lens _lhzMaxItems (\s a -> s {_lhzMaxItems = a})

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more hosted zones. To get more hosted zones, submit another @ListHostedZones@ request.  For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first hosted zone that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more hosted zones to get.
lhzMarker :: Lens' ListHostedZones (Maybe Text)
lhzMarker = lens _lhzMarker (\s a -> s {_lhzMarker = a})

instance AWSPager ListHostedZones where
  page rq rs
    | stop (rs ^. lhzrrsIsTruncated) = Nothing
    | isNothing (rs ^. lhzrrsNextMarker) = Nothing
    | otherwise =
      Just $ rq & lhzMarker .~ rs ^. lhzrrsNextMarker

instance AWSRequest ListHostedZones where
  type Rs ListHostedZones = ListHostedZonesResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListHostedZonesResponse'
            <$> (x .@? "NextMarker")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "HostedZones" .!@ mempty
                    >>= parseXMLList "HostedZone"
                )
            <*> (x .@ "IsTruncated")
            <*> (x .@ "MaxItems")
      )

instance Hashable ListHostedZones

instance NFData ListHostedZones

instance ToHeaders ListHostedZones where
  toHeaders = const mempty

instance ToPath ListHostedZones where
  toPath = const "/2013-04-01/hostedzone"

instance ToQuery ListHostedZones where
  toQuery ListHostedZones' {..} =
    mconcat
      [ "delegationsetid" =: _lhzDelegationSetId,
        "maxitems" =: _lhzMaxItems,
        "marker" =: _lhzMarker
      ]

-- | /See:/ 'listHostedZonesResponse' smart constructor.
data ListHostedZonesResponse = ListHostedZonesResponse'
  { _lhzrrsNextMarker ::
      !(Maybe Text),
    _lhzrrsMarker ::
      !(Maybe Text),
    _lhzrrsResponseStatus ::
      !Int,
    _lhzrrsHostedZones ::
      ![HostedZone],
    _lhzrrsIsTruncated ::
      !Bool,
    _lhzrrsMaxItems ::
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

-- | Creates a value of 'ListHostedZonesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhzrrsNextMarker' - If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the first hosted zone in the next group of hosted zones. Submit another @ListHostedZones@ request, and specify the value of @NextMarker@ from the response in the @marker@ parameter. This element is present only if @IsTruncated@ is @true@ .
--
-- * 'lhzrrsMarker' - For the second and subsequent calls to @ListHostedZones@ , @Marker@ is the value that you specified for the @marker@ parameter in the request that produced the current response.
--
-- * 'lhzrrsResponseStatus' - -- | The response status code.
--
-- * 'lhzrrsHostedZones' - A complex type that contains general information about the hosted zone.
--
-- * 'lhzrrsIsTruncated' - A flag indicating whether there are more hosted zones to be listed. If the response was truncated, you can get more hosted zones by submitting another @ListHostedZones@ request and specifying the value of @NextMarker@ in the @marker@ parameter.
--
-- * 'lhzrrsMaxItems' - The value that you specified for the @maxitems@ parameter in the call to @ListHostedZones@ that produced the current response.
listHostedZonesResponse ::
  -- | 'lhzrrsResponseStatus'
  Int ->
  -- | 'lhzrrsIsTruncated'
  Bool ->
  -- | 'lhzrrsMaxItems'
  Text ->
  ListHostedZonesResponse
listHostedZonesResponse
  pResponseStatus_
  pIsTruncated_
  pMaxItems_ =
    ListHostedZonesResponse'
      { _lhzrrsNextMarker =
          Nothing,
        _lhzrrsMarker = Nothing,
        _lhzrrsResponseStatus = pResponseStatus_,
        _lhzrrsHostedZones = mempty,
        _lhzrrsIsTruncated = pIsTruncated_,
        _lhzrrsMaxItems = pMaxItems_
      }

-- | If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the first hosted zone in the next group of hosted zones. Submit another @ListHostedZones@ request, and specify the value of @NextMarker@ from the response in the @marker@ parameter. This element is present only if @IsTruncated@ is @true@ .
lhzrrsNextMarker :: Lens' ListHostedZonesResponse (Maybe Text)
lhzrrsNextMarker = lens _lhzrrsNextMarker (\s a -> s {_lhzrrsNextMarker = a})

-- | For the second and subsequent calls to @ListHostedZones@ , @Marker@ is the value that you specified for the @marker@ parameter in the request that produced the current response.
lhzrrsMarker :: Lens' ListHostedZonesResponse (Maybe Text)
lhzrrsMarker = lens _lhzrrsMarker (\s a -> s {_lhzrrsMarker = a})

-- | -- | The response status code.
lhzrrsResponseStatus :: Lens' ListHostedZonesResponse Int
lhzrrsResponseStatus = lens _lhzrrsResponseStatus (\s a -> s {_lhzrrsResponseStatus = a})

-- | A complex type that contains general information about the hosted zone.
lhzrrsHostedZones :: Lens' ListHostedZonesResponse [HostedZone]
lhzrrsHostedZones = lens _lhzrrsHostedZones (\s a -> s {_lhzrrsHostedZones = a}) . _Coerce

-- | A flag indicating whether there are more hosted zones to be listed. If the response was truncated, you can get more hosted zones by submitting another @ListHostedZones@ request and specifying the value of @NextMarker@ in the @marker@ parameter.
lhzrrsIsTruncated :: Lens' ListHostedZonesResponse Bool
lhzrrsIsTruncated = lens _lhzrrsIsTruncated (\s a -> s {_lhzrrsIsTruncated = a})

-- | The value that you specified for the @maxitems@ parameter in the call to @ListHostedZones@ that produced the current response.
lhzrrsMaxItems :: Lens' ListHostedZonesResponse Text
lhzrrsMaxItems = lens _lhzrrsMaxItems (\s a -> s {_lhzrrsMaxItems = a})

instance NFData ListHostedZonesResponse
