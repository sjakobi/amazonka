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
-- Module      : Network.AWS.MediaLive.DescribeMultiplex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a multiplex.
module Network.AWS.MediaLive.DescribeMultiplex
  ( -- * Creating a Request
    describeMultiplex,
    DescribeMultiplex,

    -- * Request Lenses
    desMultiplexId,

    -- * Destructuring the Response
    describeMultiplexResponse,
    DescribeMultiplexResponse,

    -- * Response Lenses
    dmrrsAvailabilityZones,
    dmrrsARN,
    dmrrsId,
    dmrrsPipelinesRunningCount,
    dmrrsProgramCount,
    dmrrsDestinations,
    dmrrsState,
    dmrrsName,
    dmrrsTags,
    dmrrsMultiplexSettings,
    dmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeMultiplexRequest
--
-- /See:/ 'describeMultiplex' smart constructor.
newtype DescribeMultiplex = DescribeMultiplex'
  { _desMultiplexId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeMultiplex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desMultiplexId' - The ID of the multiplex.
describeMultiplex ::
  -- | 'desMultiplexId'
  Text ->
  DescribeMultiplex
describeMultiplex pMultiplexId_ =
  DescribeMultiplex' {_desMultiplexId = pMultiplexId_}

-- | The ID of the multiplex.
desMultiplexId :: Lens' DescribeMultiplex Text
desMultiplexId = lens _desMultiplexId (\s a -> s {_desMultiplexId = a})

instance AWSRequest DescribeMultiplex where
  type Rs DescribeMultiplex = DescribeMultiplexResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeMultiplexResponse'
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

instance Hashable DescribeMultiplex

instance NFData DescribeMultiplex

instance ToHeaders DescribeMultiplex where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeMultiplex where
  toPath DescribeMultiplex' {..} =
    mconcat
      ["/prod/multiplexes/", toBS _desMultiplexId]

instance ToQuery DescribeMultiplex where
  toQuery = const mempty

-- | Placeholder documentation for DescribeMultiplexResponse
--
-- /See:/ 'describeMultiplexResponse' smart constructor.
data DescribeMultiplexResponse = DescribeMultiplexResponse'
  { _dmrrsAvailabilityZones ::
      !(Maybe [Text]),
    _dmrrsARN ::
      !(Maybe Text),
    _dmrrsId ::
      !(Maybe Text),
    _dmrrsPipelinesRunningCount ::
      !(Maybe Int),
    _dmrrsProgramCount ::
      !(Maybe Int),
    _dmrrsDestinations ::
      !( Maybe
           [MultiplexOutputDestination]
       ),
    _dmrrsState ::
      !( Maybe
           MultiplexState
       ),
    _dmrrsName ::
      !(Maybe Text),
    _dmrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dmrrsMultiplexSettings ::
      !( Maybe
           MultiplexSettings
       ),
    _dmrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMultiplexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrrsAvailabilityZones' - A list of availability zones for the multiplex.
--
-- * 'dmrrsARN' - The unique arn of the multiplex.
--
-- * 'dmrrsId' - The unique id of the multiplex.
--
-- * 'dmrrsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'dmrrsProgramCount' - The number of programs in the multiplex.
--
-- * 'dmrrsDestinations' - A list of the multiplex output destinations.
--
-- * 'dmrrsState' - The current state of the multiplex.
--
-- * 'dmrrsName' - The name of the multiplex.
--
-- * 'dmrrsTags' - A collection of key-value pairs.
--
-- * 'dmrrsMultiplexSettings' - Configuration for a multiplex event.
--
-- * 'dmrrsResponseStatus' - -- | The response status code.
describeMultiplexResponse ::
  -- | 'dmrrsResponseStatus'
  Int ->
  DescribeMultiplexResponse
describeMultiplexResponse pResponseStatus_ =
  DescribeMultiplexResponse'
    { _dmrrsAvailabilityZones =
        Nothing,
      _dmrrsARN = Nothing,
      _dmrrsId = Nothing,
      _dmrrsPipelinesRunningCount = Nothing,
      _dmrrsProgramCount = Nothing,
      _dmrrsDestinations = Nothing,
      _dmrrsState = Nothing,
      _dmrrsName = Nothing,
      _dmrrsTags = Nothing,
      _dmrrsMultiplexSettings = Nothing,
      _dmrrsResponseStatus = pResponseStatus_
    }

-- | A list of availability zones for the multiplex.
dmrrsAvailabilityZones :: Lens' DescribeMultiplexResponse [Text]
dmrrsAvailabilityZones = lens _dmrrsAvailabilityZones (\s a -> s {_dmrrsAvailabilityZones = a}) . _Default . _Coerce

-- | The unique arn of the multiplex.
dmrrsARN :: Lens' DescribeMultiplexResponse (Maybe Text)
dmrrsARN = lens _dmrrsARN (\s a -> s {_dmrrsARN = a})

-- | The unique id of the multiplex.
dmrrsId :: Lens' DescribeMultiplexResponse (Maybe Text)
dmrrsId = lens _dmrrsId (\s a -> s {_dmrrsId = a})

-- | The number of currently healthy pipelines.
dmrrsPipelinesRunningCount :: Lens' DescribeMultiplexResponse (Maybe Int)
dmrrsPipelinesRunningCount = lens _dmrrsPipelinesRunningCount (\s a -> s {_dmrrsPipelinesRunningCount = a})

-- | The number of programs in the multiplex.
dmrrsProgramCount :: Lens' DescribeMultiplexResponse (Maybe Int)
dmrrsProgramCount = lens _dmrrsProgramCount (\s a -> s {_dmrrsProgramCount = a})

-- | A list of the multiplex output destinations.
dmrrsDestinations :: Lens' DescribeMultiplexResponse [MultiplexOutputDestination]
dmrrsDestinations = lens _dmrrsDestinations (\s a -> s {_dmrrsDestinations = a}) . _Default . _Coerce

-- | The current state of the multiplex.
dmrrsState :: Lens' DescribeMultiplexResponse (Maybe MultiplexState)
dmrrsState = lens _dmrrsState (\s a -> s {_dmrrsState = a})

-- | The name of the multiplex.
dmrrsName :: Lens' DescribeMultiplexResponse (Maybe Text)
dmrrsName = lens _dmrrsName (\s a -> s {_dmrrsName = a})

-- | A collection of key-value pairs.
dmrrsTags :: Lens' DescribeMultiplexResponse (HashMap Text Text)
dmrrsTags = lens _dmrrsTags (\s a -> s {_dmrrsTags = a}) . _Default . _Map

-- | Configuration for a multiplex event.
dmrrsMultiplexSettings :: Lens' DescribeMultiplexResponse (Maybe MultiplexSettings)
dmrrsMultiplexSettings = lens _dmrrsMultiplexSettings (\s a -> s {_dmrrsMultiplexSettings = a})

-- | -- | The response status code.
dmrrsResponseStatus :: Lens' DescribeMultiplexResponse Int
dmrrsResponseStatus = lens _dmrrsResponseStatus (\s a -> s {_dmrrsResponseStatus = a})

instance NFData DescribeMultiplexResponse
