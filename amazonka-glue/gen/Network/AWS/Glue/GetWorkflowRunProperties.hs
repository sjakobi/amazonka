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
-- Module      : Network.AWS.Glue.GetWorkflowRunProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the workflow run properties which were set during the run.
module Network.AWS.Glue.GetWorkflowRunProperties
  ( -- * Creating a Request
    getWorkflowRunProperties,
    GetWorkflowRunProperties,

    -- * Request Lenses
    gwrpName,
    gwrpRunId,

    -- * Destructuring the Response
    getWorkflowRunPropertiesResponse,
    GetWorkflowRunPropertiesResponse,

    -- * Response Lenses
    gwrprrsRunProperties,
    gwrprrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getWorkflowRunProperties' smart constructor.
data GetWorkflowRunProperties = GetWorkflowRunProperties'
  { _gwrpName ::
      !Text,
    _gwrpRunId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetWorkflowRunProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwrpName' - Name of the workflow which was run.
--
-- * 'gwrpRunId' - The ID of the workflow run whose run properties should be returned.
getWorkflowRunProperties ::
  -- | 'gwrpName'
  Text ->
  -- | 'gwrpRunId'
  Text ->
  GetWorkflowRunProperties
getWorkflowRunProperties pName_ pRunId_ =
  GetWorkflowRunProperties'
    { _gwrpName = pName_,
      _gwrpRunId = pRunId_
    }

-- | Name of the workflow which was run.
gwrpName :: Lens' GetWorkflowRunProperties Text
gwrpName = lens _gwrpName (\s a -> s {_gwrpName = a})

-- | The ID of the workflow run whose run properties should be returned.
gwrpRunId :: Lens' GetWorkflowRunProperties Text
gwrpRunId = lens _gwrpRunId (\s a -> s {_gwrpRunId = a})

instance AWSRequest GetWorkflowRunProperties where
  type
    Rs GetWorkflowRunProperties =
      GetWorkflowRunPropertiesResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetWorkflowRunPropertiesResponse'
            <$> (x .?> "RunProperties" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetWorkflowRunProperties

instance NFData GetWorkflowRunProperties

instance ToHeaders GetWorkflowRunProperties where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetWorkflowRunProperties" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetWorkflowRunProperties where
  toJSON GetWorkflowRunProperties' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _gwrpName),
            Just ("RunId" .= _gwrpRunId)
          ]
      )

instance ToPath GetWorkflowRunProperties where
  toPath = const "/"

instance ToQuery GetWorkflowRunProperties where
  toQuery = const mempty

-- | /See:/ 'getWorkflowRunPropertiesResponse' smart constructor.
data GetWorkflowRunPropertiesResponse = GetWorkflowRunPropertiesResponse'
  { _gwrprrsRunProperties ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gwrprrsResponseStatus ::
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

-- | Creates a value of 'GetWorkflowRunPropertiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwrprrsRunProperties' - The workflow run properties which were set during the specified run.
--
-- * 'gwrprrsResponseStatus' - -- | The response status code.
getWorkflowRunPropertiesResponse ::
  -- | 'gwrprrsResponseStatus'
  Int ->
  GetWorkflowRunPropertiesResponse
getWorkflowRunPropertiesResponse pResponseStatus_ =
  GetWorkflowRunPropertiesResponse'
    { _gwrprrsRunProperties =
        Nothing,
      _gwrprrsResponseStatus = pResponseStatus_
    }

-- | The workflow run properties which were set during the specified run.
gwrprrsRunProperties :: Lens' GetWorkflowRunPropertiesResponse (HashMap Text Text)
gwrprrsRunProperties = lens _gwrprrsRunProperties (\s a -> s {_gwrprrsRunProperties = a}) . _Default . _Map

-- | -- | The response status code.
gwrprrsResponseStatus :: Lens' GetWorkflowRunPropertiesResponse Int
gwrprrsResponseStatus = lens _gwrprrsResponseStatus (\s a -> s {_gwrprrsResponseStatus = a})

instance NFData GetWorkflowRunPropertiesResponse
