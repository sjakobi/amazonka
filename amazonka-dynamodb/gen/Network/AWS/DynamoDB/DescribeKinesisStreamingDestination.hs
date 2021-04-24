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
-- Module      : Network.AWS.DynamoDB.DescribeKinesisStreamingDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the status of Kinesis streaming.
module Network.AWS.DynamoDB.DescribeKinesisStreamingDestination
  ( -- * Creating a Request
    describeKinesisStreamingDestination,
    DescribeKinesisStreamingDestination,

    -- * Request Lenses
    dksdkTableName,

    -- * Destructuring the Response
    describeKinesisStreamingDestinationResponse,
    DescribeKinesisStreamingDestinationResponse,

    -- * Response Lenses
    dksdrrsTableName,
    dksdrrsKinesisDataStreamDestinations,
    dksdrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeKinesisStreamingDestination' smart constructor.
newtype DescribeKinesisStreamingDestination = DescribeKinesisStreamingDestination'
  { _dksdkTableName ::
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

-- | Creates a value of 'DescribeKinesisStreamingDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dksdkTableName' - The name of the table being described.
describeKinesisStreamingDestination ::
  -- | 'dksdkTableName'
  Text ->
  DescribeKinesisStreamingDestination
describeKinesisStreamingDestination pTableName_ =
  DescribeKinesisStreamingDestination'
    { _dksdkTableName =
        pTableName_
    }

-- | The name of the table being described.
dksdkTableName :: Lens' DescribeKinesisStreamingDestination Text
dksdkTableName = lens _dksdkTableName (\s a -> s {_dksdkTableName = a})

instance
  AWSRequest
    DescribeKinesisStreamingDestination
  where
  type
    Rs DescribeKinesisStreamingDestination =
      DescribeKinesisStreamingDestinationResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          DescribeKinesisStreamingDestinationResponse'
            <$> (x .?> "TableName")
            <*> (x .?> "KinesisDataStreamDestinations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeKinesisStreamingDestination

instance NFData DescribeKinesisStreamingDestination

instance
  ToHeaders
    DescribeKinesisStreamingDestination
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.DescribeKinesisStreamingDestination" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeKinesisStreamingDestination where
  toJSON DescribeKinesisStreamingDestination' {..} =
    object
      (catMaybes [Just ("TableName" .= _dksdkTableName)])

instance ToPath DescribeKinesisStreamingDestination where
  toPath = const "/"

instance ToQuery DescribeKinesisStreamingDestination where
  toQuery = const mempty

-- | /See:/ 'describeKinesisStreamingDestinationResponse' smart constructor.
data DescribeKinesisStreamingDestinationResponse = DescribeKinesisStreamingDestinationResponse'
  { _dksdrrsTableName ::
      !( Maybe
           Text
       ),
    _dksdrrsKinesisDataStreamDestinations ::
      !( Maybe
           [KinesisDataStreamDestination]
       ),
    _dksdrrsResponseStatus ::
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

-- | Creates a value of 'DescribeKinesisStreamingDestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dksdrrsTableName' - The name of the table being described.
--
-- * 'dksdrrsKinesisDataStreamDestinations' - The list of replica structures for the table being described.
--
-- * 'dksdrrsResponseStatus' - -- | The response status code.
describeKinesisStreamingDestinationResponse ::
  -- | 'dksdrrsResponseStatus'
  Int ->
  DescribeKinesisStreamingDestinationResponse
describeKinesisStreamingDestinationResponse
  pResponseStatus_ =
    DescribeKinesisStreamingDestinationResponse'
      { _dksdrrsTableName =
          Nothing,
        _dksdrrsKinesisDataStreamDestinations =
          Nothing,
        _dksdrrsResponseStatus =
          pResponseStatus_
      }

-- | The name of the table being described.
dksdrrsTableName :: Lens' DescribeKinesisStreamingDestinationResponse (Maybe Text)
dksdrrsTableName = lens _dksdrrsTableName (\s a -> s {_dksdrrsTableName = a})

-- | The list of replica structures for the table being described.
dksdrrsKinesisDataStreamDestinations :: Lens' DescribeKinesisStreamingDestinationResponse [KinesisDataStreamDestination]
dksdrrsKinesisDataStreamDestinations = lens _dksdrrsKinesisDataStreamDestinations (\s a -> s {_dksdrrsKinesisDataStreamDestinations = a}) . _Default . _Coerce

-- | -- | The response status code.
dksdrrsResponseStatus :: Lens' DescribeKinesisStreamingDestinationResponse Int
dksdrrsResponseStatus = lens _dksdrrsResponseStatus (\s a -> s {_dksdrrsResponseStatus = a})

instance
  NFData
    DescribeKinesisStreamingDestinationResponse
