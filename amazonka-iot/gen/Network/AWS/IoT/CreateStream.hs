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
-- Module      : Network.AWS.IoT.CreateStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream.
module Network.AWS.IoT.CreateStream
  ( -- * Creating a Request
    createStream,
    CreateStream,

    -- * Request Lenses
    csTags,
    csDescription,
    csStreamId,
    csFiles,
    csRoleARN,

    -- * Destructuring the Response
    createStreamResponse,
    CreateStreamResponse,

    -- * Response Lenses
    csrrsStreamVersion,
    csrrsStreamId,
    csrrsStreamARN,
    csrrsDescription,
    csrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createStream' smart constructor.
data CreateStream = CreateStream'
  { _csTags ::
      !(Maybe [Tag]),
    _csDescription :: !(Maybe Text),
    _csStreamId :: !Text,
    _csFiles :: !(List1 StreamFile),
    _csRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csTags' - Metadata which can be used to manage streams.
--
-- * 'csDescription' - A description of the stream.
--
-- * 'csStreamId' - The stream ID.
--
-- * 'csFiles' - The files to stream.
--
-- * 'csRoleARN' - An IAM role that allows the IoT service principal assumes to access your S3 files.
createStream ::
  -- | 'csStreamId'
  Text ->
  -- | 'csFiles'
  NonEmpty StreamFile ->
  -- | 'csRoleARN'
  Text ->
  CreateStream
createStream pStreamId_ pFiles_ pRoleARN_ =
  CreateStream'
    { _csTags = Nothing,
      _csDescription = Nothing,
      _csStreamId = pStreamId_,
      _csFiles = _List1 # pFiles_,
      _csRoleARN = pRoleARN_
    }

-- | Metadata which can be used to manage streams.
csTags :: Lens' CreateStream [Tag]
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Coerce

-- | A description of the stream.
csDescription :: Lens' CreateStream (Maybe Text)
csDescription = lens _csDescription (\s a -> s {_csDescription = a})

-- | The stream ID.
csStreamId :: Lens' CreateStream Text
csStreamId = lens _csStreamId (\s a -> s {_csStreamId = a})

-- | The files to stream.
csFiles :: Lens' CreateStream (NonEmpty StreamFile)
csFiles = lens _csFiles (\s a -> s {_csFiles = a}) . _List1

-- | An IAM role that allows the IoT service principal assumes to access your S3 files.
csRoleARN :: Lens' CreateStream Text
csRoleARN = lens _csRoleARN (\s a -> s {_csRoleARN = a})

instance AWSRequest CreateStream where
  type Rs CreateStream = CreateStreamResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateStreamResponse'
            <$> (x .?> "streamVersion")
            <*> (x .?> "streamId")
            <*> (x .?> "streamArn")
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateStream

instance NFData CreateStream

instance ToHeaders CreateStream where
  toHeaders = const mempty

instance ToJSON CreateStream where
  toJSON CreateStream' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _csTags,
            ("description" .=) <$> _csDescription,
            Just ("files" .= _csFiles),
            Just ("roleArn" .= _csRoleARN)
          ]
      )

instance ToPath CreateStream where
  toPath CreateStream' {..} =
    mconcat ["/streams/", toBS _csStreamId]

instance ToQuery CreateStream where
  toQuery = const mempty

-- | /See:/ 'createStreamResponse' smart constructor.
data CreateStreamResponse = CreateStreamResponse'
  { _csrrsStreamVersion ::
      !(Maybe Nat),
    _csrrsStreamId ::
      !(Maybe Text),
    _csrrsStreamARN ::
      !(Maybe Text),
    _csrrsDescription ::
      !(Maybe Text),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsStreamVersion' - The version of the stream.
--
-- * 'csrrsStreamId' - The stream ID.
--
-- * 'csrrsStreamARN' - The stream ARN.
--
-- * 'csrrsDescription' - A description of the stream.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createStreamResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateStreamResponse
createStreamResponse pResponseStatus_ =
  CreateStreamResponse'
    { _csrrsStreamVersion =
        Nothing,
      _csrrsStreamId = Nothing,
      _csrrsStreamARN = Nothing,
      _csrrsDescription = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The version of the stream.
csrrsStreamVersion :: Lens' CreateStreamResponse (Maybe Natural)
csrrsStreamVersion = lens _csrrsStreamVersion (\s a -> s {_csrrsStreamVersion = a}) . mapping _Nat

-- | The stream ID.
csrrsStreamId :: Lens' CreateStreamResponse (Maybe Text)
csrrsStreamId = lens _csrrsStreamId (\s a -> s {_csrrsStreamId = a})

-- | The stream ARN.
csrrsStreamARN :: Lens' CreateStreamResponse (Maybe Text)
csrrsStreamARN = lens _csrrsStreamARN (\s a -> s {_csrrsStreamARN = a})

-- | A description of the stream.
csrrsDescription :: Lens' CreateStreamResponse (Maybe Text)
csrrsDescription = lens _csrrsDescription (\s a -> s {_csrrsDescription = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateStreamResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateStreamResponse
