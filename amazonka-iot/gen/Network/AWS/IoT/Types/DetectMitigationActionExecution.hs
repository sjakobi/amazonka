{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionExecution where

import Network.AWS.IoT.Types.DetectMitigationActionExecutionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes which mitigation actions should be executed.
--
--
--
-- /See:/ 'detectMitigationActionExecution' smart constructor.
data DetectMitigationActionExecution = DetectMitigationActionExecution'
  { _dmaeViolationId ::
      !( Maybe
           Text
       ),
    _dmaeStatus ::
      !( Maybe
           DetectMitigationActionExecutionStatus
       ),
    _dmaeActionName ::
      !( Maybe
           Text
       ),
    _dmaeExecutionStartDate ::
      !( Maybe
           POSIX
       ),
    _dmaeMessage ::
      !( Maybe
           Text
       ),
    _dmaeThingName ::
      !( Maybe
           Text
       ),
    _dmaeTaskId ::
      !( Maybe
           Text
       ),
    _dmaeExecutionEndDate ::
      !( Maybe
           POSIX
       ),
    _dmaeErrorCode ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetectMitigationActionExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmaeViolationId' - The unique identifier of the violation.
--
-- * 'dmaeStatus' - The status of a mitigation action.
--
-- * 'dmaeActionName' - The friendly name that uniquely identifies the mitigation action.
--
-- * 'dmaeExecutionStartDate' - The date a mitigation action was started.
--
-- * 'dmaeMessage' - The message of a mitigation action.
--
-- * 'dmaeThingName' - The name of the thing.
--
-- * 'dmaeTaskId' - The unique identifier of the task.
--
-- * 'dmaeExecutionEndDate' - The date a mitigation action ended.
--
-- * 'dmaeErrorCode' - The error code of a mitigation action.
detectMitigationActionExecution ::
  DetectMitigationActionExecution
detectMitigationActionExecution =
  DetectMitigationActionExecution'
    { _dmaeViolationId =
        Nothing,
      _dmaeStatus = Nothing,
      _dmaeActionName = Nothing,
      _dmaeExecutionStartDate = Nothing,
      _dmaeMessage = Nothing,
      _dmaeThingName = Nothing,
      _dmaeTaskId = Nothing,
      _dmaeExecutionEndDate = Nothing,
      _dmaeErrorCode = Nothing
    }

-- | The unique identifier of the violation.
dmaeViolationId :: Lens' DetectMitigationActionExecution (Maybe Text)
dmaeViolationId = lens _dmaeViolationId (\s a -> s {_dmaeViolationId = a})

-- | The status of a mitigation action.
dmaeStatus :: Lens' DetectMitigationActionExecution (Maybe DetectMitigationActionExecutionStatus)
dmaeStatus = lens _dmaeStatus (\s a -> s {_dmaeStatus = a})

-- | The friendly name that uniquely identifies the mitigation action.
dmaeActionName :: Lens' DetectMitigationActionExecution (Maybe Text)
dmaeActionName = lens _dmaeActionName (\s a -> s {_dmaeActionName = a})

-- | The date a mitigation action was started.
dmaeExecutionStartDate :: Lens' DetectMitigationActionExecution (Maybe UTCTime)
dmaeExecutionStartDate = lens _dmaeExecutionStartDate (\s a -> s {_dmaeExecutionStartDate = a}) . mapping _Time

-- | The message of a mitigation action.
dmaeMessage :: Lens' DetectMitigationActionExecution (Maybe Text)
dmaeMessage = lens _dmaeMessage (\s a -> s {_dmaeMessage = a})

-- | The name of the thing.
dmaeThingName :: Lens' DetectMitigationActionExecution (Maybe Text)
dmaeThingName = lens _dmaeThingName (\s a -> s {_dmaeThingName = a})

-- | The unique identifier of the task.
dmaeTaskId :: Lens' DetectMitigationActionExecution (Maybe Text)
dmaeTaskId = lens _dmaeTaskId (\s a -> s {_dmaeTaskId = a})

-- | The date a mitigation action ended.
dmaeExecutionEndDate :: Lens' DetectMitigationActionExecution (Maybe UTCTime)
dmaeExecutionEndDate = lens _dmaeExecutionEndDate (\s a -> s {_dmaeExecutionEndDate = a}) . mapping _Time

-- | The error code of a mitigation action.
dmaeErrorCode :: Lens' DetectMitigationActionExecution (Maybe Text)
dmaeErrorCode = lens _dmaeErrorCode (\s a -> s {_dmaeErrorCode = a})

instance FromJSON DetectMitigationActionExecution where
  parseJSON =
    withObject
      "DetectMitigationActionExecution"
      ( \x ->
          DetectMitigationActionExecution'
            <$> (x .:? "violationId")
            <*> (x .:? "status")
            <*> (x .:? "actionName")
            <*> (x .:? "executionStartDate")
            <*> (x .:? "message")
            <*> (x .:? "thingName")
            <*> (x .:? "taskId")
            <*> (x .:? "executionEndDate")
            <*> (x .:? "errorCode")
      )

instance Hashable DetectMitigationActionExecution

instance NFData DetectMitigationActionExecution
