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
-- Module      : Network.AWS.IoT.UpdateStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing stream. The stream version will be incremented by one.
module Network.AWS.IoT.UpdateStream
  ( -- * Creating a Request
    updateStream,
    UpdateStream,

    -- * Request Lenses
    usRoleARN,
    usDescription,
    usFiles,
    usStreamId,

    -- * Destructuring the Response
    updateStreamResponse,
    UpdateStreamResponse,

    -- * Response Lenses
    usrrsStreamVersion,
    usrrsStreamId,
    usrrsStreamARN,
    usrrsDescription,
    usrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateStream' smart constructor.
data UpdateStream = UpdateStream'
  { _usRoleARN ::
      !(Maybe Text),
    _usDescription :: !(Maybe Text),
    _usFiles :: !(Maybe (List1 StreamFile)),
    _usStreamId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usRoleARN' - An IAM role that allows the IoT service principal assumes to access your S3 files.
--
-- * 'usDescription' - The description of the stream.
--
-- * 'usFiles' - The files associated with the stream.
--
-- * 'usStreamId' - The stream ID.
updateStream ::
  -- | 'usStreamId'
  Text ->
  UpdateStream
updateStream pStreamId_ =
  UpdateStream'
    { _usRoleARN = Nothing,
      _usDescription = Nothing,
      _usFiles = Nothing,
      _usStreamId = pStreamId_
    }

-- | An IAM role that allows the IoT service principal assumes to access your S3 files.
usRoleARN :: Lens' UpdateStream (Maybe Text)
usRoleARN = lens _usRoleARN (\s a -> s {_usRoleARN = a})

-- | The description of the stream.
usDescription :: Lens' UpdateStream (Maybe Text)
usDescription = lens _usDescription (\s a -> s {_usDescription = a})

-- | The files associated with the stream.
usFiles :: Lens' UpdateStream (Maybe (NonEmpty StreamFile))
usFiles = lens _usFiles (\s a -> s {_usFiles = a}) . mapping _List1

-- | The stream ID.
usStreamId :: Lens' UpdateStream Text
usStreamId = lens _usStreamId (\s a -> s {_usStreamId = a})

instance AWSRequest UpdateStream where
  type Rs UpdateStream = UpdateStreamResponse
  request = putJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateStreamResponse'
            <$> (x .?> "streamVersion")
            <*> (x .?> "streamId")
            <*> (x .?> "streamArn")
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateStream

instance NFData UpdateStream

instance ToHeaders UpdateStream where
  toHeaders = const mempty

instance ToJSON UpdateStream where
  toJSON UpdateStream' {..} =
    object
      ( catMaybes
          [ ("roleArn" .=) <$> _usRoleARN,
            ("description" .=) <$> _usDescription,
            ("files" .=) <$> _usFiles
          ]
      )

instance ToPath UpdateStream where
  toPath UpdateStream' {..} =
    mconcat ["/streams/", toBS _usStreamId]

instance ToQuery UpdateStream where
  toQuery = const mempty

-- | /See:/ 'updateStreamResponse' smart constructor.
data UpdateStreamResponse = UpdateStreamResponse'
  { _usrrsStreamVersion ::
      !(Maybe Nat),
    _usrrsStreamId ::
      !(Maybe Text),
    _usrrsStreamARN ::
      !(Maybe Text),
    _usrrsDescription ::
      !(Maybe Text),
    _usrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrsStreamVersion' - The stream version.
--
-- * 'usrrsStreamId' - The stream ID.
--
-- * 'usrrsStreamARN' - The stream ARN.
--
-- * 'usrrsDescription' - A description of the stream.
--
-- * 'usrrsResponseStatus' - -- | The response status code.
updateStreamResponse ::
  -- | 'usrrsResponseStatus'
  Int ->
  UpdateStreamResponse
updateStreamResponse pResponseStatus_ =
  UpdateStreamResponse'
    { _usrrsStreamVersion =
        Nothing,
      _usrrsStreamId = Nothing,
      _usrrsStreamARN = Nothing,
      _usrrsDescription = Nothing,
      _usrrsResponseStatus = pResponseStatus_
    }

-- | The stream version.
usrrsStreamVersion :: Lens' UpdateStreamResponse (Maybe Natural)
usrrsStreamVersion = lens _usrrsStreamVersion (\s a -> s {_usrrsStreamVersion = a}) . mapping _Nat

-- | The stream ID.
usrrsStreamId :: Lens' UpdateStreamResponse (Maybe Text)
usrrsStreamId = lens _usrrsStreamId (\s a -> s {_usrrsStreamId = a})

-- | The stream ARN.
usrrsStreamARN :: Lens' UpdateStreamResponse (Maybe Text)
usrrsStreamARN = lens _usrrsStreamARN (\s a -> s {_usrrsStreamARN = a})

-- | A description of the stream.
usrrsDescription :: Lens' UpdateStreamResponse (Maybe Text)
usrrsDescription = lens _usrrsDescription (\s a -> s {_usrrsDescription = a})

-- | -- | The response status code.
usrrsResponseStatus :: Lens' UpdateStreamResponse Int
usrrsResponseStatus = lens _usrrsResponseStatus (\s a -> s {_usrrsResponseStatus = a})

instance NFData UpdateStreamResponse
