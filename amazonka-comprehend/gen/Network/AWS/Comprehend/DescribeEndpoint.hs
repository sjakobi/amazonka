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
-- Module      : Network.AWS.Comprehend.DescribeEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a specific endpoint. Use this operation to get the status of an endpoint.
module Network.AWS.Comprehend.DescribeEndpoint
  ( -- * Creating a Request
    describeEndpoint,
    DescribeEndpoint,

    -- * Request Lenses
    deEndpointARN,

    -- * Destructuring the Response
    describeEndpointResponse,
    DescribeEndpointResponse,

    -- * Response Lenses
    derersEndpointProperties,
    derersResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEndpoint' smart constructor.
newtype DescribeEndpoint = DescribeEndpoint'
  { _deEndpointARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deEndpointARN' - The Amazon Resource Number (ARN) of the endpoint being described.
describeEndpoint ::
  -- | 'deEndpointARN'
  Text ->
  DescribeEndpoint
describeEndpoint pEndpointARN_ =
  DescribeEndpoint' {_deEndpointARN = pEndpointARN_}

-- | The Amazon Resource Number (ARN) of the endpoint being described.
deEndpointARN :: Lens' DescribeEndpoint Text
deEndpointARN = lens _deEndpointARN (\s a -> s {_deEndpointARN = a})

instance AWSRequest DescribeEndpoint where
  type Rs DescribeEndpoint = DescribeEndpointResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeEndpointResponse'
            <$> (x .?> "EndpointProperties") <*> (pure (fromEnum s))
      )

instance Hashable DescribeEndpoint

instance NFData DescribeEndpoint

instance ToHeaders DescribeEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeEndpoint" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEndpoint where
  toJSON DescribeEndpoint' {..} =
    object
      (catMaybes [Just ("EndpointArn" .= _deEndpointARN)])

instance ToPath DescribeEndpoint where
  toPath = const "/"

instance ToQuery DescribeEndpoint where
  toQuery = const mempty

-- | /See:/ 'describeEndpointResponse' smart constructor.
data DescribeEndpointResponse = DescribeEndpointResponse'
  { _derersEndpointProperties ::
      !( Maybe
           EndpointProperties
       ),
    _derersResponseStatus ::
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

-- | Creates a value of 'DescribeEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derersEndpointProperties' - Describes information associated with the specific endpoint.
--
-- * 'derersResponseStatus' - -- | The response status code.
describeEndpointResponse ::
  -- | 'derersResponseStatus'
  Int ->
  DescribeEndpointResponse
describeEndpointResponse pResponseStatus_ =
  DescribeEndpointResponse'
    { _derersEndpointProperties =
        Nothing,
      _derersResponseStatus = pResponseStatus_
    }

-- | Describes information associated with the specific endpoint.
derersEndpointProperties :: Lens' DescribeEndpointResponse (Maybe EndpointProperties)
derersEndpointProperties = lens _derersEndpointProperties (\s a -> s {_derersEndpointProperties = a})

-- | -- | The response status code.
derersResponseStatus :: Lens' DescribeEndpointResponse Int
derersResponseStatus = lens _derersResponseStatus (\s a -> s {_derersResponseStatus = a})

instance NFData DescribeEndpointResponse
