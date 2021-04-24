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
-- Module      : Network.AWS.CloudDirectory.BatchWrite
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs all the write operations in a batch. Either all the operations succeed or none.
module Network.AWS.CloudDirectory.BatchWrite
  ( -- * Creating a Request
    batchWrite,
    BatchWrite,

    -- * Request Lenses
    bwDirectoryARN,
    bwOperations,

    -- * Destructuring the Response
    batchWriteResponse,
    BatchWriteResponse,

    -- * Response Lenses
    bwrrsResponses,
    bwrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchWrite' smart constructor.
data BatchWrite = BatchWrite'
  { _bwDirectoryARN ::
      !Text,
    _bwOperations :: ![BatchWriteOperation]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchWrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bwDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' . For more information, see 'arns' .
--
-- * 'bwOperations' - A list of operations that are part of the batch.
batchWrite ::
  -- | 'bwDirectoryARN'
  Text ->
  BatchWrite
batchWrite pDirectoryARN_ =
  BatchWrite'
    { _bwDirectoryARN = pDirectoryARN_,
      _bwOperations = mempty
    }

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' . For more information, see 'arns' .
bwDirectoryARN :: Lens' BatchWrite Text
bwDirectoryARN = lens _bwDirectoryARN (\s a -> s {_bwDirectoryARN = a})

-- | A list of operations that are part of the batch.
bwOperations :: Lens' BatchWrite [BatchWriteOperation]
bwOperations = lens _bwOperations (\s a -> s {_bwOperations = a}) . _Coerce

instance AWSRequest BatchWrite where
  type Rs BatchWrite = BatchWriteResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          BatchWriteResponse'
            <$> (x .?> "Responses" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchWrite

instance NFData BatchWrite

instance ToHeaders BatchWrite where
  toHeaders BatchWrite' {..} =
    mconcat ["x-amz-data-partition" =# _bwDirectoryARN]

instance ToJSON BatchWrite where
  toJSON BatchWrite' {..} =
    object
      (catMaybes [Just ("Operations" .= _bwOperations)])

instance ToPath BatchWrite where
  toPath =
    const "/amazonclouddirectory/2017-01-11/batchwrite"

instance ToQuery BatchWrite where
  toQuery = const mempty

-- | /See:/ 'batchWriteResponse' smart constructor.
data BatchWriteResponse = BatchWriteResponse'
  { _bwrrsResponses ::
      !( Maybe
           [BatchWriteOperationResponse]
       ),
    _bwrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchWriteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bwrrsResponses' - A list of all the responses for each batch write.
--
-- * 'bwrrsResponseStatus' - -- | The response status code.
batchWriteResponse ::
  -- | 'bwrrsResponseStatus'
  Int ->
  BatchWriteResponse
batchWriteResponse pResponseStatus_ =
  BatchWriteResponse'
    { _bwrrsResponses = Nothing,
      _bwrrsResponseStatus = pResponseStatus_
    }

-- | A list of all the responses for each batch write.
bwrrsResponses :: Lens' BatchWriteResponse [BatchWriteOperationResponse]
bwrrsResponses = lens _bwrrsResponses (\s a -> s {_bwrrsResponses = a}) . _Default . _Coerce

-- | -- | The response status code.
bwrrsResponseStatus :: Lens' BatchWriteResponse Int
bwrrsResponseStatus = lens _bwrrsResponseStatus (\s a -> s {_bwrrsResponseStatus = a})

instance NFData BatchWriteResponse
