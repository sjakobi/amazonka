{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.FailureDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.FailureDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details of the step failure. The service attempts to detect the root cause for many common failures.
--
--
--
-- /See:/ 'failureDetails' smart constructor.
data FailureDetails = FailureDetails'
  { _fdMessage ::
      !(Maybe Text),
    _fdReason :: !(Maybe Text),
    _fdLogFile :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FailureDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdMessage' - The descriptive message including the error the Amazon EMR service has identified as the cause of step failure. This is text from an error log that describes the root cause of the failure.
--
-- * 'fdReason' - The reason for the step failure. In the case where the service cannot successfully determine the root cause of the failure, it returns "Unknown Error" as a reason.
--
-- * 'fdLogFile' - The path to the log file where the step failure root cause was originally recorded.
failureDetails ::
  FailureDetails
failureDetails =
  FailureDetails'
    { _fdMessage = Nothing,
      _fdReason = Nothing,
      _fdLogFile = Nothing
    }

-- | The descriptive message including the error the Amazon EMR service has identified as the cause of step failure. This is text from an error log that describes the root cause of the failure.
fdMessage :: Lens' FailureDetails (Maybe Text)
fdMessage = lens _fdMessage (\s a -> s {_fdMessage = a})

-- | The reason for the step failure. In the case where the service cannot successfully determine the root cause of the failure, it returns "Unknown Error" as a reason.
fdReason :: Lens' FailureDetails (Maybe Text)
fdReason = lens _fdReason (\s a -> s {_fdReason = a})

-- | The path to the log file where the step failure root cause was originally recorded.
fdLogFile :: Lens' FailureDetails (Maybe Text)
fdLogFile = lens _fdLogFile (\s a -> s {_fdLogFile = a})

instance FromJSON FailureDetails where
  parseJSON =
    withObject
      "FailureDetails"
      ( \x ->
          FailureDetails'
            <$> (x .:? "Message")
            <*> (x .:? "Reason")
            <*> (x .:? "LogFile")
      )

instance Hashable FailureDetails

instance NFData FailureDetails
