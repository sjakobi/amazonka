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
-- Module      : Network.AWS.MediaLive.DeleteMultiplexProgram
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a program from a multiplex.
module Network.AWS.MediaLive.DeleteMultiplexProgram
  ( -- * Creating a Request
    deleteMultiplexProgram,
    DeleteMultiplexProgram,

    -- * Request Lenses
    dmpMultiplexId,
    dmpProgramName,

    -- * Destructuring the Response
    deleteMultiplexProgramResponse,
    DeleteMultiplexProgramResponse,

    -- * Response Lenses
    dmprrsPacketIdentifiersMap,
    dmprrsMultiplexProgramSettings,
    dmprrsChannelId,
    dmprrsProgramName,
    dmprrsPipelineDetails,
    dmprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DeleteMultiplexProgramRequest
--
-- /See:/ 'deleteMultiplexProgram' smart constructor.
data DeleteMultiplexProgram = DeleteMultiplexProgram'
  { _dmpMultiplexId ::
      !Text,
    _dmpProgramName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteMultiplexProgram' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmpMultiplexId' - The ID of the multiplex that the program belongs to.
--
-- * 'dmpProgramName' - The multiplex program name.
deleteMultiplexProgram ::
  -- | 'dmpMultiplexId'
  Text ->
  -- | 'dmpProgramName'
  Text ->
  DeleteMultiplexProgram
deleteMultiplexProgram pMultiplexId_ pProgramName_ =
  DeleteMultiplexProgram'
    { _dmpMultiplexId =
        pMultiplexId_,
      _dmpProgramName = pProgramName_
    }

-- | The ID of the multiplex that the program belongs to.
dmpMultiplexId :: Lens' DeleteMultiplexProgram Text
dmpMultiplexId = lens _dmpMultiplexId (\s a -> s {_dmpMultiplexId = a})

-- | The multiplex program name.
dmpProgramName :: Lens' DeleteMultiplexProgram Text
dmpProgramName = lens _dmpProgramName (\s a -> s {_dmpProgramName = a})

instance AWSRequest DeleteMultiplexProgram where
  type
    Rs DeleteMultiplexProgram =
      DeleteMultiplexProgramResponse
  request = delete mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DeleteMultiplexProgramResponse'
            <$> (x .?> "packetIdentifiersMap")
            <*> (x .?> "multiplexProgramSettings")
            <*> (x .?> "channelId")
            <*> (x .?> "programName")
            <*> (x .?> "pipelineDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteMultiplexProgram

instance NFData DeleteMultiplexProgram

instance ToHeaders DeleteMultiplexProgram where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteMultiplexProgram where
  toPath DeleteMultiplexProgram' {..} =
    mconcat
      [ "/prod/multiplexes/",
        toBS _dmpMultiplexId,
        "/programs/",
        toBS _dmpProgramName
      ]

instance ToQuery DeleteMultiplexProgram where
  toQuery = const mempty

-- | Placeholder documentation for DeleteMultiplexProgramResponse
--
-- /See:/ 'deleteMultiplexProgramResponse' smart constructor.
data DeleteMultiplexProgramResponse = DeleteMultiplexProgramResponse'
  { _dmprrsPacketIdentifiersMap ::
      !( Maybe
           MultiplexProgramPacketIdentifiersMap
       ),
    _dmprrsMultiplexProgramSettings ::
      !( Maybe
           MultiplexProgramSettings
       ),
    _dmprrsChannelId ::
      !( Maybe
           Text
       ),
    _dmprrsProgramName ::
      !( Maybe
           Text
       ),
    _dmprrsPipelineDetails ::
      !( Maybe
           [MultiplexProgramPipelineDetail]
       ),
    _dmprrsResponseStatus ::
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

-- | Creates a value of 'DeleteMultiplexProgramResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmprrsPacketIdentifiersMap' - The packet identifier map for this multiplex program.
--
-- * 'dmprrsMultiplexProgramSettings' - The settings for this multiplex program.
--
-- * 'dmprrsChannelId' - The MediaLive channel associated with the program.
--
-- * 'dmprrsProgramName' - The name of the multiplex program.
--
-- * 'dmprrsPipelineDetails' - Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
--
-- * 'dmprrsResponseStatus' - -- | The response status code.
deleteMultiplexProgramResponse ::
  -- | 'dmprrsResponseStatus'
  Int ->
  DeleteMultiplexProgramResponse
deleteMultiplexProgramResponse pResponseStatus_ =
  DeleteMultiplexProgramResponse'
    { _dmprrsPacketIdentifiersMap =
        Nothing,
      _dmprrsMultiplexProgramSettings = Nothing,
      _dmprrsChannelId = Nothing,
      _dmprrsProgramName = Nothing,
      _dmprrsPipelineDetails = Nothing,
      _dmprrsResponseStatus = pResponseStatus_
    }

-- | The packet identifier map for this multiplex program.
dmprrsPacketIdentifiersMap :: Lens' DeleteMultiplexProgramResponse (Maybe MultiplexProgramPacketIdentifiersMap)
dmprrsPacketIdentifiersMap = lens _dmprrsPacketIdentifiersMap (\s a -> s {_dmprrsPacketIdentifiersMap = a})

-- | The settings for this multiplex program.
dmprrsMultiplexProgramSettings :: Lens' DeleteMultiplexProgramResponse (Maybe MultiplexProgramSettings)
dmprrsMultiplexProgramSettings = lens _dmprrsMultiplexProgramSettings (\s a -> s {_dmprrsMultiplexProgramSettings = a})

-- | The MediaLive channel associated with the program.
dmprrsChannelId :: Lens' DeleteMultiplexProgramResponse (Maybe Text)
dmprrsChannelId = lens _dmprrsChannelId (\s a -> s {_dmprrsChannelId = a})

-- | The name of the multiplex program.
dmprrsProgramName :: Lens' DeleteMultiplexProgramResponse (Maybe Text)
dmprrsProgramName = lens _dmprrsProgramName (\s a -> s {_dmprrsProgramName = a})

-- | Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
dmprrsPipelineDetails :: Lens' DeleteMultiplexProgramResponse [MultiplexProgramPipelineDetail]
dmprrsPipelineDetails = lens _dmprrsPipelineDetails (\s a -> s {_dmprrsPipelineDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
dmprrsResponseStatus :: Lens' DeleteMultiplexProgramResponse Int
dmprrsResponseStatus = lens _dmprrsResponseStatus (\s a -> s {_dmprrsResponseStatus = a})

instance NFData DeleteMultiplexProgramResponse
