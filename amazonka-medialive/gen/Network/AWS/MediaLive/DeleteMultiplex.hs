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
-- Module      : Network.AWS.MediaLive.DeleteMultiplex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a multiplex. The multiplex must be idle.
module Network.AWS.MediaLive.DeleteMultiplex
  ( -- * Creating a Request
    deleteMultiplex,
    DeleteMultiplex,

    -- * Request Lenses
    dmMultiplexId,

    -- * Destructuring the Response
    deleteMultiplexResponse,
    DeleteMultiplexResponse,

    -- * Response Lenses
    delrsAvailabilityZones,
    delrsARN,
    delrsId,
    delrsPipelinesRunningCount,
    delrsProgramCount,
    delrsDestinations,
    delrsState,
    delrsName,
    delrsTags,
    delrsMultiplexSettings,
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DeleteMultiplexRequest
--
-- /See:/ 'deleteMultiplex' smart constructor.
newtype DeleteMultiplex = DeleteMultiplex'
  { _dmMultiplexId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteMultiplex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmMultiplexId' - The ID of the multiplex.
deleteMultiplex ::
  -- | 'dmMultiplexId'
  Text ->
  DeleteMultiplex
deleteMultiplex pMultiplexId_ =
  DeleteMultiplex' {_dmMultiplexId = pMultiplexId_}

-- | The ID of the multiplex.
dmMultiplexId :: Lens' DeleteMultiplex Text
dmMultiplexId = lens _dmMultiplexId (\s a -> s {_dmMultiplexId = a})

instance AWSRequest DeleteMultiplex where
  type Rs DeleteMultiplex = DeleteMultiplexResponse
  request = delete mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DeleteMultiplexResponse'
            <$> (x .?> "availabilityZones" .!@ mempty)
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "pipelinesRunningCount")
            <*> (x .?> "programCount")
            <*> (x .?> "destinations" .!@ mempty)
            <*> (x .?> "state")
            <*> (x .?> "name")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "multiplexSettings")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteMultiplex

instance NFData DeleteMultiplex

instance ToHeaders DeleteMultiplex where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteMultiplex where
  toPath DeleteMultiplex' {..} =
    mconcat ["/prod/multiplexes/", toBS _dmMultiplexId]

instance ToQuery DeleteMultiplex where
  toQuery = const mempty

-- | Placeholder documentation for DeleteMultiplexResponse
--
-- /See:/ 'deleteMultiplexResponse' smart constructor.
data DeleteMultiplexResponse = DeleteMultiplexResponse'
  { _delrsAvailabilityZones ::
      !(Maybe [Text]),
    _delrsARN ::
      !(Maybe Text),
    _delrsId ::
      !(Maybe Text),
    _delrsPipelinesRunningCount ::
      !(Maybe Int),
    _delrsProgramCount ::
      !(Maybe Int),
    _delrsDestinations ::
      !( Maybe
           [MultiplexOutputDestination]
       ),
    _delrsState ::
      !(Maybe MultiplexState),
    _delrsName ::
      !(Maybe Text),
    _delrsTags ::
      !( Maybe
           (Map Text Text)
       ),
    _delrsMultiplexSettings ::
      !( Maybe
           MultiplexSettings
       ),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteMultiplexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsAvailabilityZones' - A list of availability zones for the multiplex.
--
-- * 'delrsARN' - The unique arn of the multiplex.
--
-- * 'delrsId' - The unique id of the multiplex.
--
-- * 'delrsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'delrsProgramCount' - The number of programs in the multiplex.
--
-- * 'delrsDestinations' - A list of the multiplex output destinations.
--
-- * 'delrsState' - The current state of the multiplex.
--
-- * 'delrsName' - The name of the multiplex.
--
-- * 'delrsTags' - A collection of key-value pairs.
--
-- * 'delrsMultiplexSettings' - Configuration for a multiplex event.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteMultiplexResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteMultiplexResponse
deleteMultiplexResponse pResponseStatus_ =
  DeleteMultiplexResponse'
    { _delrsAvailabilityZones =
        Nothing,
      _delrsARN = Nothing,
      _delrsId = Nothing,
      _delrsPipelinesRunningCount = Nothing,
      _delrsProgramCount = Nothing,
      _delrsDestinations = Nothing,
      _delrsState = Nothing,
      _delrsName = Nothing,
      _delrsTags = Nothing,
      _delrsMultiplexSettings = Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | A list of availability zones for the multiplex.
delrsAvailabilityZones :: Lens' DeleteMultiplexResponse [Text]
delrsAvailabilityZones = lens _delrsAvailabilityZones (\s a -> s {_delrsAvailabilityZones = a}) . _Default . _Coerce

-- | The unique arn of the multiplex.
delrsARN :: Lens' DeleteMultiplexResponse (Maybe Text)
delrsARN = lens _delrsARN (\s a -> s {_delrsARN = a})

-- | The unique id of the multiplex.
delrsId :: Lens' DeleteMultiplexResponse (Maybe Text)
delrsId = lens _delrsId (\s a -> s {_delrsId = a})

-- | The number of currently healthy pipelines.
delrsPipelinesRunningCount :: Lens' DeleteMultiplexResponse (Maybe Int)
delrsPipelinesRunningCount = lens _delrsPipelinesRunningCount (\s a -> s {_delrsPipelinesRunningCount = a})

-- | The number of programs in the multiplex.
delrsProgramCount :: Lens' DeleteMultiplexResponse (Maybe Int)
delrsProgramCount = lens _delrsProgramCount (\s a -> s {_delrsProgramCount = a})

-- | A list of the multiplex output destinations.
delrsDestinations :: Lens' DeleteMultiplexResponse [MultiplexOutputDestination]
delrsDestinations = lens _delrsDestinations (\s a -> s {_delrsDestinations = a}) . _Default . _Coerce

-- | The current state of the multiplex.
delrsState :: Lens' DeleteMultiplexResponse (Maybe MultiplexState)
delrsState = lens _delrsState (\s a -> s {_delrsState = a})

-- | The name of the multiplex.
delrsName :: Lens' DeleteMultiplexResponse (Maybe Text)
delrsName = lens _delrsName (\s a -> s {_delrsName = a})

-- | A collection of key-value pairs.
delrsTags :: Lens' DeleteMultiplexResponse (HashMap Text Text)
delrsTags = lens _delrsTags (\s a -> s {_delrsTags = a}) . _Default . _Map

-- | Configuration for a multiplex event.
delrsMultiplexSettings :: Lens' DeleteMultiplexResponse (Maybe MultiplexSettings)
delrsMultiplexSettings = lens _delrsMultiplexSettings (\s a -> s {_delrsMultiplexSettings = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteMultiplexResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteMultiplexResponse
