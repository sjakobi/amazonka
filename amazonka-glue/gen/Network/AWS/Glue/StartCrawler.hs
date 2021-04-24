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
-- Module      : Network.AWS.Glue.StartCrawler
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException CrawlerRunningException> .
module Network.AWS.Glue.StartCrawler
  ( -- * Creating a Request
    startCrawler,
    StartCrawler,

    -- * Request Lenses
    staName,

    -- * Destructuring the Response
    startCrawlerResponse,
    StartCrawlerResponse,

    -- * Response Lenses
    srsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startCrawler' smart constructor.
newtype StartCrawler = StartCrawler'
  { _staName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartCrawler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'staName' - Name of the crawler to start.
startCrawler ::
  -- | 'staName'
  Text ->
  StartCrawler
startCrawler pName_ =
  StartCrawler' {_staName = pName_}

-- | Name of the crawler to start.
staName :: Lens' StartCrawler Text
staName = lens _staName (\s a -> s {_staName = a})

instance AWSRequest StartCrawler where
  type Rs StartCrawler = StartCrawlerResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          StartCrawlerResponse' <$> (pure (fromEnum s))
      )

instance Hashable StartCrawler

instance NFData StartCrawler

instance ToHeaders StartCrawler where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.StartCrawler" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartCrawler where
  toJSON StartCrawler' {..} =
    object (catMaybes [Just ("Name" .= _staName)])

instance ToPath StartCrawler where
  toPath = const "/"

instance ToQuery StartCrawler where
  toQuery = const mempty

-- | /See:/ 'startCrawlerResponse' smart constructor.
newtype StartCrawlerResponse = StartCrawlerResponse'
  { _srsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartCrawlerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsResponseStatus' - -- | The response status code.
startCrawlerResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartCrawlerResponse
startCrawlerResponse pResponseStatus_ =
  StartCrawlerResponse'
    { _srsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
srsResponseStatus :: Lens' StartCrawlerResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartCrawlerResponse
