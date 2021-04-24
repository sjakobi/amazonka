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
-- Module      : Network.AWS.MediaLive.BatchDelete
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts delete of resources.
module Network.AWS.MediaLive.BatchDelete
  ( -- * Creating a Request
    batchDelete',
    BatchDelete',

    -- * Request Lenses
    bdInputSecurityGroupIds,
    bdMultiplexIds,
    bdInputIds,
    bdChannelIds,

    -- * Destructuring the Response
    batchDeleteResponse,
    BatchDeleteResponse,

    -- * Response Lenses
    bdrrsSuccessful,
    bdrrsFailed,
    bdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to delete resources
--
-- /See:/ 'batchDelete'' smart constructor.
data BatchDelete' = BatchDelete''
  { _bdInputSecurityGroupIds ::
      !(Maybe [Text]),
    _bdMultiplexIds :: !(Maybe [Text]),
    _bdInputIds :: !(Maybe [Text]),
    _bdChannelIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdInputSecurityGroupIds' - List of input security group IDs
--
-- * 'bdMultiplexIds' - List of multiplex IDs
--
-- * 'bdInputIds' - List of input IDs
--
-- * 'bdChannelIds' - List of channel IDs
batchDelete' ::
  BatchDelete'
batchDelete' =
  BatchDelete''
    { _bdInputSecurityGroupIds = Nothing,
      _bdMultiplexIds = Nothing,
      _bdInputIds = Nothing,
      _bdChannelIds = Nothing
    }

-- | List of input security group IDs
bdInputSecurityGroupIds :: Lens' BatchDelete' [Text]
bdInputSecurityGroupIds = lens _bdInputSecurityGroupIds (\s a -> s {_bdInputSecurityGroupIds = a}) . _Default . _Coerce

-- | List of multiplex IDs
bdMultiplexIds :: Lens' BatchDelete' [Text]
bdMultiplexIds = lens _bdMultiplexIds (\s a -> s {_bdMultiplexIds = a}) . _Default . _Coerce

-- | List of input IDs
bdInputIds :: Lens' BatchDelete' [Text]
bdInputIds = lens _bdInputIds (\s a -> s {_bdInputIds = a}) . _Default . _Coerce

-- | List of channel IDs
bdChannelIds :: Lens' BatchDelete' [Text]
bdChannelIds = lens _bdChannelIds (\s a -> s {_bdChannelIds = a}) . _Default . _Coerce

instance AWSRequest BatchDelete' where
  type Rs BatchDelete' = BatchDeleteResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          BatchDeleteResponse'
            <$> (x .?> "successful" .!@ mempty)
            <*> (x .?> "failed" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchDelete'

instance NFData BatchDelete'

instance ToHeaders BatchDelete' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchDelete' where
  toJSON BatchDelete'' {..} =
    object
      ( catMaybes
          [ ("inputSecurityGroupIds" .=)
              <$> _bdInputSecurityGroupIds,
            ("multiplexIds" .=) <$> _bdMultiplexIds,
            ("inputIds" .=) <$> _bdInputIds,
            ("channelIds" .=) <$> _bdChannelIds
          ]
      )

instance ToPath BatchDelete' where
  toPath = const "/prod/batch/delete"

instance ToQuery BatchDelete' where
  toQuery = const mempty

-- | Placeholder documentation for BatchDeleteResponse
--
-- /See:/ 'batchDeleteResponse' smart constructor.
data BatchDeleteResponse = BatchDeleteResponse'
  { _bdrrsSuccessful ::
      !( Maybe
           [BatchSuccessfulResultModel]
       ),
    _bdrrsFailed ::
      !( Maybe
           [BatchFailedResultModel]
       ),
    _bdrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchDeleteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdrrsSuccessful' - List of successful operations
--
-- * 'bdrrsFailed' - List of failed operations
--
-- * 'bdrrsResponseStatus' - -- | The response status code.
batchDeleteResponse ::
  -- | 'bdrrsResponseStatus'
  Int ->
  BatchDeleteResponse
batchDeleteResponse pResponseStatus_ =
  BatchDeleteResponse'
    { _bdrrsSuccessful = Nothing,
      _bdrrsFailed = Nothing,
      _bdrrsResponseStatus = pResponseStatus_
    }

-- | List of successful operations
bdrrsSuccessful :: Lens' BatchDeleteResponse [BatchSuccessfulResultModel]
bdrrsSuccessful = lens _bdrrsSuccessful (\s a -> s {_bdrrsSuccessful = a}) . _Default . _Coerce

-- | List of failed operations
bdrrsFailed :: Lens' BatchDeleteResponse [BatchFailedResultModel]
bdrrsFailed = lens _bdrrsFailed (\s a -> s {_bdrrsFailed = a}) . _Default . _Coerce

-- | -- | The response status code.
bdrrsResponseStatus :: Lens' BatchDeleteResponse Int
bdrrsResponseStatus = lens _bdrrsResponseStatus (\s a -> s {_bdrrsResponseStatus = a})

instance NFData BatchDeleteResponse
