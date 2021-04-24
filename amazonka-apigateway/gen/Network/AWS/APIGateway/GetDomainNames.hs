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
-- Module      : Network.AWS.APIGateway.GetDomainNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents a collection of 'DomainName' resources.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetDomainNames
  ( -- * Creating a Request
    getDomainNames,
    GetDomainNames,

    -- * Request Lenses
    gdnPosition,
    gdnLimit,

    -- * Destructuring the Response
    getDomainNamesResponse,
    GetDomainNamesResponse,

    -- * Response Lenses
    gdnrrsItems,
    gdnrrsPosition,
    gdnrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to describe a collection of 'DomainName' resources.
--
--
--
-- /See:/ 'getDomainNames' smart constructor.
data GetDomainNames = GetDomainNames'
  { _gdnPosition ::
      !(Maybe Text),
    _gdnLimit :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDomainNames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdnPosition' - The current pagination position in the paged result set.
--
-- * 'gdnLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
getDomainNames ::
  GetDomainNames
getDomainNames =
  GetDomainNames'
    { _gdnPosition = Nothing,
      _gdnLimit = Nothing
    }

-- | The current pagination position in the paged result set.
gdnPosition :: Lens' GetDomainNames (Maybe Text)
gdnPosition = lens _gdnPosition (\s a -> s {_gdnPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gdnLimit :: Lens' GetDomainNames (Maybe Int)
gdnLimit = lens _gdnLimit (\s a -> s {_gdnLimit = a})

instance AWSPager GetDomainNames where
  page rq rs
    | stop (rs ^. gdnrrsPosition) = Nothing
    | stop (rs ^. gdnrrsItems) = Nothing
    | otherwise =
      Just $ rq & gdnPosition .~ rs ^. gdnrrsPosition

instance AWSRequest GetDomainNames where
  type Rs GetDomainNames = GetDomainNamesResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetDomainNamesResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDomainNames

instance NFData GetDomainNames

instance ToHeaders GetDomainNames where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetDomainNames where
  toPath = const "/domainnames"

instance ToQuery GetDomainNames where
  toQuery GetDomainNames' {..} =
    mconcat
      ["position" =: _gdnPosition, "limit" =: _gdnLimit]

-- | Represents a collection of 'DomainName' resources.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html Use Client-Side Certificate>
--
-- /See:/ 'getDomainNamesResponse' smart constructor.
data GetDomainNamesResponse = GetDomainNamesResponse'
  { _gdnrrsItems ::
      !(Maybe [DomainName]),
    _gdnrrsPosition ::
      !(Maybe Text),
    _gdnrrsResponseStatus ::
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

-- | Creates a value of 'GetDomainNamesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdnrrsItems' - The current page of elements from this collection.
--
-- * 'gdnrrsPosition' - Undocumented member.
--
-- * 'gdnrrsResponseStatus' - -- | The response status code.
getDomainNamesResponse ::
  -- | 'gdnrrsResponseStatus'
  Int ->
  GetDomainNamesResponse
getDomainNamesResponse pResponseStatus_ =
  GetDomainNamesResponse'
    { _gdnrrsItems = Nothing,
      _gdnrrsPosition = Nothing,
      _gdnrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gdnrrsItems :: Lens' GetDomainNamesResponse [DomainName]
gdnrrsItems = lens _gdnrrsItems (\s a -> s {_gdnrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gdnrrsPosition :: Lens' GetDomainNamesResponse (Maybe Text)
gdnrrsPosition = lens _gdnrrsPosition (\s a -> s {_gdnrrsPosition = a})

-- | -- | The response status code.
gdnrrsResponseStatus :: Lens' GetDomainNamesResponse Int
gdnrrsResponseStatus = lens _gdnrrsResponseStatus (\s a -> s {_gdnrrsResponseStatus = a})

instance NFData GetDomainNamesResponse
