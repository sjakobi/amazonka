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
-- Module      : Network.AWS.MediaLive.StartMultiplex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
module Network.AWS.MediaLive.StartMultiplex
  ( -- * Creating a Request
    startMultiplex,
    StartMultiplex,

    -- * Request Lenses
    smMultiplexId,

    -- * Destructuring the Response
    startMultiplexResponse,
    StartMultiplexResponse,

    -- * Response Lenses
    starsAvailabilityZones,
    starsARN,
    starsId,
    starsPipelinesRunningCount,
    starsProgramCount,
    starsDestinations,
    starsState,
    starsName,
    starsTags,
    starsMultiplexSettings,
    starsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for StartMultiplexRequest
--
-- /See:/ 'startMultiplex' smart constructor.
newtype StartMultiplex = StartMultiplex'
  { _smMultiplexId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartMultiplex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smMultiplexId' - The ID of the multiplex.
startMultiplex ::
  -- | 'smMultiplexId'
  Text ->
  StartMultiplex
startMultiplex pMultiplexId_ =
  StartMultiplex' {_smMultiplexId = pMultiplexId_}

-- | The ID of the multiplex.
smMultiplexId :: Lens' StartMultiplex Text
smMultiplexId = lens _smMultiplexId (\s a -> s {_smMultiplexId = a})

instance AWSRequest StartMultiplex where
  type Rs StartMultiplex = StartMultiplexResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          StartMultiplexResponse'
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

instance Hashable StartMultiplex

instance NFData StartMultiplex

instance ToHeaders StartMultiplex where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartMultiplex where
  toJSON = const (Object mempty)

instance ToPath StartMultiplex where
  toPath StartMultiplex' {..} =
    mconcat
      ["/prod/multiplexes/", toBS _smMultiplexId, "/start"]

instance ToQuery StartMultiplex where
  toQuery = const mempty

-- | Placeholder documentation for StartMultiplexResponse
--
-- /See:/ 'startMultiplexResponse' smart constructor.
data StartMultiplexResponse = StartMultiplexResponse'
  { _starsAvailabilityZones ::
      !(Maybe [Text]),
    _starsARN ::
      !(Maybe Text),
    _starsId :: !(Maybe Text),
    _starsPipelinesRunningCount ::
      !(Maybe Int),
    _starsProgramCount ::
      !(Maybe Int),
    _starsDestinations ::
      !( Maybe
           [MultiplexOutputDestination]
       ),
    _starsState ::
      !(Maybe MultiplexState),
    _starsName ::
      !(Maybe Text),
    _starsTags ::
      !(Maybe (Map Text Text)),
    _starsMultiplexSettings ::
      !( Maybe
           MultiplexSettings
       ),
    _starsResponseStatus ::
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

-- | Creates a value of 'StartMultiplexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'starsAvailabilityZones' - A list of availability zones for the multiplex.
--
-- * 'starsARN' - The unique arn of the multiplex.
--
-- * 'starsId' - The unique id of the multiplex.
--
-- * 'starsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'starsProgramCount' - The number of programs in the multiplex.
--
-- * 'starsDestinations' - A list of the multiplex output destinations.
--
-- * 'starsState' - The current state of the multiplex.
--
-- * 'starsName' - The name of the multiplex.
--
-- * 'starsTags' - A collection of key-value pairs.
--
-- * 'starsMultiplexSettings' - Configuration for a multiplex event.
--
-- * 'starsResponseStatus' - -- | The response status code.
startMultiplexResponse ::
  -- | 'starsResponseStatus'
  Int ->
  StartMultiplexResponse
startMultiplexResponse pResponseStatus_ =
  StartMultiplexResponse'
    { _starsAvailabilityZones =
        Nothing,
      _starsARN = Nothing,
      _starsId = Nothing,
      _starsPipelinesRunningCount = Nothing,
      _starsProgramCount = Nothing,
      _starsDestinations = Nothing,
      _starsState = Nothing,
      _starsName = Nothing,
      _starsTags = Nothing,
      _starsMultiplexSettings = Nothing,
      _starsResponseStatus = pResponseStatus_
    }

-- | A list of availability zones for the multiplex.
starsAvailabilityZones :: Lens' StartMultiplexResponse [Text]
starsAvailabilityZones = lens _starsAvailabilityZones (\s a -> s {_starsAvailabilityZones = a}) . _Default . _Coerce

-- | The unique arn of the multiplex.
starsARN :: Lens' StartMultiplexResponse (Maybe Text)
starsARN = lens _starsARN (\s a -> s {_starsARN = a})

-- | The unique id of the multiplex.
starsId :: Lens' StartMultiplexResponse (Maybe Text)
starsId = lens _starsId (\s a -> s {_starsId = a})

-- | The number of currently healthy pipelines.
starsPipelinesRunningCount :: Lens' StartMultiplexResponse (Maybe Int)
starsPipelinesRunningCount = lens _starsPipelinesRunningCount (\s a -> s {_starsPipelinesRunningCount = a})

-- | The number of programs in the multiplex.
starsProgramCount :: Lens' StartMultiplexResponse (Maybe Int)
starsProgramCount = lens _starsProgramCount (\s a -> s {_starsProgramCount = a})

-- | A list of the multiplex output destinations.
starsDestinations :: Lens' StartMultiplexResponse [MultiplexOutputDestination]
starsDestinations = lens _starsDestinations (\s a -> s {_starsDestinations = a}) . _Default . _Coerce

-- | The current state of the multiplex.
starsState :: Lens' StartMultiplexResponse (Maybe MultiplexState)
starsState = lens _starsState (\s a -> s {_starsState = a})

-- | The name of the multiplex.
starsName :: Lens' StartMultiplexResponse (Maybe Text)
starsName = lens _starsName (\s a -> s {_starsName = a})

-- | A collection of key-value pairs.
starsTags :: Lens' StartMultiplexResponse (HashMap Text Text)
starsTags = lens _starsTags (\s a -> s {_starsTags = a}) . _Default . _Map

-- | Configuration for a multiplex event.
starsMultiplexSettings :: Lens' StartMultiplexResponse (Maybe MultiplexSettings)
starsMultiplexSettings = lens _starsMultiplexSettings (\s a -> s {_starsMultiplexSettings = a})

-- | -- | The response status code.
starsResponseStatus :: Lens' StartMultiplexResponse Int
starsResponseStatus = lens _starsResponseStatus (\s a -> s {_starsResponseStatus = a})

instance NFData StartMultiplexResponse
