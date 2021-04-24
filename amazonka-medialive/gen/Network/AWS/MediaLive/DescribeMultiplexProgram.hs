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
-- Module      : Network.AWS.MediaLive.DescribeMultiplexProgram
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the details for a program in a multiplex.
module Network.AWS.MediaLive.DescribeMultiplexProgram
  ( -- * Creating a Request
    describeMultiplexProgram,
    DescribeMultiplexProgram,

    -- * Request Lenses
    dMultiplexId,
    dProgramName,

    -- * Destructuring the Response
    describeMultiplexProgramResponse,
    DescribeMultiplexProgramResponse,

    -- * Response Lenses
    dmprmrsPacketIdentifiersMap,
    dmprmrsMultiplexProgramSettings,
    dmprmrsChannelId,
    dmprmrsProgramName,
    dmprmrsPipelineDetails,
    dmprmrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeMultiplexProgramRequest
--
-- /See:/ 'describeMultiplexProgram' smart constructor.
data DescribeMultiplexProgram = DescribeMultiplexProgram'
  { _dMultiplexId ::
      !Text,
    _dProgramName ::
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

-- | Creates a value of 'DescribeMultiplexProgram' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMultiplexId' - The ID of the multiplex that the program belongs to.
--
-- * 'dProgramName' - The name of the program.
describeMultiplexProgram ::
  -- | 'dMultiplexId'
  Text ->
  -- | 'dProgramName'
  Text ->
  DescribeMultiplexProgram
describeMultiplexProgram pMultiplexId_ pProgramName_ =
  DescribeMultiplexProgram'
    { _dMultiplexId =
        pMultiplexId_,
      _dProgramName = pProgramName_
    }

-- | The ID of the multiplex that the program belongs to.
dMultiplexId :: Lens' DescribeMultiplexProgram Text
dMultiplexId = lens _dMultiplexId (\s a -> s {_dMultiplexId = a})

-- | The name of the program.
dProgramName :: Lens' DescribeMultiplexProgram Text
dProgramName = lens _dProgramName (\s a -> s {_dProgramName = a})

instance AWSRequest DescribeMultiplexProgram where
  type
    Rs DescribeMultiplexProgram =
      DescribeMultiplexProgramResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeMultiplexProgramResponse'
            <$> (x .?> "packetIdentifiersMap")
            <*> (x .?> "multiplexProgramSettings")
            <*> (x .?> "channelId")
            <*> (x .?> "programName")
            <*> (x .?> "pipelineDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMultiplexProgram

instance NFData DescribeMultiplexProgram

instance ToHeaders DescribeMultiplexProgram where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeMultiplexProgram where
  toPath DescribeMultiplexProgram' {..} =
    mconcat
      [ "/prod/multiplexes/",
        toBS _dMultiplexId,
        "/programs/",
        toBS _dProgramName
      ]

instance ToQuery DescribeMultiplexProgram where
  toQuery = const mempty

-- | Placeholder documentation for DescribeMultiplexProgramResponse
--
-- /See:/ 'describeMultiplexProgramResponse' smart constructor.
data DescribeMultiplexProgramResponse = DescribeMultiplexProgramResponse'
  { _dmprmrsPacketIdentifiersMap ::
      !( Maybe
           MultiplexProgramPacketIdentifiersMap
       ),
    _dmprmrsMultiplexProgramSettings ::
      !( Maybe
           MultiplexProgramSettings
       ),
    _dmprmrsChannelId ::
      !( Maybe
           Text
       ),
    _dmprmrsProgramName ::
      !( Maybe
           Text
       ),
    _dmprmrsPipelineDetails ::
      !( Maybe
           [MultiplexProgramPipelineDetail]
       ),
    _dmprmrsResponseStatus ::
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

-- | Creates a value of 'DescribeMultiplexProgramResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmprmrsPacketIdentifiersMap' - The packet identifier map for this multiplex program.
--
-- * 'dmprmrsMultiplexProgramSettings' - The settings for this multiplex program.
--
-- * 'dmprmrsChannelId' - The MediaLive channel associated with the program.
--
-- * 'dmprmrsProgramName' - The name of the multiplex program.
--
-- * 'dmprmrsPipelineDetails' - Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
--
-- * 'dmprmrsResponseStatus' - -- | The response status code.
describeMultiplexProgramResponse ::
  -- | 'dmprmrsResponseStatus'
  Int ->
  DescribeMultiplexProgramResponse
describeMultiplexProgramResponse pResponseStatus_ =
  DescribeMultiplexProgramResponse'
    { _dmprmrsPacketIdentifiersMap =
        Nothing,
      _dmprmrsMultiplexProgramSettings =
        Nothing,
      _dmprmrsChannelId = Nothing,
      _dmprmrsProgramName = Nothing,
      _dmprmrsPipelineDetails = Nothing,
      _dmprmrsResponseStatus = pResponseStatus_
    }

-- | The packet identifier map for this multiplex program.
dmprmrsPacketIdentifiersMap :: Lens' DescribeMultiplexProgramResponse (Maybe MultiplexProgramPacketIdentifiersMap)
dmprmrsPacketIdentifiersMap = lens _dmprmrsPacketIdentifiersMap (\s a -> s {_dmprmrsPacketIdentifiersMap = a})

-- | The settings for this multiplex program.
dmprmrsMultiplexProgramSettings :: Lens' DescribeMultiplexProgramResponse (Maybe MultiplexProgramSettings)
dmprmrsMultiplexProgramSettings = lens _dmprmrsMultiplexProgramSettings (\s a -> s {_dmprmrsMultiplexProgramSettings = a})

-- | The MediaLive channel associated with the program.
dmprmrsChannelId :: Lens' DescribeMultiplexProgramResponse (Maybe Text)
dmprmrsChannelId = lens _dmprmrsChannelId (\s a -> s {_dmprmrsChannelId = a})

-- | The name of the multiplex program.
dmprmrsProgramName :: Lens' DescribeMultiplexProgramResponse (Maybe Text)
dmprmrsProgramName = lens _dmprmrsProgramName (\s a -> s {_dmprmrsProgramName = a})

-- | Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
dmprmrsPipelineDetails :: Lens' DescribeMultiplexProgramResponse [MultiplexProgramPipelineDetail]
dmprmrsPipelineDetails = lens _dmprmrsPipelineDetails (\s a -> s {_dmprmrsPipelineDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
dmprmrsResponseStatus :: Lens' DescribeMultiplexProgramResponse Int
dmprmrsResponseStatus = lens _dmprmrsResponseStatus (\s a -> s {_dmprmrsResponseStatus = a})

instance NFData DescribeMultiplexProgramResponse
