{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.UnprocessedTraceSegment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.UnprocessedTraceSegment where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a segment that failed processing.
--
--
--
-- /See:/ 'unprocessedTraceSegment' smart constructor.
data UnprocessedTraceSegment = UnprocessedTraceSegment'
  { _utsMessage ::
      !(Maybe Text),
    _utsId :: !(Maybe Text),
    _utsErrorCode ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UnprocessedTraceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utsMessage' - The error message.
--
-- * 'utsId' - The segment's ID.
--
-- * 'utsErrorCode' - The error that caused processing to fail.
unprocessedTraceSegment ::
  UnprocessedTraceSegment
unprocessedTraceSegment =
  UnprocessedTraceSegment'
    { _utsMessage = Nothing,
      _utsId = Nothing,
      _utsErrorCode = Nothing
    }

-- | The error message.
utsMessage :: Lens' UnprocessedTraceSegment (Maybe Text)
utsMessage = lens _utsMessage (\s a -> s {_utsMessage = a})

-- | The segment's ID.
utsId :: Lens' UnprocessedTraceSegment (Maybe Text)
utsId = lens _utsId (\s a -> s {_utsId = a})

-- | The error that caused processing to fail.
utsErrorCode :: Lens' UnprocessedTraceSegment (Maybe Text)
utsErrorCode = lens _utsErrorCode (\s a -> s {_utsErrorCode = a})

instance FromJSON UnprocessedTraceSegment where
  parseJSON =
    withObject
      "UnprocessedTraceSegment"
      ( \x ->
          UnprocessedTraceSegment'
            <$> (x .:? "Message")
            <*> (x .:? "Id")
            <*> (x .:? "ErrorCode")
      )

instance Hashable UnprocessedTraceSegment

instance NFData UnprocessedTraceSegment
