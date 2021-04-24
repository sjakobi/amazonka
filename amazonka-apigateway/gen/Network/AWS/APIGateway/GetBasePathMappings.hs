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
-- Module      : Network.AWS.APIGateway.GetBasePathMappings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents a collection of 'BasePathMapping' resources.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetBasePathMappings
  ( -- * Creating a Request
    getBasePathMappings,
    GetBasePathMappings,

    -- * Request Lenses
    gbpmPosition,
    gbpmLimit,
    gbpmDomainName,

    -- * Destructuring the Response
    getBasePathMappingsResponse,
    GetBasePathMappingsResponse,

    -- * Response Lenses
    gbpmrrsItems,
    gbpmrrsPosition,
    gbpmrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to get information about a collection of 'BasePathMapping' resources.
--
--
--
-- /See:/ 'getBasePathMappings' smart constructor.
data GetBasePathMappings = GetBasePathMappings'
  { _gbpmPosition ::
      !(Maybe Text),
    _gbpmLimit :: !(Maybe Int),
    _gbpmDomainName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBasePathMappings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbpmPosition' - The current pagination position in the paged result set.
--
-- * 'gbpmLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gbpmDomainName' - [Required] The domain name of a 'BasePathMapping' resource.
getBasePathMappings ::
  -- | 'gbpmDomainName'
  Text ->
  GetBasePathMappings
getBasePathMappings pDomainName_ =
  GetBasePathMappings'
    { _gbpmPosition = Nothing,
      _gbpmLimit = Nothing,
      _gbpmDomainName = pDomainName_
    }

-- | The current pagination position in the paged result set.
gbpmPosition :: Lens' GetBasePathMappings (Maybe Text)
gbpmPosition = lens _gbpmPosition (\s a -> s {_gbpmPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gbpmLimit :: Lens' GetBasePathMappings (Maybe Int)
gbpmLimit = lens _gbpmLimit (\s a -> s {_gbpmLimit = a})

-- | [Required] The domain name of a 'BasePathMapping' resource.
gbpmDomainName :: Lens' GetBasePathMappings Text
gbpmDomainName = lens _gbpmDomainName (\s a -> s {_gbpmDomainName = a})

instance AWSPager GetBasePathMappings where
  page rq rs
    | stop (rs ^. gbpmrrsPosition) = Nothing
    | stop (rs ^. gbpmrrsItems) = Nothing
    | otherwise =
      Just $ rq & gbpmPosition .~ rs ^. gbpmrrsPosition

instance AWSRequest GetBasePathMappings where
  type
    Rs GetBasePathMappings =
      GetBasePathMappingsResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetBasePathMappingsResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBasePathMappings

instance NFData GetBasePathMappings

instance ToHeaders GetBasePathMappings where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetBasePathMappings where
  toPath GetBasePathMappings' {..} =
    mconcat
      [ "/domainnames/",
        toBS _gbpmDomainName,
        "/basepathmappings"
      ]

instance ToQuery GetBasePathMappings where
  toQuery GetBasePathMappings' {..} =
    mconcat
      ["position" =: _gbpmPosition, "limit" =: _gbpmLimit]

-- | Represents a collection of 'BasePathMapping' resources.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html Use Custom Domain Names>
--
-- /See:/ 'getBasePathMappingsResponse' smart constructor.
data GetBasePathMappingsResponse = GetBasePathMappingsResponse'
  { _gbpmrrsItems ::
      !( Maybe
           [BasePathMapping]
       ),
    _gbpmrrsPosition ::
      !(Maybe Text),
    _gbpmrrsResponseStatus ::
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

-- | Creates a value of 'GetBasePathMappingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbpmrrsItems' - The current page of elements from this collection.
--
-- * 'gbpmrrsPosition' - Undocumented member.
--
-- * 'gbpmrrsResponseStatus' - -- | The response status code.
getBasePathMappingsResponse ::
  -- | 'gbpmrrsResponseStatus'
  Int ->
  GetBasePathMappingsResponse
getBasePathMappingsResponse pResponseStatus_ =
  GetBasePathMappingsResponse'
    { _gbpmrrsItems =
        Nothing,
      _gbpmrrsPosition = Nothing,
      _gbpmrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gbpmrrsItems :: Lens' GetBasePathMappingsResponse [BasePathMapping]
gbpmrrsItems = lens _gbpmrrsItems (\s a -> s {_gbpmrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gbpmrrsPosition :: Lens' GetBasePathMappingsResponse (Maybe Text)
gbpmrrsPosition = lens _gbpmrrsPosition (\s a -> s {_gbpmrrsPosition = a})

-- | -- | The response status code.
gbpmrrsResponseStatus :: Lens' GetBasePathMappingsResponse Int
gbpmrrsResponseStatus = lens _gbpmrrsResponseStatus (\s a -> s {_gbpmrrsResponseStatus = a})

instance NFData GetBasePathMappingsResponse
