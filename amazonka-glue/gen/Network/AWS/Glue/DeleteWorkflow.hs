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
-- Module      : Network.AWS.Glue.DeleteWorkflow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a workflow.
module Network.AWS.Glue.DeleteWorkflow
  ( -- * Creating a Request
    deleteWorkflow,
    DeleteWorkflow,

    -- * Request Lenses
    dwName,

    -- * Destructuring the Response
    deleteWorkflowResponse,
    DeleteWorkflowResponse,

    -- * Response Lenses
    dwrrsName,
    dwrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteWorkflow' smart constructor.
newtype DeleteWorkflow = DeleteWorkflow'
  { _dwName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteWorkflow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwName' - Name of the workflow to be deleted.
deleteWorkflow ::
  -- | 'dwName'
  Text ->
  DeleteWorkflow
deleteWorkflow pName_ =
  DeleteWorkflow' {_dwName = pName_}

-- | Name of the workflow to be deleted.
dwName :: Lens' DeleteWorkflow Text
dwName = lens _dwName (\s a -> s {_dwName = a})

instance AWSRequest DeleteWorkflow where
  type Rs DeleteWorkflow = DeleteWorkflowResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          DeleteWorkflowResponse'
            <$> (x .?> "Name") <*> (pure (fromEnum s))
      )

instance Hashable DeleteWorkflow

instance NFData DeleteWorkflow

instance ToHeaders DeleteWorkflow where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteWorkflow" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteWorkflow where
  toJSON DeleteWorkflow' {..} =
    object (catMaybes [Just ("Name" .= _dwName)])

instance ToPath DeleteWorkflow where
  toPath = const "/"

instance ToQuery DeleteWorkflow where
  toQuery = const mempty

-- | /See:/ 'deleteWorkflowResponse' smart constructor.
data DeleteWorkflowResponse = DeleteWorkflowResponse'
  { _dwrrsName ::
      !(Maybe Text),
    _dwrrsResponseStatus ::
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

-- | Creates a value of 'DeleteWorkflowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwrrsName' - Name of the workflow specified in input.
--
-- * 'dwrrsResponseStatus' - -- | The response status code.
deleteWorkflowResponse ::
  -- | 'dwrrsResponseStatus'
  Int ->
  DeleteWorkflowResponse
deleteWorkflowResponse pResponseStatus_ =
  DeleteWorkflowResponse'
    { _dwrrsName = Nothing,
      _dwrrsResponseStatus = pResponseStatus_
    }

-- | Name of the workflow specified in input.
dwrrsName :: Lens' DeleteWorkflowResponse (Maybe Text)
dwrrsName = lens _dwrrsName (\s a -> s {_dwrrsName = a})

-- | -- | The response status code.
dwrrsResponseStatus :: Lens' DeleteWorkflowResponse Int
dwrrsResponseStatus = lens _dwrrsResponseStatus (\s a -> s {_dwrrsResponseStatus = a})

instance NFData DeleteWorkflowResponse
