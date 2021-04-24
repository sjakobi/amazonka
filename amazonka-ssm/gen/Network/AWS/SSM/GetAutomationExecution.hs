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
-- Module      : Network.AWS.SSM.GetAutomationExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get detailed information about a particular Automation execution.
module Network.AWS.SSM.GetAutomationExecution
  ( -- * Creating a Request
    getAutomationExecution,
    GetAutomationExecution,

    -- * Request Lenses
    gaeAutomationExecutionId,

    -- * Destructuring the Response
    getAutomationExecutionResponse,
    GetAutomationExecutionResponse,

    -- * Response Lenses
    gaerrsAutomationExecution,
    gaerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getAutomationExecution' smart constructor.
newtype GetAutomationExecution = GetAutomationExecution'
  { _gaeAutomationExecutionId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAutomationExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaeAutomationExecutionId' - The unique identifier for an existing automation execution to examine. The execution ID is returned by StartAutomationExecution when the execution of an Automation document is initiated.
getAutomationExecution ::
  -- | 'gaeAutomationExecutionId'
  Text ->
  GetAutomationExecution
getAutomationExecution pAutomationExecutionId_ =
  GetAutomationExecution'
    { _gaeAutomationExecutionId =
        pAutomationExecutionId_
    }

-- | The unique identifier for an existing automation execution to examine. The execution ID is returned by StartAutomationExecution when the execution of an Automation document is initiated.
gaeAutomationExecutionId :: Lens' GetAutomationExecution Text
gaeAutomationExecutionId = lens _gaeAutomationExecutionId (\s a -> s {_gaeAutomationExecutionId = a})

instance AWSRequest GetAutomationExecution where
  type
    Rs GetAutomationExecution =
      GetAutomationExecutionResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetAutomationExecutionResponse'
            <$> (x .?> "AutomationExecution")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAutomationExecution

instance NFData GetAutomationExecution

instance ToHeaders GetAutomationExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetAutomationExecution" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAutomationExecution where
  toJSON GetAutomationExecution' {..} =
    object
      ( catMaybes
          [ Just
              ( "AutomationExecutionId"
                  .= _gaeAutomationExecutionId
              )
          ]
      )

instance ToPath GetAutomationExecution where
  toPath = const "/"

instance ToQuery GetAutomationExecution where
  toQuery = const mempty

-- | /See:/ 'getAutomationExecutionResponse' smart constructor.
data GetAutomationExecutionResponse = GetAutomationExecutionResponse'
  { _gaerrsAutomationExecution ::
      !( Maybe
           AutomationExecution
       ),
    _gaerrsResponseStatus ::
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

-- | Creates a value of 'GetAutomationExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaerrsAutomationExecution' - Detailed information about the current state of an automation execution.
--
-- * 'gaerrsResponseStatus' - -- | The response status code.
getAutomationExecutionResponse ::
  -- | 'gaerrsResponseStatus'
  Int ->
  GetAutomationExecutionResponse
getAutomationExecutionResponse pResponseStatus_ =
  GetAutomationExecutionResponse'
    { _gaerrsAutomationExecution =
        Nothing,
      _gaerrsResponseStatus = pResponseStatus_
    }

-- | Detailed information about the current state of an automation execution.
gaerrsAutomationExecution :: Lens' GetAutomationExecutionResponse (Maybe AutomationExecution)
gaerrsAutomationExecution = lens _gaerrsAutomationExecution (\s a -> s {_gaerrsAutomationExecution = a})

-- | -- | The response status code.
gaerrsResponseStatus :: Lens' GetAutomationExecutionResponse Int
gaerrsResponseStatus = lens _gaerrsResponseStatus (\s a -> s {_gaerrsResponseStatus = a})

instance NFData GetAutomationExecutionResponse
