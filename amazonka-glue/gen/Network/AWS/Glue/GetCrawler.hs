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
-- Module      : Network.AWS.Glue.GetCrawler
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for a specified crawler.
module Network.AWS.Glue.GetCrawler
  ( -- * Creating a Request
    getCrawler,
    GetCrawler,

    -- * Request Lenses
    ggName,

    -- * Destructuring the Response
    getCrawlerResponse,
    GetCrawlerResponse,

    -- * Response Lenses
    gcrcrsCrawler,
    gcrcrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCrawler' smart constructor.
newtype GetCrawler = GetCrawler' {_ggName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCrawler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggName' - The name of the crawler to retrieve metadata for.
getCrawler ::
  -- | 'ggName'
  Text ->
  GetCrawler
getCrawler pName_ = GetCrawler' {_ggName = pName_}

-- | The name of the crawler to retrieve metadata for.
ggName :: Lens' GetCrawler Text
ggName = lens _ggName (\s a -> s {_ggName = a})

instance AWSRequest GetCrawler where
  type Rs GetCrawler = GetCrawlerResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetCrawlerResponse'
            <$> (x .?> "Crawler") <*> (pure (fromEnum s))
      )

instance Hashable GetCrawler

instance NFData GetCrawler

instance ToHeaders GetCrawler where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetCrawler" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCrawler where
  toJSON GetCrawler' {..} =
    object (catMaybes [Just ("Name" .= _ggName)])

instance ToPath GetCrawler where
  toPath = const "/"

instance ToQuery GetCrawler where
  toQuery = const mempty

-- | /See:/ 'getCrawlerResponse' smart constructor.
data GetCrawlerResponse = GetCrawlerResponse'
  { _gcrcrsCrawler ::
      !(Maybe Crawler),
    _gcrcrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCrawlerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrcrsCrawler' - The metadata for the specified crawler.
--
-- * 'gcrcrsResponseStatus' - -- | The response status code.
getCrawlerResponse ::
  -- | 'gcrcrsResponseStatus'
  Int ->
  GetCrawlerResponse
getCrawlerResponse pResponseStatus_ =
  GetCrawlerResponse'
    { _gcrcrsCrawler = Nothing,
      _gcrcrsResponseStatus = pResponseStatus_
    }

-- | The metadata for the specified crawler.
gcrcrsCrawler :: Lens' GetCrawlerResponse (Maybe Crawler)
gcrcrsCrawler = lens _gcrcrsCrawler (\s a -> s {_gcrcrsCrawler = a})

-- | -- | The response status code.
gcrcrsResponseStatus :: Lens' GetCrawlerResponse Int
gcrcrsResponseStatus = lens _gcrcrsResponseStatus (\s a -> s {_gcrcrsResponseStatus = a})

instance NFData GetCrawlerResponse
