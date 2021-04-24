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
-- Module      : Network.AWS.MediaLive.StopMultiplex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running multiplex. If the multiplex isn't running, this action has no effect.
module Network.AWS.MediaLive.StopMultiplex
  ( -- * Creating a Request
    stopMultiplex,
    StopMultiplex,

    -- * Request Lenses
    sMultiplexId,

    -- * Destructuring the Response
    stopMultiplexResponse,
    StopMultiplexResponse,

    -- * Response Lenses
    smrrsAvailabilityZones,
    smrrsARN,
    smrrsId,
    smrrsPipelinesRunningCount,
    smrrsProgramCount,
    smrrsDestinations,
    smrrsState,
    smrrsName,
    smrrsTags,
    smrrsMultiplexSettings,
    smrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for StopMultiplexRequest
--
-- /See:/ 'stopMultiplex' smart constructor.
newtype StopMultiplex = StopMultiplex'
  { _sMultiplexId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopMultiplex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sMultiplexId' - The ID of the multiplex.
stopMultiplex ::
  -- | 'sMultiplexId'
  Text ->
  StopMultiplex
stopMultiplex pMultiplexId_ =
  StopMultiplex' {_sMultiplexId = pMultiplexId_}

-- | The ID of the multiplex.
sMultiplexId :: Lens' StopMultiplex Text
sMultiplexId = lens _sMultiplexId (\s a -> s {_sMultiplexId = a})

instance AWSRequest StopMultiplex where
  type Rs StopMultiplex = StopMultiplexResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          StopMultiplexResponse'
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

instance Hashable StopMultiplex

instance NFData StopMultiplex

instance ToHeaders StopMultiplex where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopMultiplex where
  toJSON = const (Object mempty)

instance ToPath StopMultiplex where
  toPath StopMultiplex' {..} =
    mconcat
      ["/prod/multiplexes/", toBS _sMultiplexId, "/stop"]

instance ToQuery StopMultiplex where
  toQuery = const mempty

-- | Placeholder documentation for StopMultiplexResponse
--
-- /See:/ 'stopMultiplexResponse' smart constructor.
data StopMultiplexResponse = StopMultiplexResponse'
  { _smrrsAvailabilityZones ::
      !(Maybe [Text]),
    _smrrsARN :: !(Maybe Text),
    _smrrsId :: !(Maybe Text),
    _smrrsPipelinesRunningCount ::
      !(Maybe Int),
    _smrrsProgramCount ::
      !(Maybe Int),
    _smrrsDestinations ::
      !( Maybe
           [MultiplexOutputDestination]
       ),
    _smrrsState ::
      !(Maybe MultiplexState),
    _smrrsName :: !(Maybe Text),
    _smrrsTags ::
      !(Maybe (Map Text Text)),
    _smrrsMultiplexSettings ::
      !(Maybe MultiplexSettings),
    _smrrsResponseStatus ::
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

-- | Creates a value of 'StopMultiplexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smrrsAvailabilityZones' - A list of availability zones for the multiplex.
--
-- * 'smrrsARN' - The unique arn of the multiplex.
--
-- * 'smrrsId' - The unique id of the multiplex.
--
-- * 'smrrsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'smrrsProgramCount' - The number of programs in the multiplex.
--
-- * 'smrrsDestinations' - A list of the multiplex output destinations.
--
-- * 'smrrsState' - The current state of the multiplex.
--
-- * 'smrrsName' - The name of the multiplex.
--
-- * 'smrrsTags' - A collection of key-value pairs.
--
-- * 'smrrsMultiplexSettings' - Configuration for a multiplex event.
--
-- * 'smrrsResponseStatus' - -- | The response status code.
stopMultiplexResponse ::
  -- | 'smrrsResponseStatus'
  Int ->
  StopMultiplexResponse
stopMultiplexResponse pResponseStatus_ =
  StopMultiplexResponse'
    { _smrrsAvailabilityZones =
        Nothing,
      _smrrsARN = Nothing,
      _smrrsId = Nothing,
      _smrrsPipelinesRunningCount = Nothing,
      _smrrsProgramCount = Nothing,
      _smrrsDestinations = Nothing,
      _smrrsState = Nothing,
      _smrrsName = Nothing,
      _smrrsTags = Nothing,
      _smrrsMultiplexSettings = Nothing,
      _smrrsResponseStatus = pResponseStatus_
    }

-- | A list of availability zones for the multiplex.
smrrsAvailabilityZones :: Lens' StopMultiplexResponse [Text]
smrrsAvailabilityZones = lens _smrrsAvailabilityZones (\s a -> s {_smrrsAvailabilityZones = a}) . _Default . _Coerce

-- | The unique arn of the multiplex.
smrrsARN :: Lens' StopMultiplexResponse (Maybe Text)
smrrsARN = lens _smrrsARN (\s a -> s {_smrrsARN = a})

-- | The unique id of the multiplex.
smrrsId :: Lens' StopMultiplexResponse (Maybe Text)
smrrsId = lens _smrrsId (\s a -> s {_smrrsId = a})

-- | The number of currently healthy pipelines.
smrrsPipelinesRunningCount :: Lens' StopMultiplexResponse (Maybe Int)
smrrsPipelinesRunningCount = lens _smrrsPipelinesRunningCount (\s a -> s {_smrrsPipelinesRunningCount = a})

-- | The number of programs in the multiplex.
smrrsProgramCount :: Lens' StopMultiplexResponse (Maybe Int)
smrrsProgramCount = lens _smrrsProgramCount (\s a -> s {_smrrsProgramCount = a})

-- | A list of the multiplex output destinations.
smrrsDestinations :: Lens' StopMultiplexResponse [MultiplexOutputDestination]
smrrsDestinations = lens _smrrsDestinations (\s a -> s {_smrrsDestinations = a}) . _Default . _Coerce

-- | The current state of the multiplex.
smrrsState :: Lens' StopMultiplexResponse (Maybe MultiplexState)
smrrsState = lens _smrrsState (\s a -> s {_smrrsState = a})

-- | The name of the multiplex.
smrrsName :: Lens' StopMultiplexResponse (Maybe Text)
smrrsName = lens _smrrsName (\s a -> s {_smrrsName = a})

-- | A collection of key-value pairs.
smrrsTags :: Lens' StopMultiplexResponse (HashMap Text Text)
smrrsTags = lens _smrrsTags (\s a -> s {_smrrsTags = a}) . _Default . _Map

-- | Configuration for a multiplex event.
smrrsMultiplexSettings :: Lens' StopMultiplexResponse (Maybe MultiplexSettings)
smrrsMultiplexSettings = lens _smrrsMultiplexSettings (\s a -> s {_smrrsMultiplexSettings = a})

-- | -- | The response status code.
smrrsResponseStatus :: Lens' StopMultiplexResponse Int
smrrsResponseStatus = lens _smrrsResponseStatus (\s a -> s {_smrrsResponseStatus = a})

instance NFData StopMultiplexResponse
