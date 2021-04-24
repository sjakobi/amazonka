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
-- Module      : Network.AWS.SSM.StartChangeRequestExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a change request for Change Manager. The runbooks (Automation documents) specified in the change request run only after all required approvals for the change request have been received.
module Network.AWS.SSM.StartChangeRequestExecution
  ( -- * Creating a Request
    startChangeRequestExecution,
    StartChangeRequestExecution,

    -- * Request Lenses
    screChangeRequestName,
    screScheduledTime,
    screTags,
    screDocumentVersion,
    screParameters,
    screClientToken,
    screDocumentName,
    screRunbooks,

    -- * Destructuring the Response
    startChangeRequestExecutionResponse,
    StartChangeRequestExecutionResponse,

    -- * Response Lenses
    screrrsAutomationExecutionId,
    screrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'startChangeRequestExecution' smart constructor.
data StartChangeRequestExecution = StartChangeRequestExecution'
  { _screChangeRequestName ::
      !(Maybe Text),
    _screScheduledTime ::
      !(Maybe POSIX),
    _screTags ::
      !(Maybe [Tag]),
    _screDocumentVersion ::
      !(Maybe Text),
    _screParameters ::
      !( Maybe
           ( Map
               Text
               [Text]
           )
       ),
    _screClientToken ::
      !(Maybe Text),
    _screDocumentName ::
      !Text,
    _screRunbooks ::
      !( List1
           Runbook
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

-- | Creates a value of 'StartChangeRequestExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'screChangeRequestName' - The name of the change request associated with the runbook workflow to be run.
--
-- * 'screScheduledTime' - The date and time specified in the change request to run the Automation runbooks.
--
-- * 'screTags' - Optional metadata that you assign to a resource. You can specify a maximum of five tags for a change request. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a change request to identify an environment or target AWS Region. In this case, you could specify the following key-value pairs:     * @Key=Environment,Value=Production@      * @Key=Region,Value=us-east-2@
--
-- * 'screDocumentVersion' - The version of the change template document to run during the runbook workflow.
--
-- * 'screParameters' - A key-value map of parameters that match the declared parameters in the change template document.
--
-- * 'screClientToken' - The user-provided idempotency token. The token must be unique, is case insensitive, enforces the UUID format, and can't be reused.
--
-- * 'screDocumentName' - The name of the change template document to run during the runbook workflow.
--
-- * 'screRunbooks' - Information about the Automation runbooks (Automation documents) that are run during the runbook workflow.
startChangeRequestExecution ::
  -- | 'screDocumentName'
  Text ->
  -- | 'screRunbooks'
  NonEmpty Runbook ->
  StartChangeRequestExecution
startChangeRequestExecution pDocumentName_ pRunbooks_ =
  StartChangeRequestExecution'
    { _screChangeRequestName =
        Nothing,
      _screScheduledTime = Nothing,
      _screTags = Nothing,
      _screDocumentVersion = Nothing,
      _screParameters = Nothing,
      _screClientToken = Nothing,
      _screDocumentName = pDocumentName_,
      _screRunbooks = _List1 # pRunbooks_
    }

-- | The name of the change request associated with the runbook workflow to be run.
screChangeRequestName :: Lens' StartChangeRequestExecution (Maybe Text)
screChangeRequestName = lens _screChangeRequestName (\s a -> s {_screChangeRequestName = a})

-- | The date and time specified in the change request to run the Automation runbooks.
screScheduledTime :: Lens' StartChangeRequestExecution (Maybe UTCTime)
screScheduledTime = lens _screScheduledTime (\s a -> s {_screScheduledTime = a}) . mapping _Time

-- | Optional metadata that you assign to a resource. You can specify a maximum of five tags for a change request. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a change request to identify an environment or target AWS Region. In this case, you could specify the following key-value pairs:     * @Key=Environment,Value=Production@      * @Key=Region,Value=us-east-2@
screTags :: Lens' StartChangeRequestExecution [Tag]
screTags = lens _screTags (\s a -> s {_screTags = a}) . _Default . _Coerce

-- | The version of the change template document to run during the runbook workflow.
screDocumentVersion :: Lens' StartChangeRequestExecution (Maybe Text)
screDocumentVersion = lens _screDocumentVersion (\s a -> s {_screDocumentVersion = a})

-- | A key-value map of parameters that match the declared parameters in the change template document.
screParameters :: Lens' StartChangeRequestExecution (HashMap Text [Text])
screParameters = lens _screParameters (\s a -> s {_screParameters = a}) . _Default . _Map

-- | The user-provided idempotency token. The token must be unique, is case insensitive, enforces the UUID format, and can't be reused.
screClientToken :: Lens' StartChangeRequestExecution (Maybe Text)
screClientToken = lens _screClientToken (\s a -> s {_screClientToken = a})

-- | The name of the change template document to run during the runbook workflow.
screDocumentName :: Lens' StartChangeRequestExecution Text
screDocumentName = lens _screDocumentName (\s a -> s {_screDocumentName = a})

-- | Information about the Automation runbooks (Automation documents) that are run during the runbook workflow.
screRunbooks :: Lens' StartChangeRequestExecution (NonEmpty Runbook)
screRunbooks = lens _screRunbooks (\s a -> s {_screRunbooks = a}) . _List1

instance AWSRequest StartChangeRequestExecution where
  type
    Rs StartChangeRequestExecution =
      StartChangeRequestExecutionResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          StartChangeRequestExecutionResponse'
            <$> (x .?> "AutomationExecutionId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartChangeRequestExecution

instance NFData StartChangeRequestExecution

instance ToHeaders StartChangeRequestExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.StartChangeRequestExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartChangeRequestExecution where
  toJSON StartChangeRequestExecution' {..} =
    object
      ( catMaybes
          [ ("ChangeRequestName" .=) <$> _screChangeRequestName,
            ("ScheduledTime" .=) <$> _screScheduledTime,
            ("Tags" .=) <$> _screTags,
            ("DocumentVersion" .=) <$> _screDocumentVersion,
            ("Parameters" .=) <$> _screParameters,
            ("ClientToken" .=) <$> _screClientToken,
            Just ("DocumentName" .= _screDocumentName),
            Just ("Runbooks" .= _screRunbooks)
          ]
      )

instance ToPath StartChangeRequestExecution where
  toPath = const "/"

instance ToQuery StartChangeRequestExecution where
  toQuery = const mempty

-- | /See:/ 'startChangeRequestExecutionResponse' smart constructor.
data StartChangeRequestExecutionResponse = StartChangeRequestExecutionResponse'
  { _screrrsAutomationExecutionId ::
      !( Maybe
           Text
       ),
    _screrrsResponseStatus ::
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

-- | Creates a value of 'StartChangeRequestExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'screrrsAutomationExecutionId' - The unique ID of a runbook workflow operation. (A runbook workflow is a type of Automation operation.)
--
-- * 'screrrsResponseStatus' - -- | The response status code.
startChangeRequestExecutionResponse ::
  -- | 'screrrsResponseStatus'
  Int ->
  StartChangeRequestExecutionResponse
startChangeRequestExecutionResponse pResponseStatus_ =
  StartChangeRequestExecutionResponse'
    { _screrrsAutomationExecutionId =
        Nothing,
      _screrrsResponseStatus =
        pResponseStatus_
    }

-- | The unique ID of a runbook workflow operation. (A runbook workflow is a type of Automation operation.)
screrrsAutomationExecutionId :: Lens' StartChangeRequestExecutionResponse (Maybe Text)
screrrsAutomationExecutionId = lens _screrrsAutomationExecutionId (\s a -> s {_screrrsAutomationExecutionId = a})

-- | -- | The response status code.
screrrsResponseStatus :: Lens' StartChangeRequestExecutionResponse Int
screrrsResponseStatus = lens _screrrsResponseStatus (\s a -> s {_screrrsResponseStatus = a})

instance NFData StartChangeRequestExecutionResponse
