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
-- Module      : Network.AWS.SQS.ChangeMessageVisibilityBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the visibility timeout of multiple messages. This is a batch version of @'ChangeMessageVisibility' .@ The result of the action on each message is reported individually in the response. You can send up to 10 @'ChangeMessageVisibility' @ requests with each @ChangeMessageVisibilityBatch@ action.
--
--
-- /Important:/ Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of @200@ .
--
-- Some actions take lists of parameters. These lists are specified using the @param.n@ notation. Values of @n@ are integers starting from 1. For example, a parameter list with two elements looks like this:
--
-- @&AttributeName.1=first@
--
-- @&AttributeName.2=second@
module Network.AWS.SQS.ChangeMessageVisibilityBatch
  ( -- * Creating a Request
    changeMessageVisibilityBatch,
    ChangeMessageVisibilityBatch,

    -- * Request Lenses
    cmvbQueueURL,
    cmvbEntries,

    -- * Destructuring the Response
    changeMessageVisibilityBatchResponse,
    ChangeMessageVisibilityBatchResponse,

    -- * Response Lenses
    cmvbrrsResponseStatus,
    cmvbrrsSuccessful,
    cmvbrrsFailed,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SQS.Types

-- |
--
--
--
-- /See:/ 'changeMessageVisibilityBatch' smart constructor.
data ChangeMessageVisibilityBatch = ChangeMessageVisibilityBatch'
  { _cmvbQueueURL ::
      !Text,
    _cmvbEntries ::
      ![ChangeMessageVisibilityBatchRequestEntry]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ChangeMessageVisibilityBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmvbQueueURL' - The URL of the Amazon SQS queue whose messages' visibility is changed. Queue URLs and names are case-sensitive.
--
-- * 'cmvbEntries' - A list of receipt handles of the messages for which the visibility timeout must be changed.
changeMessageVisibilityBatch ::
  -- | 'cmvbQueueURL'
  Text ->
  ChangeMessageVisibilityBatch
changeMessageVisibilityBatch pQueueURL_ =
  ChangeMessageVisibilityBatch'
    { _cmvbQueueURL =
        pQueueURL_,
      _cmvbEntries = mempty
    }

-- | The URL of the Amazon SQS queue whose messages' visibility is changed. Queue URLs and names are case-sensitive.
cmvbQueueURL :: Lens' ChangeMessageVisibilityBatch Text
cmvbQueueURL = lens _cmvbQueueURL (\s a -> s {_cmvbQueueURL = a})

-- | A list of receipt handles of the messages for which the visibility timeout must be changed.
cmvbEntries :: Lens' ChangeMessageVisibilityBatch [ChangeMessageVisibilityBatchRequestEntry]
cmvbEntries = lens _cmvbEntries (\s a -> s {_cmvbEntries = a}) . _Coerce

instance AWSRequest ChangeMessageVisibilityBatch where
  type
    Rs ChangeMessageVisibilityBatch =
      ChangeMessageVisibilityBatchResponse
  request = postQuery sqs
  response =
    receiveXMLWrapper
      "ChangeMessageVisibilityBatchResult"
      ( \s h x ->
          ChangeMessageVisibilityBatchResponse'
            <$> (pure (fromEnum s))
            <*> ( parseXMLList
                    "ChangeMessageVisibilityBatchResultEntry"
                    x
                )
            <*> (parseXMLList "BatchResultErrorEntry" x)
      )

instance Hashable ChangeMessageVisibilityBatch

instance NFData ChangeMessageVisibilityBatch

instance ToHeaders ChangeMessageVisibilityBatch where
  toHeaders = const mempty

instance ToPath ChangeMessageVisibilityBatch where
  toPath = const "/"

instance ToQuery ChangeMessageVisibilityBatch where
  toQuery ChangeMessageVisibilityBatch' {..} =
    mconcat
      [ "Action"
          =: ("ChangeMessageVisibilityBatch" :: ByteString),
        "Version" =: ("2012-11-05" :: ByteString),
        "QueueUrl" =: _cmvbQueueURL,
        toQueryList
          "ChangeMessageVisibilityBatchRequestEntry"
          _cmvbEntries
      ]

-- | For each message in the batch, the response contains a @'ChangeMessageVisibilityBatchResultEntry' @ tag if the message succeeds or a @'BatchResultErrorEntry' @ tag if the message fails.
--
--
--
-- /See:/ 'changeMessageVisibilityBatchResponse' smart constructor.
data ChangeMessageVisibilityBatchResponse = ChangeMessageVisibilityBatchResponse'
  { _cmvbrrsResponseStatus ::
      !Int,
    _cmvbrrsSuccessful ::
      ![ChangeMessageVisibilityBatchResultEntry],
    _cmvbrrsFailed ::
      ![BatchResultErrorEntry]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ChangeMessageVisibilityBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmvbrrsResponseStatus' - -- | The response status code.
--
-- * 'cmvbrrsSuccessful' - A list of @'ChangeMessageVisibilityBatchResultEntry' @ items.
--
-- * 'cmvbrrsFailed' - A list of @'BatchResultErrorEntry' @ items.
changeMessageVisibilityBatchResponse ::
  -- | 'cmvbrrsResponseStatus'
  Int ->
  ChangeMessageVisibilityBatchResponse
changeMessageVisibilityBatchResponse pResponseStatus_ =
  ChangeMessageVisibilityBatchResponse'
    { _cmvbrrsResponseStatus =
        pResponseStatus_,
      _cmvbrrsSuccessful = mempty,
      _cmvbrrsFailed = mempty
    }

-- | -- | The response status code.
cmvbrrsResponseStatus :: Lens' ChangeMessageVisibilityBatchResponse Int
cmvbrrsResponseStatus = lens _cmvbrrsResponseStatus (\s a -> s {_cmvbrrsResponseStatus = a})

-- | A list of @'ChangeMessageVisibilityBatchResultEntry' @ items.
cmvbrrsSuccessful :: Lens' ChangeMessageVisibilityBatchResponse [ChangeMessageVisibilityBatchResultEntry]
cmvbrrsSuccessful = lens _cmvbrrsSuccessful (\s a -> s {_cmvbrrsSuccessful = a}) . _Coerce

-- | A list of @'BatchResultErrorEntry' @ items.
cmvbrrsFailed :: Lens' ChangeMessageVisibilityBatchResponse [BatchResultErrorEntry]
cmvbrrsFailed = lens _cmvbrrsFailed (\s a -> s {_cmvbrrsFailed = a}) . _Coerce

instance NFData ChangeMessageVisibilityBatchResponse
