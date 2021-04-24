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
-- Module      : Network.AWS.Glue.BatchGetDevEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of resource metadata for a given list of development endpoint names. After calling the @ListDevEndpoints@ operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.
module Network.AWS.Glue.BatchGetDevEndpoints
  ( -- * Creating a Request
    batchGetDevEndpoints,
    BatchGetDevEndpoints,

    -- * Request Lenses
    bgdeDevEndpointNames,

    -- * Destructuring the Response
    batchGetDevEndpointsResponse,
    BatchGetDevEndpointsResponse,

    -- * Response Lenses
    bgderrsDevEndpoints,
    bgderrsDevEndpointsNotFound,
    bgderrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetDevEndpoints' smart constructor.
newtype BatchGetDevEndpoints = BatchGetDevEndpoints'
  { _bgdeDevEndpointNames ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetDevEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgdeDevEndpointNames' - The list of @DevEndpoint@ names, which might be the names returned from the @ListDevEndpoint@ operation.
batchGetDevEndpoints ::
  -- | 'bgdeDevEndpointNames'
  NonEmpty Text ->
  BatchGetDevEndpoints
batchGetDevEndpoints pDevEndpointNames_ =
  BatchGetDevEndpoints'
    { _bgdeDevEndpointNames =
        _List1 # pDevEndpointNames_
    }

-- | The list of @DevEndpoint@ names, which might be the names returned from the @ListDevEndpoint@ operation.
bgdeDevEndpointNames :: Lens' BatchGetDevEndpoints (NonEmpty Text)
bgdeDevEndpointNames = lens _bgdeDevEndpointNames (\s a -> s {_bgdeDevEndpointNames = a}) . _List1

instance AWSRequest BatchGetDevEndpoints where
  type
    Rs BatchGetDevEndpoints =
      BatchGetDevEndpointsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          BatchGetDevEndpointsResponse'
            <$> (x .?> "DevEndpoints" .!@ mempty)
            <*> (x .?> "DevEndpointsNotFound")
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetDevEndpoints

instance NFData BatchGetDevEndpoints

instance ToHeaders BatchGetDevEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.BatchGetDevEndpoints" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetDevEndpoints where
  toJSON BatchGetDevEndpoints' {..} =
    object
      ( catMaybes
          [Just ("DevEndpointNames" .= _bgdeDevEndpointNames)]
      )

instance ToPath BatchGetDevEndpoints where
  toPath = const "/"

instance ToQuery BatchGetDevEndpoints where
  toQuery = const mempty

-- | /See:/ 'batchGetDevEndpointsResponse' smart constructor.
data BatchGetDevEndpointsResponse = BatchGetDevEndpointsResponse'
  { _bgderrsDevEndpoints ::
      !( Maybe
           [DevEndpoint]
       ),
    _bgderrsDevEndpointsNotFound ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _bgderrsResponseStatus ::
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

-- | Creates a value of 'BatchGetDevEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgderrsDevEndpoints' - A list of @DevEndpoint@ definitions.
--
-- * 'bgderrsDevEndpointsNotFound' - A list of @DevEndpoints@ not found.
--
-- * 'bgderrsResponseStatus' - -- | The response status code.
batchGetDevEndpointsResponse ::
  -- | 'bgderrsResponseStatus'
  Int ->
  BatchGetDevEndpointsResponse
batchGetDevEndpointsResponse pResponseStatus_ =
  BatchGetDevEndpointsResponse'
    { _bgderrsDevEndpoints =
        Nothing,
      _bgderrsDevEndpointsNotFound = Nothing,
      _bgderrsResponseStatus = pResponseStatus_
    }

-- | A list of @DevEndpoint@ definitions.
bgderrsDevEndpoints :: Lens' BatchGetDevEndpointsResponse [DevEndpoint]
bgderrsDevEndpoints = lens _bgderrsDevEndpoints (\s a -> s {_bgderrsDevEndpoints = a}) . _Default . _Coerce

-- | A list of @DevEndpoints@ not found.
bgderrsDevEndpointsNotFound :: Lens' BatchGetDevEndpointsResponse (Maybe (NonEmpty Text))
bgderrsDevEndpointsNotFound = lens _bgderrsDevEndpointsNotFound (\s a -> s {_bgderrsDevEndpointsNotFound = a}) . mapping _List1

-- | -- | The response status code.
bgderrsResponseStatus :: Lens' BatchGetDevEndpointsResponse Int
bgderrsResponseStatus = lens _bgderrsResponseStatus (\s a -> s {_bgderrsResponseStatus = a})

instance NFData BatchGetDevEndpointsResponse
