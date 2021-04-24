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
-- Module      : Network.AWS.Lightsail.GetContainerAPIMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about Amazon Lightsail containers, such as the current version of the Lightsail Control (lightsailctl) plugin.
module Network.AWS.Lightsail.GetContainerAPIMetadata
  ( -- * Creating a Request
    getContainerAPIMetadata,
    GetContainerAPIMetadata,

    -- * Destructuring the Response
    getContainerAPIMetadataResponse,
    GetContainerAPIMetadataResponse,

    -- * Response Lenses
    gcamrrsMetadata,
    gcamrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getContainerAPIMetadata' smart constructor.
data GetContainerAPIMetadata = GetContainerAPIMetadata'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetContainerAPIMetadata' with the minimum fields required to make a request.
getContainerAPIMetadata ::
  GetContainerAPIMetadata
getContainerAPIMetadata = GetContainerAPIMetadata'

instance AWSRequest GetContainerAPIMetadata where
  type
    Rs GetContainerAPIMetadata =
      GetContainerAPIMetadataResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetContainerAPIMetadataResponse'
            <$> (x .?> "metadata" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetContainerAPIMetadata

instance NFData GetContainerAPIMetadata

instance ToHeaders GetContainerAPIMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetContainerAPIMetadata" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetContainerAPIMetadata where
  toJSON = const (Object mempty)

instance ToPath GetContainerAPIMetadata where
  toPath = const "/"

instance ToQuery GetContainerAPIMetadata where
  toQuery = const mempty

-- | /See:/ 'getContainerAPIMetadataResponse' smart constructor.
data GetContainerAPIMetadataResponse = GetContainerAPIMetadataResponse'
  { _gcamrrsMetadata ::
      !( Maybe
           [ Map
               Text
               Text
           ]
       ),
    _gcamrrsResponseStatus ::
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

-- | Creates a value of 'GetContainerAPIMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcamrrsMetadata' - Metadata about Lightsail containers, such as the current version of the Lightsail Control (lightsailctl) plugin.
--
-- * 'gcamrrsResponseStatus' - -- | The response status code.
getContainerAPIMetadataResponse ::
  -- | 'gcamrrsResponseStatus'
  Int ->
  GetContainerAPIMetadataResponse
getContainerAPIMetadataResponse pResponseStatus_ =
  GetContainerAPIMetadataResponse'
    { _gcamrrsMetadata =
        Nothing,
      _gcamrrsResponseStatus = pResponseStatus_
    }

-- | Metadata about Lightsail containers, such as the current version of the Lightsail Control (lightsailctl) plugin.
gcamrrsMetadata :: Lens' GetContainerAPIMetadataResponse [HashMap Text Text]
gcamrrsMetadata = lens _gcamrrsMetadata (\s a -> s {_gcamrrsMetadata = a}) . _Default . _Coerce

-- | -- | The response status code.
gcamrrsResponseStatus :: Lens' GetContainerAPIMetadataResponse Int
gcamrrsResponseStatus = lens _gcamrrsResponseStatus (\s a -> s {_gcamrrsResponseStatus = a})

instance NFData GetContainerAPIMetadataResponse
