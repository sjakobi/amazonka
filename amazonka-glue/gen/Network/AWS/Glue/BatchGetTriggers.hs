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
-- Module      : Network.AWS.Glue.BatchGetTriggers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of resource metadata for a given list of trigger names. After calling the @ListTriggers@ operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.
module Network.AWS.Glue.BatchGetTriggers
  ( -- * Creating a Request
    batchGetTriggers,
    BatchGetTriggers,

    -- * Request Lenses
    bgtTriggerNames,

    -- * Destructuring the Response
    batchGetTriggersResponse,
    BatchGetTriggersResponse,

    -- * Response Lenses
    bgtrrsTriggers,
    bgtrrsTriggersNotFound,
    bgtrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetTriggers' smart constructor.
newtype BatchGetTriggers = BatchGetTriggers'
  { _bgtTriggerNames ::
      [Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetTriggers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgtTriggerNames' - A list of trigger names, which may be the names returned from the @ListTriggers@ operation.
batchGetTriggers ::
  BatchGetTriggers
batchGetTriggers =
  BatchGetTriggers' {_bgtTriggerNames = mempty}

-- | A list of trigger names, which may be the names returned from the @ListTriggers@ operation.
bgtTriggerNames :: Lens' BatchGetTriggers [Text]
bgtTriggerNames = lens _bgtTriggerNames (\s a -> s {_bgtTriggerNames = a}) . _Coerce

instance AWSRequest BatchGetTriggers where
  type Rs BatchGetTriggers = BatchGetTriggersResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          BatchGetTriggersResponse'
            <$> (x .?> "Triggers" .!@ mempty)
            <*> (x .?> "TriggersNotFound" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetTriggers

instance NFData BatchGetTriggers

instance ToHeaders BatchGetTriggers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.BatchGetTriggers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetTriggers where
  toJSON BatchGetTriggers' {..} =
    object
      ( catMaybes
          [Just ("TriggerNames" .= _bgtTriggerNames)]
      )

instance ToPath BatchGetTriggers where
  toPath = const "/"

instance ToQuery BatchGetTriggers where
  toQuery = const mempty

-- | /See:/ 'batchGetTriggersResponse' smart constructor.
data BatchGetTriggersResponse = BatchGetTriggersResponse'
  { _bgtrrsTriggers ::
      !(Maybe [Trigger]),
    _bgtrrsTriggersNotFound ::
      !(Maybe [Text]),
    _bgtrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgtrrsTriggers' - A list of trigger definitions.
--
-- * 'bgtrrsTriggersNotFound' - A list of names of triggers not found.
--
-- * 'bgtrrsResponseStatus' - -- | The response status code.
batchGetTriggersResponse ::
  -- | 'bgtrrsResponseStatus'
  Int ->
  BatchGetTriggersResponse
batchGetTriggersResponse pResponseStatus_ =
  BatchGetTriggersResponse'
    { _bgtrrsTriggers =
        Nothing,
      _bgtrrsTriggersNotFound = Nothing,
      _bgtrrsResponseStatus = pResponseStatus_
    }

-- | A list of trigger definitions.
bgtrrsTriggers :: Lens' BatchGetTriggersResponse [Trigger]
bgtrrsTriggers = lens _bgtrrsTriggers (\s a -> s {_bgtrrsTriggers = a}) . _Default . _Coerce

-- | A list of names of triggers not found.
bgtrrsTriggersNotFound :: Lens' BatchGetTriggersResponse [Text]
bgtrrsTriggersNotFound = lens _bgtrrsTriggersNotFound (\s a -> s {_bgtrrsTriggersNotFound = a}) . _Default . _Coerce

-- | -- | The response status code.
bgtrrsResponseStatus :: Lens' BatchGetTriggersResponse Int
bgtrrsResponseStatus = lens _bgtrrsResponseStatus (\s a -> s {_bgtrrsResponseStatus = a})

instance NFData BatchGetTriggersResponse
