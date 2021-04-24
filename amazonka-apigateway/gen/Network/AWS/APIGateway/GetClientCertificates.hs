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
-- Module      : Network.AWS.APIGateway.GetClientCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a collection of 'ClientCertificate' resources.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetClientCertificates
  ( -- * Creating a Request
    getClientCertificates,
    GetClientCertificates,

    -- * Request Lenses
    gccPosition,
    gccLimit,

    -- * Destructuring the Response
    getClientCertificatesResponse,
    GetClientCertificatesResponse,

    -- * Response Lenses
    gccrrsItems,
    gccrrsPosition,
    gccrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to get information about a collection of 'ClientCertificate' resources.
--
--
--
-- /See:/ 'getClientCertificates' smart constructor.
data GetClientCertificates = GetClientCertificates'
  { _gccPosition ::
      !(Maybe Text),
    _gccLimit :: !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetClientCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccPosition' - The current pagination position in the paged result set.
--
-- * 'gccLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
getClientCertificates ::
  GetClientCertificates
getClientCertificates =
  GetClientCertificates'
    { _gccPosition = Nothing,
      _gccLimit = Nothing
    }

-- | The current pagination position in the paged result set.
gccPosition :: Lens' GetClientCertificates (Maybe Text)
gccPosition = lens _gccPosition (\s a -> s {_gccPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gccLimit :: Lens' GetClientCertificates (Maybe Int)
gccLimit = lens _gccLimit (\s a -> s {_gccLimit = a})

instance AWSPager GetClientCertificates where
  page rq rs
    | stop (rs ^. gccrrsPosition) = Nothing
    | stop (rs ^. gccrrsItems) = Nothing
    | otherwise =
      Just $ rq & gccPosition .~ rs ^. gccrrsPosition

instance AWSRequest GetClientCertificates where
  type
    Rs GetClientCertificates =
      GetClientCertificatesResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetClientCertificatesResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetClientCertificates

instance NFData GetClientCertificates

instance ToHeaders GetClientCertificates where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetClientCertificates where
  toPath = const "/clientcertificates"

instance ToQuery GetClientCertificates where
  toQuery GetClientCertificates' {..} =
    mconcat
      ["position" =: _gccPosition, "limit" =: _gccLimit]

-- | Represents a collection of 'ClientCertificate' resources.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html Use Client-Side Certificate>
--
-- /See:/ 'getClientCertificatesResponse' smart constructor.
data GetClientCertificatesResponse = GetClientCertificatesResponse'
  { _gccrrsItems ::
      !( Maybe
           [ClientCertificate]
       ),
    _gccrrsPosition ::
      !( Maybe
           Text
       ),
    _gccrrsResponseStatus ::
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

-- | Creates a value of 'GetClientCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccrrsItems' - The current page of elements from this collection.
--
-- * 'gccrrsPosition' - Undocumented member.
--
-- * 'gccrrsResponseStatus' - -- | The response status code.
getClientCertificatesResponse ::
  -- | 'gccrrsResponseStatus'
  Int ->
  GetClientCertificatesResponse
getClientCertificatesResponse pResponseStatus_ =
  GetClientCertificatesResponse'
    { _gccrrsItems =
        Nothing,
      _gccrrsPosition = Nothing,
      _gccrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gccrrsItems :: Lens' GetClientCertificatesResponse [ClientCertificate]
gccrrsItems = lens _gccrrsItems (\s a -> s {_gccrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gccrrsPosition :: Lens' GetClientCertificatesResponse (Maybe Text)
gccrrsPosition = lens _gccrrsPosition (\s a -> s {_gccrrsPosition = a})

-- | -- | The response status code.
gccrrsResponseStatus :: Lens' GetClientCertificatesResponse Int
gccrrsResponseStatus = lens _gccrrsResponseStatus (\s a -> s {_gccrrsResponseStatus = a})

instance NFData GetClientCertificatesResponse
