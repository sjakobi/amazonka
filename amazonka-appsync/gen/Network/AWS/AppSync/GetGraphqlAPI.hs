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
-- Module      : Network.AWS.AppSync.GetGraphqlAPI
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a @GraphqlApi@ object.
module Network.AWS.AppSync.GetGraphqlAPI
  ( -- * Creating a Request
    getGraphqlAPI,
    GetGraphqlAPI,

    -- * Request Lenses
    ggaApiId,

    -- * Destructuring the Response
    getGraphqlAPIResponse,
    GetGraphqlAPIResponse,

    -- * Response Lenses
    ggarrsGraphqlAPI,
    ggarrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGraphqlAPI' smart constructor.
newtype GetGraphqlAPI = GetGraphqlAPI'
  { _ggaApiId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGraphqlAPI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggaApiId' - The API ID for the GraphQL API.
getGraphqlAPI ::
  -- | 'ggaApiId'
  Text ->
  GetGraphqlAPI
getGraphqlAPI pApiId_ =
  GetGraphqlAPI' {_ggaApiId = pApiId_}

-- | The API ID for the GraphQL API.
ggaApiId :: Lens' GetGraphqlAPI Text
ggaApiId = lens _ggaApiId (\s a -> s {_ggaApiId = a})

instance AWSRequest GetGraphqlAPI where
  type Rs GetGraphqlAPI = GetGraphqlAPIResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          GetGraphqlAPIResponse'
            <$> (x .?> "graphqlApi") <*> (pure (fromEnum s))
      )

instance Hashable GetGraphqlAPI

instance NFData GetGraphqlAPI

instance ToHeaders GetGraphqlAPI where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetGraphqlAPI where
  toPath GetGraphqlAPI' {..} =
    mconcat ["/v1/apis/", toBS _ggaApiId]

instance ToQuery GetGraphqlAPI where
  toQuery = const mempty

-- | /See:/ 'getGraphqlAPIResponse' smart constructor.
data GetGraphqlAPIResponse = GetGraphqlAPIResponse'
  { _ggarrsGraphqlAPI ::
      !(Maybe GraphqlAPI),
    _ggarrsResponseStatus ::
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

-- | Creates a value of 'GetGraphqlAPIResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggarrsGraphqlAPI' - The @GraphqlApi@ object.
--
-- * 'ggarrsResponseStatus' - -- | The response status code.
getGraphqlAPIResponse ::
  -- | 'ggarrsResponseStatus'
  Int ->
  GetGraphqlAPIResponse
getGraphqlAPIResponse pResponseStatus_ =
  GetGraphqlAPIResponse'
    { _ggarrsGraphqlAPI = Nothing,
      _ggarrsResponseStatus = pResponseStatus_
    }

-- | The @GraphqlApi@ object.
ggarrsGraphqlAPI :: Lens' GetGraphqlAPIResponse (Maybe GraphqlAPI)
ggarrsGraphqlAPI = lens _ggarrsGraphqlAPI (\s a -> s {_ggarrsGraphqlAPI = a})

-- | -- | The response status code.
ggarrsResponseStatus :: Lens' GetGraphqlAPIResponse Int
ggarrsResponseStatus = lens _ggarrsResponseStatus (\s a -> s {_ggarrsResponseStatus = a})

instance NFData GetGraphqlAPIResponse
