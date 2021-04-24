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
-- Module      : Network.AWS.CloudWatchEvents.DeleteConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a connection.
module Network.AWS.CloudWatchEvents.DeleteConnection
  ( -- * Creating a Request
    deleteConnection,
    DeleteConnection,

    -- * Request Lenses
    dcName,

    -- * Destructuring the Response
    deleteConnectionResponse,
    DeleteConnectionResponse,

    -- * Response Lenses
    dcrrsCreationTime,
    dcrrsConnectionState,
    dcrrsConnectionARN,
    dcrrsLastModifiedTime,
    dcrrsLastAuthorizedTime,
    dcrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteConnection' smart constructor.
newtype DeleteConnection = DeleteConnection'
  { _dcName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcName' - The name of the connection to delete.
deleteConnection ::
  -- | 'dcName'
  Text ->
  DeleteConnection
deleteConnection pName_ =
  DeleteConnection' {_dcName = pName_}

-- | The name of the connection to delete.
dcName :: Lens' DeleteConnection Text
dcName = lens _dcName (\s a -> s {_dcName = a})

instance AWSRequest DeleteConnection where
  type Rs DeleteConnection = DeleteConnectionResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DeleteConnectionResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ConnectionState")
            <*> (x .?> "ConnectionArn")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "LastAuthorizedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteConnection

instance NFData DeleteConnection

instance ToHeaders DeleteConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DeleteConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteConnection where
  toJSON DeleteConnection' {..} =
    object (catMaybes [Just ("Name" .= _dcName)])

instance ToPath DeleteConnection where
  toPath = const "/"

instance ToQuery DeleteConnection where
  toQuery = const mempty

-- | /See:/ 'deleteConnectionResponse' smart constructor.
data DeleteConnectionResponse = DeleteConnectionResponse'
  { _dcrrsCreationTime ::
      !(Maybe POSIX),
    _dcrrsConnectionState ::
      !( Maybe
           ConnectionState
       ),
    _dcrrsConnectionARN ::
      !(Maybe Text),
    _dcrrsLastModifiedTime ::
      !(Maybe POSIX),
    _dcrrsLastAuthorizedTime ::
      !(Maybe POSIX),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DeleteConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsCreationTime' - A time stamp for the time that the connection was created.
--
-- * 'dcrrsConnectionState' - The state of the connection before it was deleted.
--
-- * 'dcrrsConnectionARN' - The ARN of the connection that was deleted.
--
-- * 'dcrrsLastModifiedTime' - A time stamp for the time that the connection was last modified before it was deleted.
--
-- * 'dcrrsLastAuthorizedTime' - A time stamp for the time that the connection was last authorized before it wa deleted.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
deleteConnectionResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DeleteConnectionResponse
deleteConnectionResponse pResponseStatus_ =
  DeleteConnectionResponse'
    { _dcrrsCreationTime =
        Nothing,
      _dcrrsConnectionState = Nothing,
      _dcrrsConnectionARN = Nothing,
      _dcrrsLastModifiedTime = Nothing,
      _dcrrsLastAuthorizedTime = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | A time stamp for the time that the connection was created.
dcrrsCreationTime :: Lens' DeleteConnectionResponse (Maybe UTCTime)
dcrrsCreationTime = lens _dcrrsCreationTime (\s a -> s {_dcrrsCreationTime = a}) . mapping _Time

-- | The state of the connection before it was deleted.
dcrrsConnectionState :: Lens' DeleteConnectionResponse (Maybe ConnectionState)
dcrrsConnectionState = lens _dcrrsConnectionState (\s a -> s {_dcrrsConnectionState = a})

-- | The ARN of the connection that was deleted.
dcrrsConnectionARN :: Lens' DeleteConnectionResponse (Maybe Text)
dcrrsConnectionARN = lens _dcrrsConnectionARN (\s a -> s {_dcrrsConnectionARN = a})

-- | A time stamp for the time that the connection was last modified before it was deleted.
dcrrsLastModifiedTime :: Lens' DeleteConnectionResponse (Maybe UTCTime)
dcrrsLastModifiedTime = lens _dcrrsLastModifiedTime (\s a -> s {_dcrrsLastModifiedTime = a}) . mapping _Time

-- | A time stamp for the time that the connection was last authorized before it wa deleted.
dcrrsLastAuthorizedTime :: Lens' DeleteConnectionResponse (Maybe UTCTime)
dcrrsLastAuthorizedTime = lens _dcrrsLastAuthorizedTime (\s a -> s {_dcrrsLastAuthorizedTime = a}) . mapping _Time

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DeleteConnectionResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DeleteConnectionResponse
