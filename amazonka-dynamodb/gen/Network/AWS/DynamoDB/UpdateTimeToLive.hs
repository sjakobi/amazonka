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
-- Module      : Network.AWS.DynamoDB.UpdateTimeToLive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @UpdateTimeToLive@ method enables or disables Time to Live (TTL) for the specified table. A successful @UpdateTimeToLive@ call returns the current @TimeToLiveSpecification@ . It can take up to one hour for the change to fully process. Any additional @UpdateTimeToLive@ calls for the same table during this one hour duration result in a @ValidationException@ .
--
--
-- TTL compares the current time in epoch time format to the time stored in the TTL attribute of an item. If the epoch time value stored in the attribute is less than the current time, the item is marked as expired and subsequently deleted.
--
-- DynamoDB deletes expired items on a best-effort basis to ensure availability of throughput for other data operations.
--
-- /Important:/ DynamoDB typically deletes expired items within two days of expiration. The exact duration within which an item gets deleted after expiration is specific to the nature of the workload. Items that have expired and not been deleted will still show up in reads, queries, and scans.
--
-- As items are deleted, they are removed from any local secondary index and global secondary index immediately in the same eventually consistent way as a standard delete operation.
--
-- For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html Time To Live> in the Amazon DynamoDB Developer Guide.
module Network.AWS.DynamoDB.UpdateTimeToLive
  ( -- * Creating a Request
    updateTimeToLive,
    UpdateTimeToLive,

    -- * Request Lenses
    uttlTableName,
    uttlTimeToLiveSpecification,

    -- * Destructuring the Response
    updateTimeToLiveResponse,
    UpdateTimeToLiveResponse,

    -- * Response Lenses
    uttlrrsTimeToLiveSpecification,
    uttlrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of an @UpdateTimeToLive@ operation.
--
--
--
-- /See:/ 'updateTimeToLive' smart constructor.
data UpdateTimeToLive = UpdateTimeToLive'
  { _uttlTableName ::
      !Text,
    _uttlTimeToLiveSpecification ::
      !TimeToLiveSpecification
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTimeToLive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uttlTableName' - The name of the table to be configured.
--
-- * 'uttlTimeToLiveSpecification' - Represents the settings used to enable or disable Time to Live for the specified table.
updateTimeToLive ::
  -- | 'uttlTableName'
  Text ->
  -- | 'uttlTimeToLiveSpecification'
  TimeToLiveSpecification ->
  UpdateTimeToLive
updateTimeToLive
  pTableName_
  pTimeToLiveSpecification_ =
    UpdateTimeToLive'
      { _uttlTableName = pTableName_,
        _uttlTimeToLiveSpecification =
          pTimeToLiveSpecification_
      }

-- | The name of the table to be configured.
uttlTableName :: Lens' UpdateTimeToLive Text
uttlTableName = lens _uttlTableName (\s a -> s {_uttlTableName = a})

-- | Represents the settings used to enable or disable Time to Live for the specified table.
uttlTimeToLiveSpecification :: Lens' UpdateTimeToLive TimeToLiveSpecification
uttlTimeToLiveSpecification = lens _uttlTimeToLiveSpecification (\s a -> s {_uttlTimeToLiveSpecification = a})

instance AWSRequest UpdateTimeToLive where
  type Rs UpdateTimeToLive = UpdateTimeToLiveResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          UpdateTimeToLiveResponse'
            <$> (x .?> "TimeToLiveSpecification")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateTimeToLive

instance NFData UpdateTimeToLive

instance ToHeaders UpdateTimeToLive where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.UpdateTimeToLive" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON UpdateTimeToLive where
  toJSON UpdateTimeToLive' {..} =
    object
      ( catMaybes
          [ Just ("TableName" .= _uttlTableName),
            Just
              ( "TimeToLiveSpecification"
                  .= _uttlTimeToLiveSpecification
              )
          ]
      )

instance ToPath UpdateTimeToLive where
  toPath = const "/"

instance ToQuery UpdateTimeToLive where
  toQuery = const mempty

-- | /See:/ 'updateTimeToLiveResponse' smart constructor.
data UpdateTimeToLiveResponse = UpdateTimeToLiveResponse'
  { _uttlrrsTimeToLiveSpecification ::
      !( Maybe
           TimeToLiveSpecification
       ),
    _uttlrrsResponseStatus ::
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

-- | Creates a value of 'UpdateTimeToLiveResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uttlrrsTimeToLiveSpecification' - Represents the output of an @UpdateTimeToLive@ operation.
--
-- * 'uttlrrsResponseStatus' - -- | The response status code.
updateTimeToLiveResponse ::
  -- | 'uttlrrsResponseStatus'
  Int ->
  UpdateTimeToLiveResponse
updateTimeToLiveResponse pResponseStatus_ =
  UpdateTimeToLiveResponse'
    { _uttlrrsTimeToLiveSpecification =
        Nothing,
      _uttlrrsResponseStatus = pResponseStatus_
    }

-- | Represents the output of an @UpdateTimeToLive@ operation.
uttlrrsTimeToLiveSpecification :: Lens' UpdateTimeToLiveResponse (Maybe TimeToLiveSpecification)
uttlrrsTimeToLiveSpecification = lens _uttlrrsTimeToLiveSpecification (\s a -> s {_uttlrrsTimeToLiveSpecification = a})

-- | -- | The response status code.
uttlrrsResponseStatus :: Lens' UpdateTimeToLiveResponse Int
uttlrrsResponseStatus = lens _uttlrrsResponseStatus (\s a -> s {_uttlrrsResponseStatus = a})

instance NFData UpdateTimeToLiveResponse
