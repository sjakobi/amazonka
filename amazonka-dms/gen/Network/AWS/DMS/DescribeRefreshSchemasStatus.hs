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
-- Module      : Network.AWS.DMS.DescribeRefreshSchemasStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the status of the RefreshSchemas operation.
module Network.AWS.DMS.DescribeRefreshSchemasStatus
  ( -- * Creating a Request
    describeRefreshSchemasStatus,
    DescribeRefreshSchemasStatus,

    -- * Request Lenses
    drssEndpointARN,

    -- * Destructuring the Response
    describeRefreshSchemasStatusResponse,
    DescribeRefreshSchemasStatusResponse,

    -- * Response Lenses
    drssrrsRefreshSchemasStatus,
    drssrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeRefreshSchemasStatus' smart constructor.
newtype DescribeRefreshSchemasStatus = DescribeRefreshSchemasStatus'
  { _drssEndpointARN ::
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

-- | Creates a value of 'DescribeRefreshSchemasStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drssEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
describeRefreshSchemasStatus ::
  -- | 'drssEndpointARN'
  Text ->
  DescribeRefreshSchemasStatus
describeRefreshSchemasStatus pEndpointARN_ =
  DescribeRefreshSchemasStatus'
    { _drssEndpointARN =
        pEndpointARN_
    }

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
drssEndpointARN :: Lens' DescribeRefreshSchemasStatus Text
drssEndpointARN = lens _drssEndpointARN (\s a -> s {_drssEndpointARN = a})

instance AWSRequest DescribeRefreshSchemasStatus where
  type
    Rs DescribeRefreshSchemasStatus =
      DescribeRefreshSchemasStatusResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeRefreshSchemasStatusResponse'
            <$> (x .?> "RefreshSchemasStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRefreshSchemasStatus

instance NFData DescribeRefreshSchemasStatus

instance ToHeaders DescribeRefreshSchemasStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeRefreshSchemasStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRefreshSchemasStatus where
  toJSON DescribeRefreshSchemasStatus' {..} =
    object
      ( catMaybes
          [Just ("EndpointArn" .= _drssEndpointARN)]
      )

instance ToPath DescribeRefreshSchemasStatus where
  toPath = const "/"

instance ToQuery DescribeRefreshSchemasStatus where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeRefreshSchemasStatusResponse' smart constructor.
data DescribeRefreshSchemasStatusResponse = DescribeRefreshSchemasStatusResponse'
  { _drssrrsRefreshSchemasStatus ::
      !( Maybe
           RefreshSchemasStatus
       ),
    _drssrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRefreshSchemasStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drssrrsRefreshSchemasStatus' - The status of the schema.
--
-- * 'drssrrsResponseStatus' - -- | The response status code.
describeRefreshSchemasStatusResponse ::
  -- | 'drssrrsResponseStatus'
  Int ->
  DescribeRefreshSchemasStatusResponse
describeRefreshSchemasStatusResponse pResponseStatus_ =
  DescribeRefreshSchemasStatusResponse'
    { _drssrrsRefreshSchemasStatus =
        Nothing,
      _drssrrsResponseStatus =
        pResponseStatus_
    }

-- | The status of the schema.
drssrrsRefreshSchemasStatus :: Lens' DescribeRefreshSchemasStatusResponse (Maybe RefreshSchemasStatus)
drssrrsRefreshSchemasStatus = lens _drssrrsRefreshSchemasStatus (\s a -> s {_drssrrsRefreshSchemasStatus = a})

-- | -- | The response status code.
drssrrsResponseStatus :: Lens' DescribeRefreshSchemasStatusResponse Int
drssrrsResponseStatus = lens _drssrrsResponseStatus (\s a -> s {_drssrrsResponseStatus = a})

instance NFData DescribeRefreshSchemasStatusResponse
