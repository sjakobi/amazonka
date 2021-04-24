{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.Edge
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.Edge where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.Alias
import Network.AWS.XRay.Types.EdgeStatistics
import Network.AWS.XRay.Types.HistogramEntry

-- | Information about a connection between two services.
--
--
--
-- /See:/ 'edge' smart constructor.
data Edge = Edge'
  { _eSummaryStatistics ::
      !(Maybe EdgeStatistics),
    _eResponseTimeHistogram :: !(Maybe [HistogramEntry]),
    _eReferenceId :: !(Maybe Int),
    _eStartTime :: !(Maybe POSIX),
    _eEndTime :: !(Maybe POSIX),
    _eAliases :: !(Maybe [Alias])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Edge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eSummaryStatistics' - Response statistics for segments on the edge.
--
-- * 'eResponseTimeHistogram' - A histogram that maps the spread of client response times on an edge.
--
-- * 'eReferenceId' - Identifier of the edge. Unique within a service map.
--
-- * 'eStartTime' - The start time of the first segment on the edge.
--
-- * 'eEndTime' - The end time of the last segment on the edge.
--
-- * 'eAliases' - Aliases for the edge.
edge ::
  Edge
edge =
  Edge'
    { _eSummaryStatistics = Nothing,
      _eResponseTimeHistogram = Nothing,
      _eReferenceId = Nothing,
      _eStartTime = Nothing,
      _eEndTime = Nothing,
      _eAliases = Nothing
    }

-- | Response statistics for segments on the edge.
eSummaryStatistics :: Lens' Edge (Maybe EdgeStatistics)
eSummaryStatistics = lens _eSummaryStatistics (\s a -> s {_eSummaryStatistics = a})

-- | A histogram that maps the spread of client response times on an edge.
eResponseTimeHistogram :: Lens' Edge [HistogramEntry]
eResponseTimeHistogram = lens _eResponseTimeHistogram (\s a -> s {_eResponseTimeHistogram = a}) . _Default . _Coerce

-- | Identifier of the edge. Unique within a service map.
eReferenceId :: Lens' Edge (Maybe Int)
eReferenceId = lens _eReferenceId (\s a -> s {_eReferenceId = a})

-- | The start time of the first segment on the edge.
eStartTime :: Lens' Edge (Maybe UTCTime)
eStartTime = lens _eStartTime (\s a -> s {_eStartTime = a}) . mapping _Time

-- | The end time of the last segment on the edge.
eEndTime :: Lens' Edge (Maybe UTCTime)
eEndTime = lens _eEndTime (\s a -> s {_eEndTime = a}) . mapping _Time

-- | Aliases for the edge.
eAliases :: Lens' Edge [Alias]
eAliases = lens _eAliases (\s a -> s {_eAliases = a}) . _Default . _Coerce

instance FromJSON Edge where
  parseJSON =
    withObject
      "Edge"
      ( \x ->
          Edge'
            <$> (x .:? "SummaryStatistics")
            <*> (x .:? "ResponseTimeHistogram" .!= mempty)
            <*> (x .:? "ReferenceId")
            <*> (x .:? "StartTime")
            <*> (x .:? "EndTime")
            <*> (x .:? "Aliases" .!= mempty)
      )

instance Hashable Edge

instance NFData Edge
