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
-- Module      : Network.AWS.AppSync.GetAPICache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an @ApiCache@ object.
module Network.AWS.AppSync.GetAPICache
  ( -- * Creating a Request
    getAPICache,
    GetAPICache,

    -- * Request Lenses
    gacApiId,

    -- * Destructuring the Response
    getAPICacheResponse,
    GetAPICacheResponse,

    -- * Response Lenses
    gacrrsApiCache,
    gacrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @GetApiCache@ operation.
--
--
--
-- /See:/ 'getAPICache' smart constructor.
newtype GetAPICache = GetAPICache' {_gacApiId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAPICache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacApiId' - The API ID.
getAPICache ::
  -- | 'gacApiId'
  Text ->
  GetAPICache
getAPICache pApiId_ =
  GetAPICache' {_gacApiId = pApiId_}

-- | The API ID.
gacApiId :: Lens' GetAPICache Text
gacApiId = lens _gacApiId (\s a -> s {_gacApiId = a})

instance AWSRequest GetAPICache where
  type Rs GetAPICache = GetAPICacheResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          GetAPICacheResponse'
            <$> (x .?> "apiCache") <*> (pure (fromEnum s))
      )

instance Hashable GetAPICache

instance NFData GetAPICache

instance ToHeaders GetAPICache where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetAPICache where
  toPath GetAPICache' {..} =
    mconcat ["/v1/apis/", toBS _gacApiId, "/ApiCaches"]

instance ToQuery GetAPICache where
  toQuery = const mempty

-- | Represents the output of a @GetApiCache@ operation.
--
--
--
-- /See:/ 'getAPICacheResponse' smart constructor.
data GetAPICacheResponse = GetAPICacheResponse'
  { _gacrrsApiCache ::
      !(Maybe APICache),
    _gacrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAPICacheResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacrrsApiCache' - The @ApiCache@ object.
--
-- * 'gacrrsResponseStatus' - -- | The response status code.
getAPICacheResponse ::
  -- | 'gacrrsResponseStatus'
  Int ->
  GetAPICacheResponse
getAPICacheResponse pResponseStatus_ =
  GetAPICacheResponse'
    { _gacrrsApiCache = Nothing,
      _gacrrsResponseStatus = pResponseStatus_
    }

-- | The @ApiCache@ object.
gacrrsApiCache :: Lens' GetAPICacheResponse (Maybe APICache)
gacrrsApiCache = lens _gacrrsApiCache (\s a -> s {_gacrrsApiCache = a})

-- | -- | The response status code.
gacrrsResponseStatus :: Lens' GetAPICacheResponse Int
gacrrsResponseStatus = lens _gacrrsResponseStatus (\s a -> s {_gacrrsResponseStatus = a})

instance NFData GetAPICacheResponse
