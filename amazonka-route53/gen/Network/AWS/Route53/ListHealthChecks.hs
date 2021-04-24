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
-- Module      : Network.AWS.Route53.ListHealthChecks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a list of the health checks that are associated with the current AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Route53.ListHealthChecks
  ( -- * Creating a Request
    listHealthChecks,
    ListHealthChecks,

    -- * Request Lenses
    lhcMaxItems,
    lhcMarker,

    -- * Destructuring the Response
    listHealthChecksResponse,
    ListHealthChecksResponse,

    -- * Response Lenses
    lhcrrsNextMarker,
    lhcrrsResponseStatus,
    lhcrrsHealthChecks,
    lhcrrsMarker,
    lhcrrsIsTruncated,
    lhcrrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to retrieve a list of the health checks that are associated with the current AWS account.
--
--
--
-- /See:/ 'listHealthChecks' smart constructor.
data ListHealthChecks = ListHealthChecks'
  { _lhcMaxItems ::
      !(Maybe Text),
    _lhcMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHealthChecks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhcMaxItems' - The maximum number of health checks that you want @ListHealthChecks@ to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set @MaxItems@ to a value greater than 100, Route 53 returns only the first 100 health checks.
--
-- * 'lhcMarker' - If the value of @IsTruncated@ in the previous response was @true@ , you have more health checks. To get another group, submit another @ListHealthChecks@ request.  For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more health checks to get.
listHealthChecks ::
  ListHealthChecks
listHealthChecks =
  ListHealthChecks'
    { _lhcMaxItems = Nothing,
      _lhcMarker = Nothing
    }

-- | The maximum number of health checks that you want @ListHealthChecks@ to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set @MaxItems@ to a value greater than 100, Route 53 returns only the first 100 health checks.
lhcMaxItems :: Lens' ListHealthChecks (Maybe Text)
lhcMaxItems = lens _lhcMaxItems (\s a -> s {_lhcMaxItems = a})

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more health checks. To get another group, submit another @ListHealthChecks@ request.  For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request. If the value of @IsTruncated@ in the previous response was @false@ , there are no more health checks to get.
lhcMarker :: Lens' ListHealthChecks (Maybe Text)
lhcMarker = lens _lhcMarker (\s a -> s {_lhcMarker = a})

instance AWSPager ListHealthChecks where
  page rq rs
    | stop (rs ^. lhcrrsIsTruncated) = Nothing
    | isNothing (rs ^. lhcrrsNextMarker) = Nothing
    | otherwise =
      Just $ rq & lhcMarker .~ rs ^. lhcrrsNextMarker

instance AWSRequest ListHealthChecks where
  type Rs ListHealthChecks = ListHealthChecksResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListHealthChecksResponse'
            <$> (x .@? "NextMarker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "HealthChecks" .!@ mempty
                    >>= parseXMLList "HealthCheck"
                )
            <*> (x .@ "Marker")
            <*> (x .@ "IsTruncated")
            <*> (x .@ "MaxItems")
      )

instance Hashable ListHealthChecks

instance NFData ListHealthChecks

instance ToHeaders ListHealthChecks where
  toHeaders = const mempty

instance ToPath ListHealthChecks where
  toPath = const "/2013-04-01/healthcheck"

instance ToQuery ListHealthChecks where
  toQuery ListHealthChecks' {..} =
    mconcat
      ["maxitems" =: _lhcMaxItems, "marker" =: _lhcMarker]

-- | A complex type that contains the response to a @ListHealthChecks@ request.
--
--
--
-- /See:/ 'listHealthChecksResponse' smart constructor.
data ListHealthChecksResponse = ListHealthChecksResponse'
  { _lhcrrsNextMarker ::
      !(Maybe Text),
    _lhcrrsResponseStatus ::
      !Int,
    _lhcrrsHealthChecks ::
      ![HealthCheck],
    _lhcrrsMarker ::
      !Text,
    _lhcrrsIsTruncated ::
      !Bool,
    _lhcrrsMaxItems ::
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

-- | Creates a value of 'ListHealthChecksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhcrrsNextMarker' - If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the first health check that Amazon Route 53 returns if you submit another @ListHealthChecks@ request and specify the value of @NextMarker@ in the @marker@ parameter.
--
-- * 'lhcrrsResponseStatus' - -- | The response status code.
--
-- * 'lhcrrsHealthChecks' - A complex type that contains one @HealthCheck@ element for each health check that is associated with the current AWS account.
--
-- * 'lhcrrsMarker' - For the second and subsequent calls to @ListHealthChecks@ , @Marker@ is the value that you specified for the @marker@ parameter in the previous request.
--
-- * 'lhcrrsIsTruncated' - A flag that indicates whether there are more health checks to be listed. If the response was truncated, you can get the next group of health checks by submitting another @ListHealthChecks@ request and specifying the value of @NextMarker@ in the @marker@ parameter.
--
-- * 'lhcrrsMaxItems' - The value that you specified for the @maxitems@ parameter in the call to @ListHealthChecks@ that produced the current response.
listHealthChecksResponse ::
  -- | 'lhcrrsResponseStatus'
  Int ->
  -- | 'lhcrrsMarker'
  Text ->
  -- | 'lhcrrsIsTruncated'
  Bool ->
  -- | 'lhcrrsMaxItems'
  Text ->
  ListHealthChecksResponse
listHealthChecksResponse
  pResponseStatus_
  pMarker_
  pIsTruncated_
  pMaxItems_ =
    ListHealthChecksResponse'
      { _lhcrrsNextMarker =
          Nothing,
        _lhcrrsResponseStatus = pResponseStatus_,
        _lhcrrsHealthChecks = mempty,
        _lhcrrsMarker = pMarker_,
        _lhcrrsIsTruncated = pIsTruncated_,
        _lhcrrsMaxItems = pMaxItems_
      }

-- | If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the first health check that Amazon Route 53 returns if you submit another @ListHealthChecks@ request and specify the value of @NextMarker@ in the @marker@ parameter.
lhcrrsNextMarker :: Lens' ListHealthChecksResponse (Maybe Text)
lhcrrsNextMarker = lens _lhcrrsNextMarker (\s a -> s {_lhcrrsNextMarker = a})

-- | -- | The response status code.
lhcrrsResponseStatus :: Lens' ListHealthChecksResponse Int
lhcrrsResponseStatus = lens _lhcrrsResponseStatus (\s a -> s {_lhcrrsResponseStatus = a})

-- | A complex type that contains one @HealthCheck@ element for each health check that is associated with the current AWS account.
lhcrrsHealthChecks :: Lens' ListHealthChecksResponse [HealthCheck]
lhcrrsHealthChecks = lens _lhcrrsHealthChecks (\s a -> s {_lhcrrsHealthChecks = a}) . _Coerce

-- | For the second and subsequent calls to @ListHealthChecks@ , @Marker@ is the value that you specified for the @marker@ parameter in the previous request.
lhcrrsMarker :: Lens' ListHealthChecksResponse Text
lhcrrsMarker = lens _lhcrrsMarker (\s a -> s {_lhcrrsMarker = a})

-- | A flag that indicates whether there are more health checks to be listed. If the response was truncated, you can get the next group of health checks by submitting another @ListHealthChecks@ request and specifying the value of @NextMarker@ in the @marker@ parameter.
lhcrrsIsTruncated :: Lens' ListHealthChecksResponse Bool
lhcrrsIsTruncated = lens _lhcrrsIsTruncated (\s a -> s {_lhcrrsIsTruncated = a})

-- | The value that you specified for the @maxitems@ parameter in the call to @ListHealthChecks@ that produced the current response.
lhcrrsMaxItems :: Lens' ListHealthChecksResponse Text
lhcrrsMaxItems = lens _lhcrrsMaxItems (\s a -> s {_lhcrrsMaxItems = a})

instance NFData ListHealthChecksResponse
