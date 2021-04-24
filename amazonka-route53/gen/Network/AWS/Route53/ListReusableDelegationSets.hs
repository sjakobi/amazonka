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
-- Module      : Network.AWS.Route53.ListReusableDelegationSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of the reusable delegation sets that are associated with the current AWS account.
module Network.AWS.Route53.ListReusableDelegationSets
  ( -- * Creating a Request
    listReusableDelegationSets,
    ListReusableDelegationSets,

    -- * Request Lenses
    lrdsMaxItems,
    lrdsMarker,

    -- * Destructuring the Response
    listReusableDelegationSetsResponse,
    ListReusableDelegationSetsResponse,

    -- * Response Lenses
    lrdsrrsNextMarker,
    lrdsrrsResponseStatus,
    lrdsrrsDelegationSets,
    lrdsrrsMarker,
    lrdsrrsIsTruncated,
    lrdsrrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to get a list of the reusable delegation sets that are associated with the current AWS account.
--
--
--
-- /See:/ 'listReusableDelegationSets' smart constructor.
data ListReusableDelegationSets = ListReusableDelegationSets'
  { _lrdsMaxItems ::
      !(Maybe Text),
    _lrdsMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListReusableDelegationSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrdsMaxItems' - The number of reusable delegation sets that you want Amazon Route 53 to return in the response to this request. If you specify a value greater than 100, Route 53 returns only the first 100 reusable delegation sets.
--
-- * 'lrdsMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more reusable delegation sets. To get another group, submit another @ListReusableDelegationSets@ request.  For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first reusable delegation set that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more reusable delegation sets to get.
listReusableDelegationSets ::
  ListReusableDelegationSets
listReusableDelegationSets =
  ListReusableDelegationSets'
    { _lrdsMaxItems =
        Nothing,
      _lrdsMarker = Nothing
    }

-- | The number of reusable delegation sets that you want Amazon Route 53 to return in the response to this request. If you specify a value greater than 100, Route 53 returns only the first 100 reusable delegation sets.
lrdsMaxItems :: Lens' ListReusableDelegationSets (Maybe Text)
lrdsMaxItems = lens _lrdsMaxItems (\s a -> s {_lrdsMaxItems = a})

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more reusable delegation sets. To get another group, submit another @ListReusableDelegationSets@ request.  For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first reusable delegation set that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more reusable delegation sets to get.
lrdsMarker :: Lens' ListReusableDelegationSets (Maybe Text)
lrdsMarker = lens _lrdsMarker (\s a -> s {_lrdsMarker = a})

instance AWSRequest ListReusableDelegationSets where
  type
    Rs ListReusableDelegationSets =
      ListReusableDelegationSetsResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListReusableDelegationSetsResponse'
            <$> (x .@? "NextMarker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "DelegationSets" .!@ mempty
                    >>= parseXMLList "DelegationSet"
                )
            <*> (x .@ "Marker")
            <*> (x .@ "IsTruncated")
            <*> (x .@ "MaxItems")
      )

instance Hashable ListReusableDelegationSets

instance NFData ListReusableDelegationSets

instance ToHeaders ListReusableDelegationSets where
  toHeaders = const mempty

instance ToPath ListReusableDelegationSets where
  toPath = const "/2013-04-01/delegationset"

instance ToQuery ListReusableDelegationSets where
  toQuery ListReusableDelegationSets' {..} =
    mconcat
      [ "maxitems" =: _lrdsMaxItems,
        "marker" =: _lrdsMarker
      ]

-- | A complex type that contains information about the reusable delegation sets that are associated with the current AWS account.
--
--
--
-- /See:/ 'listReusableDelegationSetsResponse' smart constructor.
data ListReusableDelegationSetsResponse = ListReusableDelegationSetsResponse'
  { _lrdsrrsNextMarker ::
      !( Maybe
           Text
       ),
    _lrdsrrsResponseStatus ::
      !Int,
    _lrdsrrsDelegationSets ::
      ![DelegationSet],
    _lrdsrrsMarker ::
      !Text,
    _lrdsrrsIsTruncated ::
      !Bool,
    _lrdsrrsMaxItems ::
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

-- | Creates a value of 'ListReusableDelegationSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrdsrrsNextMarker' - If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the next reusable delegation set that Amazon Route 53 will return if you submit another @ListReusableDelegationSets@ request and specify the value of @NextMarker@ in the @marker@ parameter.
--
-- * 'lrdsrrsResponseStatus' - -- | The response status code.
--
-- * 'lrdsrrsDelegationSets' - A complex type that contains one @DelegationSet@ element for each reusable delegation set that was created by the current AWS account.
--
-- * 'lrdsrrsMarker' - For the second and subsequent calls to @ListReusableDelegationSets@ , @Marker@ is the value that you specified for the @marker@ parameter in the request that produced the current response.
--
-- * 'lrdsrrsIsTruncated' - A flag that indicates whether there are more reusable delegation sets to be listed.
--
-- * 'lrdsrrsMaxItems' - The value that you specified for the @maxitems@ parameter in the call to @ListReusableDelegationSets@ that produced the current response.
listReusableDelegationSetsResponse ::
  -- | 'lrdsrrsResponseStatus'
  Int ->
  -- | 'lrdsrrsMarker'
  Text ->
  -- | 'lrdsrrsIsTruncated'
  Bool ->
  -- | 'lrdsrrsMaxItems'
  Text ->
  ListReusableDelegationSetsResponse
listReusableDelegationSetsResponse
  pResponseStatus_
  pMarker_
  pIsTruncated_
  pMaxItems_ =
    ListReusableDelegationSetsResponse'
      { _lrdsrrsNextMarker =
          Nothing,
        _lrdsrrsResponseStatus =
          pResponseStatus_,
        _lrdsrrsDelegationSets = mempty,
        _lrdsrrsMarker = pMarker_,
        _lrdsrrsIsTruncated = pIsTruncated_,
        _lrdsrrsMaxItems = pMaxItems_
      }

-- | If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the next reusable delegation set that Amazon Route 53 will return if you submit another @ListReusableDelegationSets@ request and specify the value of @NextMarker@ in the @marker@ parameter.
lrdsrrsNextMarker :: Lens' ListReusableDelegationSetsResponse (Maybe Text)
lrdsrrsNextMarker = lens _lrdsrrsNextMarker (\s a -> s {_lrdsrrsNextMarker = a})

-- | -- | The response status code.
lrdsrrsResponseStatus :: Lens' ListReusableDelegationSetsResponse Int
lrdsrrsResponseStatus = lens _lrdsrrsResponseStatus (\s a -> s {_lrdsrrsResponseStatus = a})

-- | A complex type that contains one @DelegationSet@ element for each reusable delegation set that was created by the current AWS account.
lrdsrrsDelegationSets :: Lens' ListReusableDelegationSetsResponse [DelegationSet]
lrdsrrsDelegationSets = lens _lrdsrrsDelegationSets (\s a -> s {_lrdsrrsDelegationSets = a}) . _Coerce

-- | For the second and subsequent calls to @ListReusableDelegationSets@ , @Marker@ is the value that you specified for the @marker@ parameter in the request that produced the current response.
lrdsrrsMarker :: Lens' ListReusableDelegationSetsResponse Text
lrdsrrsMarker = lens _lrdsrrsMarker (\s a -> s {_lrdsrrsMarker = a})

-- | A flag that indicates whether there are more reusable delegation sets to be listed.
lrdsrrsIsTruncated :: Lens' ListReusableDelegationSetsResponse Bool
lrdsrrsIsTruncated = lens _lrdsrrsIsTruncated (\s a -> s {_lrdsrrsIsTruncated = a})

-- | The value that you specified for the @maxitems@ parameter in the call to @ListReusableDelegationSets@ that produced the current response.
lrdsrrsMaxItems :: Lens' ListReusableDelegationSetsResponse Text
lrdsrrsMaxItems = lens _lrdsrrsMaxItems (\s a -> s {_lrdsrrsMaxItems = a})

instance NFData ListReusableDelegationSetsResponse
