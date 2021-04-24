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
-- Module      : Network.AWS.Firehose.StopDeliveryStreamEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables server-side encryption (SSE) for the delivery stream.
--
--
-- This operation is asynchronous. It returns immediately. When you invoke it, Kinesis Data Firehose first sets the encryption status of the stream to @DISABLING@ , and then to @DISABLED@ . You can continue to read and write data to your stream while its status is @DISABLING@ . It can take up to 5 seconds after the encryption status changes to @DISABLED@ before all records written to the delivery stream are no longer subject to encryption. To find out whether a record or a batch of records was encrypted, check the response elements 'PutRecordOutput$Encrypted' and 'PutRecordBatchOutput$Encrypted' , respectively.
--
-- To check the encryption state of a delivery stream, use 'DescribeDeliveryStream' .
--
-- If SSE is enabled using a customer managed CMK and then you invoke @StopDeliveryStreamEncryption@ , Kinesis Data Firehose schedules the related KMS grant for retirement and then retires it after it ensures that it is finished delivering records to the destination.
--
-- The @StartDeliveryStreamEncryption@ and @StopDeliveryStreamEncryption@ operations have a combined limit of 25 calls per delivery stream per 24 hours. For example, you reach the limit if you call @StartDeliveryStreamEncryption@ 13 times and @StopDeliveryStreamEncryption@ 12 times for the same delivery stream in a 24-hour period.
module Network.AWS.Firehose.StopDeliveryStreamEncryption
  ( -- * Creating a Request
    stopDeliveryStreamEncryption,
    StopDeliveryStreamEncryption,

    -- * Request Lenses
    sDeliveryStreamName,

    -- * Destructuring the Response
    stopDeliveryStreamEncryptionResponse,
    StopDeliveryStreamEncryptionResponse,

    -- * Response Lenses
    srsResponseStatus,
  )
where

import Network.AWS.Firehose.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopDeliveryStreamEncryption' smart constructor.
newtype StopDeliveryStreamEncryption = StopDeliveryStreamEncryption'
  { _sDeliveryStreamName ::
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

-- | Creates a value of 'StopDeliveryStreamEncryption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDeliveryStreamName' - The name of the delivery stream for which you want to disable server-side encryption (SSE).
stopDeliveryStreamEncryption ::
  -- | 'sDeliveryStreamName'
  Text ->
  StopDeliveryStreamEncryption
stopDeliveryStreamEncryption pDeliveryStreamName_ =
  StopDeliveryStreamEncryption'
    { _sDeliveryStreamName =
        pDeliveryStreamName_
    }

-- | The name of the delivery stream for which you want to disable server-side encryption (SSE).
sDeliveryStreamName :: Lens' StopDeliveryStreamEncryption Text
sDeliveryStreamName = lens _sDeliveryStreamName (\s a -> s {_sDeliveryStreamName = a})

instance AWSRequest StopDeliveryStreamEncryption where
  type
    Rs StopDeliveryStreamEncryption =
      StopDeliveryStreamEncryptionResponse
  request = postJSON firehose
  response =
    receiveEmpty
      ( \s h x ->
          StopDeliveryStreamEncryptionResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable StopDeliveryStreamEncryption

instance NFData StopDeliveryStreamEncryption

instance ToHeaders StopDeliveryStreamEncryption where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Firehose_20150804.StopDeliveryStreamEncryption" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopDeliveryStreamEncryption where
  toJSON StopDeliveryStreamEncryption' {..} =
    object
      ( catMaybes
          [ Just
              ("DeliveryStreamName" .= _sDeliveryStreamName)
          ]
      )

instance ToPath StopDeliveryStreamEncryption where
  toPath = const "/"

instance ToQuery StopDeliveryStreamEncryption where
  toQuery = const mempty

-- | /See:/ 'stopDeliveryStreamEncryptionResponse' smart constructor.
newtype StopDeliveryStreamEncryptionResponse = StopDeliveryStreamEncryptionResponse'
  { _srsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopDeliveryStreamEncryptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsResponseStatus' - -- | The response status code.
stopDeliveryStreamEncryptionResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StopDeliveryStreamEncryptionResponse
stopDeliveryStreamEncryptionResponse pResponseStatus_ =
  StopDeliveryStreamEncryptionResponse'
    { _srsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
srsResponseStatus :: Lens' StopDeliveryStreamEncryptionResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StopDeliveryStreamEncryptionResponse
