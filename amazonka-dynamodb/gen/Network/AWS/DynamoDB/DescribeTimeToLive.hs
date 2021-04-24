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
-- Module      : Network.AWS.DynamoDB.DescribeTimeToLive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gives a description of the Time to Live (TTL) status on the specified table.
module Network.AWS.DynamoDB.DescribeTimeToLive
  ( -- * Creating a Request
    describeTimeToLive,
    DescribeTimeToLive,

    -- * Request Lenses
    dttlTableName,

    -- * Destructuring the Response
    describeTimeToLiveResponse,
    DescribeTimeToLiveResponse,

    -- * Response Lenses
    dttlrrsTimeToLiveDescription,
    dttlrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTimeToLive' smart constructor.
newtype DescribeTimeToLive = DescribeTimeToLive'
  { _dttlTableName ::
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

-- | Creates a value of 'DescribeTimeToLive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dttlTableName' - The name of the table to be described.
describeTimeToLive ::
  -- | 'dttlTableName'
  Text ->
  DescribeTimeToLive
describeTimeToLive pTableName_ =
  DescribeTimeToLive' {_dttlTableName = pTableName_}

-- | The name of the table to be described.
dttlTableName :: Lens' DescribeTimeToLive Text
dttlTableName = lens _dttlTableName (\s a -> s {_dttlTableName = a})

instance AWSRequest DescribeTimeToLive where
  type
    Rs DescribeTimeToLive =
      DescribeTimeToLiveResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          DescribeTimeToLiveResponse'
            <$> (x .?> "TimeToLiveDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTimeToLive

instance NFData DescribeTimeToLive

instance ToHeaders DescribeTimeToLive where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.DescribeTimeToLive" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeTimeToLive where
  toJSON DescribeTimeToLive' {..} =
    object
      (catMaybes [Just ("TableName" .= _dttlTableName)])

instance ToPath DescribeTimeToLive where
  toPath = const "/"

instance ToQuery DescribeTimeToLive where
  toQuery = const mempty

-- | /See:/ 'describeTimeToLiveResponse' smart constructor.
data DescribeTimeToLiveResponse = DescribeTimeToLiveResponse'
  { _dttlrrsTimeToLiveDescription ::
      !( Maybe
           TimeToLiveDescription
       ),
    _dttlrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTimeToLiveResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dttlrrsTimeToLiveDescription' -
--
-- * 'dttlrrsResponseStatus' - -- | The response status code.
describeTimeToLiveResponse ::
  -- | 'dttlrrsResponseStatus'
  Int ->
  DescribeTimeToLiveResponse
describeTimeToLiveResponse pResponseStatus_ =
  DescribeTimeToLiveResponse'
    { _dttlrrsTimeToLiveDescription =
        Nothing,
      _dttlrrsResponseStatus = pResponseStatus_
    }

-- |
dttlrrsTimeToLiveDescription :: Lens' DescribeTimeToLiveResponse (Maybe TimeToLiveDescription)
dttlrrsTimeToLiveDescription = lens _dttlrrsTimeToLiveDescription (\s a -> s {_dttlrrsTimeToLiveDescription = a})

-- | -- | The response status code.
dttlrrsResponseStatus :: Lens' DescribeTimeToLiveResponse Int
dttlrrsResponseStatus = lens _dttlrrsResponseStatus (\s a -> s {_dttlrrsResponseStatus = a})

instance NFData DescribeTimeToLiveResponse
