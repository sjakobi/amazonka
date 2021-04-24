{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.QueryExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.QueryExecutionStatus where

import Network.AWS.Athena.Types.QueryExecutionState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The completion date, current state, submission time, and state change reason (if applicable) for the query execution.
--
--
--
-- /See:/ 'queryExecutionStatus' smart constructor.
data QueryExecutionStatus = QueryExecutionStatus'
  { _qesSubmissionDateTime ::
      !(Maybe POSIX),
    _qesStateChangeReason ::
      !(Maybe Text),
    _qesCompletionDateTime ::
      !(Maybe POSIX),
    _qesState ::
      !(Maybe QueryExecutionState)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryExecutionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qesSubmissionDateTime' - The date and time that the query was submitted.
--
-- * 'qesStateChangeReason' - Further detail about the status of the query.
--
-- * 'qesCompletionDateTime' - The date and time that the query completed.
--
-- * 'qesState' - The state of query execution. @QUEUED@ indicates that the query has been submitted to the service, and Athena will execute the query as soon as resources are available. @RUNNING@ indicates that the query is in execution phase. @SUCCEEDED@ indicates that the query completed without errors. @FAILED@ indicates that the query experienced an error and did not complete processing. @CANCELLED@ indicates that a user input interrupted query execution.
queryExecutionStatus ::
  QueryExecutionStatus
queryExecutionStatus =
  QueryExecutionStatus'
    { _qesSubmissionDateTime =
        Nothing,
      _qesStateChangeReason = Nothing,
      _qesCompletionDateTime = Nothing,
      _qesState = Nothing
    }

-- | The date and time that the query was submitted.
qesSubmissionDateTime :: Lens' QueryExecutionStatus (Maybe UTCTime)
qesSubmissionDateTime = lens _qesSubmissionDateTime (\s a -> s {_qesSubmissionDateTime = a}) . mapping _Time

-- | Further detail about the status of the query.
qesStateChangeReason :: Lens' QueryExecutionStatus (Maybe Text)
qesStateChangeReason = lens _qesStateChangeReason (\s a -> s {_qesStateChangeReason = a})

-- | The date and time that the query completed.
qesCompletionDateTime :: Lens' QueryExecutionStatus (Maybe UTCTime)
qesCompletionDateTime = lens _qesCompletionDateTime (\s a -> s {_qesCompletionDateTime = a}) . mapping _Time

-- | The state of query execution. @QUEUED@ indicates that the query has been submitted to the service, and Athena will execute the query as soon as resources are available. @RUNNING@ indicates that the query is in execution phase. @SUCCEEDED@ indicates that the query completed without errors. @FAILED@ indicates that the query experienced an error and did not complete processing. @CANCELLED@ indicates that a user input interrupted query execution.
qesState :: Lens' QueryExecutionStatus (Maybe QueryExecutionState)
qesState = lens _qesState (\s a -> s {_qesState = a})

instance FromJSON QueryExecutionStatus where
  parseJSON =
    withObject
      "QueryExecutionStatus"
      ( \x ->
          QueryExecutionStatus'
            <$> (x .:? "SubmissionDateTime")
            <*> (x .:? "StateChangeReason")
            <*> (x .:? "CompletionDateTime")
            <*> (x .:? "State")
      )

instance Hashable QueryExecutionStatus

instance NFData QueryExecutionStatus
