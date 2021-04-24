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
-- Module      : Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the information about an origin access identity.
module Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentity
  ( -- * Creating a Request
    getCloudFrontOriginAccessIdentity,
    GetCloudFrontOriginAccessIdentity,

    -- * Request Lenses
    gcfoaiId,

    -- * Destructuring the Response
    getCloudFrontOriginAccessIdentityResponse,
    GetCloudFrontOriginAccessIdentityResponse,

    -- * Response Lenses
    gcfoairrsETag,
    gcfoairrsCloudFrontOriginAccessIdentity,
    gcfoairrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to get an origin access identity's information.
--
--
--
-- /See:/ 'getCloudFrontOriginAccessIdentity' smart constructor.
newtype GetCloudFrontOriginAccessIdentity = GetCloudFrontOriginAccessIdentity'
  { _gcfoaiId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCloudFrontOriginAccessIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfoaiId' - The identity's ID.
getCloudFrontOriginAccessIdentity ::
  -- | 'gcfoaiId'
  Text ->
  GetCloudFrontOriginAccessIdentity
getCloudFrontOriginAccessIdentity pId_ =
  GetCloudFrontOriginAccessIdentity'
    { _gcfoaiId =
        pId_
    }

-- | The identity's ID.
gcfoaiId :: Lens' GetCloudFrontOriginAccessIdentity Text
gcfoaiId = lens _gcfoaiId (\s a -> s {_gcfoaiId = a})

instance AWSRequest GetCloudFrontOriginAccessIdentity where
  type
    Rs GetCloudFrontOriginAccessIdentity =
      GetCloudFrontOriginAccessIdentityResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetCloudFrontOriginAccessIdentityResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCloudFrontOriginAccessIdentity

instance NFData GetCloudFrontOriginAccessIdentity

instance ToHeaders GetCloudFrontOriginAccessIdentity where
  toHeaders = const mempty

instance ToPath GetCloudFrontOriginAccessIdentity where
  toPath GetCloudFrontOriginAccessIdentity' {..} =
    mconcat
      [ "/2020-05-31/origin-access-identity/cloudfront/",
        toBS _gcfoaiId
      ]

instance ToQuery GetCloudFrontOriginAccessIdentity where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'getCloudFrontOriginAccessIdentityResponse' smart constructor.
data GetCloudFrontOriginAccessIdentityResponse = GetCloudFrontOriginAccessIdentityResponse'
  { _gcfoairrsETag ::
      !( Maybe
           Text
       ),
    _gcfoairrsCloudFrontOriginAccessIdentity ::
      !( Maybe
           CloudFrontOriginAccessIdentity
       ),
    _gcfoairrsResponseStatus ::
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

-- | Creates a value of 'GetCloudFrontOriginAccessIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfoairrsETag' - The current version of the origin access identity's information. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gcfoairrsCloudFrontOriginAccessIdentity' - The origin access identity's information.
--
-- * 'gcfoairrsResponseStatus' - -- | The response status code.
getCloudFrontOriginAccessIdentityResponse ::
  -- | 'gcfoairrsResponseStatus'
  Int ->
  GetCloudFrontOriginAccessIdentityResponse
getCloudFrontOriginAccessIdentityResponse
  pResponseStatus_ =
    GetCloudFrontOriginAccessIdentityResponse'
      { _gcfoairrsETag =
          Nothing,
        _gcfoairrsCloudFrontOriginAccessIdentity =
          Nothing,
        _gcfoairrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the origin access identity's information. For example: @E2QWRUHAPOMQZL@ .
gcfoairrsETag :: Lens' GetCloudFrontOriginAccessIdentityResponse (Maybe Text)
gcfoairrsETag = lens _gcfoairrsETag (\s a -> s {_gcfoairrsETag = a})

-- | The origin access identity's information.
gcfoairrsCloudFrontOriginAccessIdentity :: Lens' GetCloudFrontOriginAccessIdentityResponse (Maybe CloudFrontOriginAccessIdentity)
gcfoairrsCloudFrontOriginAccessIdentity = lens _gcfoairrsCloudFrontOriginAccessIdentity (\s a -> s {_gcfoairrsCloudFrontOriginAccessIdentity = a})

-- | -- | The response status code.
gcfoairrsResponseStatus :: Lens' GetCloudFrontOriginAccessIdentityResponse Int
gcfoairrsResponseStatus = lens _gcfoairrsResponseStatus (\s a -> s {_gcfoairrsResponseStatus = a})

instance
  NFData
    GetCloudFrontOriginAccessIdentityResponse
