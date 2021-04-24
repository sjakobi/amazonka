{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.TelemetryRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.TelemetryRecord where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.BackendConnectionErrors

-- |
--
--
--
-- /See:/ 'telemetryRecord' smart constructor.
data TelemetryRecord = TelemetryRecord'
  { _trSegmentsSpilloverCount ::
      !(Maybe Int),
    _trBackendConnectionErrors ::
      !(Maybe BackendConnectionErrors),
    _trSegmentsRejectedCount ::
      !(Maybe Int),
    _trSegmentsSentCount :: !(Maybe Int),
    _trSegmentsReceivedCount ::
      !(Maybe Int),
    _trTimestamp :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TelemetryRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trSegmentsSpilloverCount' -
--
-- * 'trBackendConnectionErrors' -
--
-- * 'trSegmentsRejectedCount' -
--
-- * 'trSegmentsSentCount' -
--
-- * 'trSegmentsReceivedCount' -
--
-- * 'trTimestamp' -
telemetryRecord ::
  -- | 'trTimestamp'
  UTCTime ->
  TelemetryRecord
telemetryRecord pTimestamp_ =
  TelemetryRecord'
    { _trSegmentsSpilloverCount =
        Nothing,
      _trBackendConnectionErrors = Nothing,
      _trSegmentsRejectedCount = Nothing,
      _trSegmentsSentCount = Nothing,
      _trSegmentsReceivedCount = Nothing,
      _trTimestamp = _Time # pTimestamp_
    }

-- |
trSegmentsSpilloverCount :: Lens' TelemetryRecord (Maybe Int)
trSegmentsSpilloverCount = lens _trSegmentsSpilloverCount (\s a -> s {_trSegmentsSpilloverCount = a})

-- |
trBackendConnectionErrors :: Lens' TelemetryRecord (Maybe BackendConnectionErrors)
trBackendConnectionErrors = lens _trBackendConnectionErrors (\s a -> s {_trBackendConnectionErrors = a})

-- |
trSegmentsRejectedCount :: Lens' TelemetryRecord (Maybe Int)
trSegmentsRejectedCount = lens _trSegmentsRejectedCount (\s a -> s {_trSegmentsRejectedCount = a})

-- |
trSegmentsSentCount :: Lens' TelemetryRecord (Maybe Int)
trSegmentsSentCount = lens _trSegmentsSentCount (\s a -> s {_trSegmentsSentCount = a})

-- |
trSegmentsReceivedCount :: Lens' TelemetryRecord (Maybe Int)
trSegmentsReceivedCount = lens _trSegmentsReceivedCount (\s a -> s {_trSegmentsReceivedCount = a})

-- |
trTimestamp :: Lens' TelemetryRecord UTCTime
trTimestamp = lens _trTimestamp (\s a -> s {_trTimestamp = a}) . _Time

instance Hashable TelemetryRecord

instance NFData TelemetryRecord

instance ToJSON TelemetryRecord where
  toJSON TelemetryRecord' {..} =
    object
      ( catMaybes
          [ ("SegmentsSpilloverCount" .=)
              <$> _trSegmentsSpilloverCount,
            ("BackendConnectionErrors" .=)
              <$> _trBackendConnectionErrors,
            ("SegmentsRejectedCount" .=)
              <$> _trSegmentsRejectedCount,
            ("SegmentsSentCount" .=) <$> _trSegmentsSentCount,
            ("SegmentsReceivedCount" .=)
              <$> _trSegmentsReceivedCount,
            Just ("Timestamp" .= _trTimestamp)
          ]
      )
