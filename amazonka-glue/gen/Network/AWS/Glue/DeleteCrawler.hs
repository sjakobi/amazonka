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
-- Module      : Network.AWS.Glue.DeleteCrawler
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a specified crawler from the AWS Glue Data Catalog, unless the crawler state is @RUNNING@ .
module Network.AWS.Glue.DeleteCrawler
  ( -- * Creating a Request
    deleteCrawler,
    DeleteCrawler,

    -- * Request Lenses
    delName,

    -- * Destructuring the Response
    deleteCrawlerResponse,
    DeleteCrawlerResponse,

    -- * Response Lenses
    delrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteCrawler' smart constructor.
newtype DeleteCrawler = DeleteCrawler'
  { _delName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteCrawler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delName' - The name of the crawler to remove.
deleteCrawler ::
  -- | 'delName'
  Text ->
  DeleteCrawler
deleteCrawler pName_ =
  DeleteCrawler' {_delName = pName_}

-- | The name of the crawler to remove.
delName :: Lens' DeleteCrawler Text
delName = lens _delName (\s a -> s {_delName = a})

instance AWSRequest DeleteCrawler where
  type Rs DeleteCrawler = DeleteCrawlerResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          DeleteCrawlerResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteCrawler

instance NFData DeleteCrawler

instance ToHeaders DeleteCrawler where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteCrawler" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteCrawler where
  toJSON DeleteCrawler' {..} =
    object (catMaybes [Just ("Name" .= _delName)])

instance ToPath DeleteCrawler where
  toPath = const "/"

instance ToQuery DeleteCrawler where
  toQuery = const mempty

-- | /See:/ 'deleteCrawlerResponse' smart constructor.
newtype DeleteCrawlerResponse = DeleteCrawlerResponse'
  { _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteCrawlerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteCrawlerResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteCrawlerResponse
deleteCrawlerResponse pResponseStatus_ =
  DeleteCrawlerResponse'
    { _delrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteCrawlerResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteCrawlerResponse
