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
-- Module      : Network.AWS.APIGateway.GetUsagePlans
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets all the usage plans of the caller's account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetUsagePlans
  ( -- * Creating a Request
    getUsagePlans,
    GetUsagePlans,

    -- * Request Lenses
    gupPosition,
    gupLimit,
    gupKeyId,

    -- * Destructuring the Response
    getUsagePlansResponse,
    GetUsagePlansResponse,

    -- * Response Lenses
    guprrsItems,
    guprrsPosition,
    guprrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The GET request to get all the usage plans of the caller's account.
--
--
--
-- /See:/ 'getUsagePlans' smart constructor.
data GetUsagePlans = GetUsagePlans'
  { _gupPosition ::
      !(Maybe Text),
    _gupLimit :: !(Maybe Int),
    _gupKeyId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUsagePlans' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gupPosition' - The current pagination position in the paged result set.
--
-- * 'gupLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gupKeyId' - The identifier of the API key associated with the usage plans.
getUsagePlans ::
  GetUsagePlans
getUsagePlans =
  GetUsagePlans'
    { _gupPosition = Nothing,
      _gupLimit = Nothing,
      _gupKeyId = Nothing
    }

-- | The current pagination position in the paged result set.
gupPosition :: Lens' GetUsagePlans (Maybe Text)
gupPosition = lens _gupPosition (\s a -> s {_gupPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gupLimit :: Lens' GetUsagePlans (Maybe Int)
gupLimit = lens _gupLimit (\s a -> s {_gupLimit = a})

-- | The identifier of the API key associated with the usage plans.
gupKeyId :: Lens' GetUsagePlans (Maybe Text)
gupKeyId = lens _gupKeyId (\s a -> s {_gupKeyId = a})

instance AWSPager GetUsagePlans where
  page rq rs
    | stop (rs ^. guprrsPosition) = Nothing
    | stop (rs ^. guprrsItems) = Nothing
    | otherwise =
      Just $ rq & gupPosition .~ rs ^. guprrsPosition

instance AWSRequest GetUsagePlans where
  type Rs GetUsagePlans = GetUsagePlansResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetUsagePlansResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetUsagePlans

instance NFData GetUsagePlans

instance ToHeaders GetUsagePlans where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetUsagePlans where
  toPath = const "/usageplans"

instance ToQuery GetUsagePlans where
  toQuery GetUsagePlans' {..} =
    mconcat
      [ "position" =: _gupPosition,
        "limit" =: _gupLimit,
        "keyId" =: _gupKeyId
      ]

-- | Represents a collection of usage plans for an AWS account.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html Create and Use Usage Plans>
--
-- /See:/ 'getUsagePlansResponse' smart constructor.
data GetUsagePlansResponse = GetUsagePlansResponse'
  { _guprrsItems ::
      !(Maybe [UsagePlan]),
    _guprrsPosition ::
      !(Maybe Text),
    _guprrsResponseStatus ::
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

-- | Creates a value of 'GetUsagePlansResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guprrsItems' - The current page of elements from this collection.
--
-- * 'guprrsPosition' - Undocumented member.
--
-- * 'guprrsResponseStatus' - -- | The response status code.
getUsagePlansResponse ::
  -- | 'guprrsResponseStatus'
  Int ->
  GetUsagePlansResponse
getUsagePlansResponse pResponseStatus_ =
  GetUsagePlansResponse'
    { _guprrsItems = Nothing,
      _guprrsPosition = Nothing,
      _guprrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
guprrsItems :: Lens' GetUsagePlansResponse [UsagePlan]
guprrsItems = lens _guprrsItems (\s a -> s {_guprrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
guprrsPosition :: Lens' GetUsagePlansResponse (Maybe Text)
guprrsPosition = lens _guprrsPosition (\s a -> s {_guprrsPosition = a})

-- | -- | The response status code.
guprrsResponseStatus :: Lens' GetUsagePlansResponse Int
guprrsResponseStatus = lens _guprrsResponseStatus (\s a -> s {_guprrsResponseStatus = a})

instance NFData GetUsagePlansResponse
