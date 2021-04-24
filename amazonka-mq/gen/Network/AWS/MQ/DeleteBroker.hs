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
-- Module      : Network.AWS.MQ.DeleteBroker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a broker. Note: This API is asynchronous.
module Network.AWS.MQ.DeleteBroker
  ( -- * Creating a Request
    deleteBroker,
    DeleteBroker,

    -- * Request Lenses
    dBrokerId,

    -- * Destructuring the Response
    deleteBrokerResponse,
    DeleteBrokerResponse,

    -- * Response Lenses
    dbrrsBrokerId,
    dbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteBroker' smart constructor.
newtype DeleteBroker = DeleteBroker'
  { _dBrokerId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBroker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBrokerId' - The unique ID that Amazon MQ generates for the broker.
deleteBroker ::
  -- | 'dBrokerId'
  Text ->
  DeleteBroker
deleteBroker pBrokerId_ =
  DeleteBroker' {_dBrokerId = pBrokerId_}

-- | The unique ID that Amazon MQ generates for the broker.
dBrokerId :: Lens' DeleteBroker Text
dBrokerId = lens _dBrokerId (\s a -> s {_dBrokerId = a})

instance AWSRequest DeleteBroker where
  type Rs DeleteBroker = DeleteBrokerResponse
  request = delete mq
  response =
    receiveJSON
      ( \s h x ->
          DeleteBrokerResponse'
            <$> (x .?> "brokerId") <*> (pure (fromEnum s))
      )

instance Hashable DeleteBroker

instance NFData DeleteBroker

instance ToHeaders DeleteBroker where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteBroker where
  toPath DeleteBroker' {..} =
    mconcat ["/v1/brokers/", toBS _dBrokerId]

instance ToQuery DeleteBroker where
  toQuery = const mempty

-- | /See:/ 'deleteBrokerResponse' smart constructor.
data DeleteBrokerResponse = DeleteBrokerResponse'
  { _dbrrsBrokerId ::
      !(Maybe Text),
    _dbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBrokerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrrsBrokerId' - The unique ID that Amazon MQ generates for the broker.
--
-- * 'dbrrsResponseStatus' - -- | The response status code.
deleteBrokerResponse ::
  -- | 'dbrrsResponseStatus'
  Int ->
  DeleteBrokerResponse
deleteBrokerResponse pResponseStatus_ =
  DeleteBrokerResponse'
    { _dbrrsBrokerId = Nothing,
      _dbrrsResponseStatus = pResponseStatus_
    }

-- | The unique ID that Amazon MQ generates for the broker.
dbrrsBrokerId :: Lens' DeleteBrokerResponse (Maybe Text)
dbrrsBrokerId = lens _dbrrsBrokerId (\s a -> s {_dbrrsBrokerId = a})

-- | -- | The response status code.
dbrrsResponseStatus :: Lens' DeleteBrokerResponse Int
dbrrsResponseStatus = lens _dbrrsResponseStatus (\s a -> s {_dbrrsResponseStatus = a})

instance NFData DeleteBrokerResponse
