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
-- Module      : Network.AWS.APIGateway.GetUsagePlanKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets all the usage plan keys representing the API keys added to a specified usage plan.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetUsagePlanKeys
  ( -- * Creating a Request
    getUsagePlanKeys,
    GetUsagePlanKeys,

    -- * Request Lenses
    gPosition,
    gLimit,
    gNameQuery,
    gUsagePlanId,

    -- * Destructuring the Response
    getUsagePlanKeysResponse,
    GetUsagePlanKeysResponse,

    -- * Response Lenses
    gupkrrsItems,
    gupkrrsPosition,
    gupkrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The GET request to get all the usage plan keys representing the API keys added to a specified usage plan.
--
--
--
-- /See:/ 'getUsagePlanKeys' smart constructor.
data GetUsagePlanKeys = GetUsagePlanKeys'
  { _gPosition ::
      !(Maybe Text),
    _gLimit :: !(Maybe Int),
    _gNameQuery :: !(Maybe Text),
    _gUsagePlanId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUsagePlanKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gPosition' - The current pagination position in the paged result set.
--
-- * 'gLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gNameQuery' - A query parameter specifying the name of the to-be-returned usage plan keys.
--
-- * 'gUsagePlanId' - [Required] The Id of the 'UsagePlan' resource representing the usage plan containing the to-be-retrieved 'UsagePlanKey' resource representing a plan customer.
getUsagePlanKeys ::
  -- | 'gUsagePlanId'
  Text ->
  GetUsagePlanKeys
getUsagePlanKeys pUsagePlanId_ =
  GetUsagePlanKeys'
    { _gPosition = Nothing,
      _gLimit = Nothing,
      _gNameQuery = Nothing,
      _gUsagePlanId = pUsagePlanId_
    }

-- | The current pagination position in the paged result set.
gPosition :: Lens' GetUsagePlanKeys (Maybe Text)
gPosition = lens _gPosition (\s a -> s {_gPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gLimit :: Lens' GetUsagePlanKeys (Maybe Int)
gLimit = lens _gLimit (\s a -> s {_gLimit = a})

-- | A query parameter specifying the name of the to-be-returned usage plan keys.
gNameQuery :: Lens' GetUsagePlanKeys (Maybe Text)
gNameQuery = lens _gNameQuery (\s a -> s {_gNameQuery = a})

-- | [Required] The Id of the 'UsagePlan' resource representing the usage plan containing the to-be-retrieved 'UsagePlanKey' resource representing a plan customer.
gUsagePlanId :: Lens' GetUsagePlanKeys Text
gUsagePlanId = lens _gUsagePlanId (\s a -> s {_gUsagePlanId = a})

instance AWSPager GetUsagePlanKeys where
  page rq rs
    | stop (rs ^. gupkrrsPosition) = Nothing
    | stop (rs ^. gupkrrsItems) = Nothing
    | otherwise =
      Just $ rq & gPosition .~ rs ^. gupkrrsPosition

instance AWSRequest GetUsagePlanKeys where
  type Rs GetUsagePlanKeys = GetUsagePlanKeysResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetUsagePlanKeysResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetUsagePlanKeys

instance NFData GetUsagePlanKeys

instance ToHeaders GetUsagePlanKeys where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetUsagePlanKeys where
  toPath GetUsagePlanKeys' {..} =
    mconcat
      ["/usageplans/", toBS _gUsagePlanId, "/keys"]

instance ToQuery GetUsagePlanKeys where
  toQuery GetUsagePlanKeys' {..} =
    mconcat
      [ "position" =: _gPosition,
        "limit" =: _gLimit,
        "name" =: _gNameQuery
      ]

-- | Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html Create and Use Usage Plans>
--
-- /See:/ 'getUsagePlanKeysResponse' smart constructor.
data GetUsagePlanKeysResponse = GetUsagePlanKeysResponse'
  { _gupkrrsItems ::
      !( Maybe
           [UsagePlanKey]
       ),
    _gupkrrsPosition ::
      !(Maybe Text),
    _gupkrrsResponseStatus ::
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

-- | Creates a value of 'GetUsagePlanKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gupkrrsItems' - The current page of elements from this collection.
--
-- * 'gupkrrsPosition' - Undocumented member.
--
-- * 'gupkrrsResponseStatus' - -- | The response status code.
getUsagePlanKeysResponse ::
  -- | 'gupkrrsResponseStatus'
  Int ->
  GetUsagePlanKeysResponse
getUsagePlanKeysResponse pResponseStatus_ =
  GetUsagePlanKeysResponse'
    { _gupkrrsItems = Nothing,
      _gupkrrsPosition = Nothing,
      _gupkrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gupkrrsItems :: Lens' GetUsagePlanKeysResponse [UsagePlanKey]
gupkrrsItems = lens _gupkrrsItems (\s a -> s {_gupkrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gupkrrsPosition :: Lens' GetUsagePlanKeysResponse (Maybe Text)
gupkrrsPosition = lens _gupkrrsPosition (\s a -> s {_gupkrrsPosition = a})

-- | -- | The response status code.
gupkrrsResponseStatus :: Lens' GetUsagePlanKeysResponse Int
gupkrrsResponseStatus = lens _gupkrrsResponseStatus (\s a -> s {_gupkrrsResponseStatus = a})

instance NFData GetUsagePlanKeysResponse
