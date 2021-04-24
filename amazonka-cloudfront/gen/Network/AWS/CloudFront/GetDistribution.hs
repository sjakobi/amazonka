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
-- Module      : Network.AWS.CloudFront.GetDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the information about a distribution.
module Network.AWS.CloudFront.GetDistribution
  ( -- * Creating a Request
    getDistribution,
    GetDistribution,

    -- * Request Lenses
    gdId,

    -- * Destructuring the Response
    getDistributionResponse,
    GetDistributionResponse,

    -- * Response Lenses
    gdrrsETag,
    gdrrsDistribution,
    gdrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to get a distribution's information.
--
--
--
-- /See:/ 'getDistribution' smart constructor.
newtype GetDistribution = GetDistribution'
  { _gdId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdId' - The distribution's ID. If the ID is empty, an empty distribution configuration is returned.
getDistribution ::
  -- | 'gdId'
  Text ->
  GetDistribution
getDistribution pId_ = GetDistribution' {_gdId = pId_}

-- | The distribution's ID. If the ID is empty, an empty distribution configuration is returned.
gdId :: Lens' GetDistribution Text
gdId = lens _gdId (\s a -> s {_gdId = a})

instance AWSRequest GetDistribution where
  type Rs GetDistribution = GetDistributionResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetDistributionResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDistribution

instance NFData GetDistribution

instance ToHeaders GetDistribution where
  toHeaders = const mempty

instance ToPath GetDistribution where
  toPath GetDistribution' {..} =
    mconcat ["/2020-05-31/distribution/", toBS _gdId]

instance ToQuery GetDistribution where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'getDistributionResponse' smart constructor.
data GetDistributionResponse = GetDistributionResponse'
  { _gdrrsETag ::
      !(Maybe Text),
    _gdrrsDistribution ::
      !(Maybe Distribution),
    _gdrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDistributionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsETag' - The current version of the distribution's information. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gdrrsDistribution' - The distribution's information.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
getDistributionResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  GetDistributionResponse
getDistributionResponse pResponseStatus_ =
  GetDistributionResponse'
    { _gdrrsETag = Nothing,
      _gdrrsDistribution = Nothing,
      _gdrrsResponseStatus = pResponseStatus_
    }

-- | The current version of the distribution's information. For example: @E2QWRUHAPOMQZL@ .
gdrrsETag :: Lens' GetDistributionResponse (Maybe Text)
gdrrsETag = lens _gdrrsETag (\s a -> s {_gdrrsETag = a})

-- | The distribution's information.
gdrrsDistribution :: Lens' GetDistributionResponse (Maybe Distribution)
gdrrsDistribution = lens _gdrrsDistribution (\s a -> s {_gdrrsDistribution = a})

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDistributionResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

instance NFData GetDistributionResponse
