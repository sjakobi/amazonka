{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types.ChangeMessageVisibilityBatchRequestEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.ChangeMessageVisibilityBatchRequestEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Encloses a receipt handle and an entry id for each message in @'ChangeMessageVisibilityBatch' .@
--
--
-- /Important:/ All of the following list parameters must be prefixed with @ChangeMessageVisibilityBatchRequestEntry.n@ , where @n@ is an integer value starting with @1@ . For example, a parameter list for this action might look like this:
--
-- @&ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2@
--
-- @&ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=your_receipt_handle@
--
-- @&ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45@
--
--
-- /See:/ 'changeMessageVisibilityBatchRequestEntry' smart constructor.
data ChangeMessageVisibilityBatchRequestEntry = ChangeMessageVisibilityBatchRequestEntry'
  { _cmvbreVisibilityTimeout ::
      !( Maybe
           Int
       ),
    _cmvbreId ::
      !Text,
    _cmvbreReceiptHandle ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ChangeMessageVisibilityBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmvbreVisibilityTimeout' - The new value (in seconds) for the message's visibility timeout.
--
-- * 'cmvbreId' - An identifier for this particular receipt handle used to communicate the result.
--
-- * 'cmvbreReceiptHandle' - A receipt handle.
changeMessageVisibilityBatchRequestEntry ::
  -- | 'cmvbreId'
  Text ->
  -- | 'cmvbreReceiptHandle'
  Text ->
  ChangeMessageVisibilityBatchRequestEntry
changeMessageVisibilityBatchRequestEntry
  pId_
  pReceiptHandle_ =
    ChangeMessageVisibilityBatchRequestEntry'
      { _cmvbreVisibilityTimeout =
          Nothing,
        _cmvbreId = pId_,
        _cmvbreReceiptHandle =
          pReceiptHandle_
      }

-- | The new value (in seconds) for the message's visibility timeout.
cmvbreVisibilityTimeout :: Lens' ChangeMessageVisibilityBatchRequestEntry (Maybe Int)
cmvbreVisibilityTimeout = lens _cmvbreVisibilityTimeout (\s a -> s {_cmvbreVisibilityTimeout = a})

-- | An identifier for this particular receipt handle used to communicate the result.
cmvbreId :: Lens' ChangeMessageVisibilityBatchRequestEntry Text
cmvbreId = lens _cmvbreId (\s a -> s {_cmvbreId = a})

-- | A receipt handle.
cmvbreReceiptHandle :: Lens' ChangeMessageVisibilityBatchRequestEntry Text
cmvbreReceiptHandle = lens _cmvbreReceiptHandle (\s a -> s {_cmvbreReceiptHandle = a})

instance
  Hashable
    ChangeMessageVisibilityBatchRequestEntry

instance
  NFData
    ChangeMessageVisibilityBatchRequestEntry

instance
  ToQuery
    ChangeMessageVisibilityBatchRequestEntry
  where
  toQuery ChangeMessageVisibilityBatchRequestEntry' {..} =
    mconcat
      [ "VisibilityTimeout" =: _cmvbreVisibilityTimeout,
        "Id" =: _cmvbreId,
        "ReceiptHandle" =: _cmvbreReceiptHandle
      ]
