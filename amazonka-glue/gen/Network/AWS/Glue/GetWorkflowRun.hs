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
-- Module      : Network.AWS.Glue.GetWorkflowRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata for a given workflow run.
module Network.AWS.Glue.GetWorkflowRun
  ( -- * Creating a Request
    getWorkflowRun,
    GetWorkflowRun,

    -- * Request Lenses
    getIncludeGraph,
    getName,
    getRunId,

    -- * Destructuring the Response
    getWorkflowRunResponse,
    GetWorkflowRunResponse,

    -- * Response Lenses
    gwrrrsRun,
    gwrrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getWorkflowRun' smart constructor.
data GetWorkflowRun = GetWorkflowRun'
  { _getIncludeGraph ::
      !(Maybe Bool),
    _getName :: !Text,
    _getRunId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetWorkflowRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getIncludeGraph' - Specifies whether to include the workflow graph in response or not.
--
-- * 'getName' - Name of the workflow being run.
--
-- * 'getRunId' - The ID of the workflow run.
getWorkflowRun ::
  -- | 'getName'
  Text ->
  -- | 'getRunId'
  Text ->
  GetWorkflowRun
getWorkflowRun pName_ pRunId_ =
  GetWorkflowRun'
    { _getIncludeGraph = Nothing,
      _getName = pName_,
      _getRunId = pRunId_
    }

-- | Specifies whether to include the workflow graph in response or not.
getIncludeGraph :: Lens' GetWorkflowRun (Maybe Bool)
getIncludeGraph = lens _getIncludeGraph (\s a -> s {_getIncludeGraph = a})

-- | Name of the workflow being run.
getName :: Lens' GetWorkflowRun Text
getName = lens _getName (\s a -> s {_getName = a})

-- | The ID of the workflow run.
getRunId :: Lens' GetWorkflowRun Text
getRunId = lens _getRunId (\s a -> s {_getRunId = a})

instance AWSRequest GetWorkflowRun where
  type Rs GetWorkflowRun = GetWorkflowRunResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetWorkflowRunResponse'
            <$> (x .?> "Run") <*> (pure (fromEnum s))
      )

instance Hashable GetWorkflowRun

instance NFData GetWorkflowRun

instance ToHeaders GetWorkflowRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetWorkflowRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetWorkflowRun where
  toJSON GetWorkflowRun' {..} =
    object
      ( catMaybes
          [ ("IncludeGraph" .=) <$> _getIncludeGraph,
            Just ("Name" .= _getName),
            Just ("RunId" .= _getRunId)
          ]
      )

instance ToPath GetWorkflowRun where
  toPath = const "/"

instance ToQuery GetWorkflowRun where
  toQuery = const mempty

-- | /See:/ 'getWorkflowRunResponse' smart constructor.
data GetWorkflowRunResponse = GetWorkflowRunResponse'
  { _gwrrrsRun ::
      !(Maybe WorkflowRun),
    _gwrrrsResponseStatus ::
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

-- | Creates a value of 'GetWorkflowRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwrrrsRun' - The requested workflow run metadata.
--
-- * 'gwrrrsResponseStatus' - -- | The response status code.
getWorkflowRunResponse ::
  -- | 'gwrrrsResponseStatus'
  Int ->
  GetWorkflowRunResponse
getWorkflowRunResponse pResponseStatus_ =
  GetWorkflowRunResponse'
    { _gwrrrsRun = Nothing,
      _gwrrrsResponseStatus = pResponseStatus_
    }

-- | The requested workflow run metadata.
gwrrrsRun :: Lens' GetWorkflowRunResponse (Maybe WorkflowRun)
gwrrrsRun = lens _gwrrrsRun (\s a -> s {_gwrrrsRun = a})

-- | -- | The response status code.
gwrrrsResponseStatus :: Lens' GetWorkflowRunResponse Int
gwrrrsResponseStatus = lens _gwrrrsResponseStatus (\s a -> s {_gwrrrsResponseStatus = a})

instance NFData GetWorkflowRunResponse
