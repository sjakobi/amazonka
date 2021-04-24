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
-- Module      : Network.AWS.CodePipeline.PutActionRevision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information to AWS CodePipeline about new revisions to a source.
module Network.AWS.CodePipeline.PutActionRevision
  ( -- * Creating a Request
    putActionRevision,
    PutActionRevision,

    -- * Request Lenses
    parPipelineName,
    parStageName,
    parActionName,
    parActionRevision,

    -- * Destructuring the Response
    putActionRevisionResponse,
    PutActionRevisionResponse,

    -- * Response Lenses
    parrrsNewRevision,
    parrrsPipelineExecutionId,
    parrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @PutActionRevision@ action.
--
--
--
-- /See:/ 'putActionRevision' smart constructor.
data PutActionRevision = PutActionRevision'
  { _parPipelineName ::
      !Text,
    _parStageName :: !Text,
    _parActionName :: !Text,
    _parActionRevision ::
      !ActionRevision
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutActionRevision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parPipelineName' - The name of the pipeline that starts processing the revision to the source.
--
-- * 'parStageName' - The name of the stage that contains the action that acts on the revision.
--
-- * 'parActionName' - The name of the action that processes the revision.
--
-- * 'parActionRevision' - Represents information about the version (or revision) of an action.
putActionRevision ::
  -- | 'parPipelineName'
  Text ->
  -- | 'parStageName'
  Text ->
  -- | 'parActionName'
  Text ->
  -- | 'parActionRevision'
  ActionRevision ->
  PutActionRevision
putActionRevision
  pPipelineName_
  pStageName_
  pActionName_
  pActionRevision_ =
    PutActionRevision'
      { _parPipelineName =
          pPipelineName_,
        _parStageName = pStageName_,
        _parActionName = pActionName_,
        _parActionRevision = pActionRevision_
      }

-- | The name of the pipeline that starts processing the revision to the source.
parPipelineName :: Lens' PutActionRevision Text
parPipelineName = lens _parPipelineName (\s a -> s {_parPipelineName = a})

-- | The name of the stage that contains the action that acts on the revision.
parStageName :: Lens' PutActionRevision Text
parStageName = lens _parStageName (\s a -> s {_parStageName = a})

-- | The name of the action that processes the revision.
parActionName :: Lens' PutActionRevision Text
parActionName = lens _parActionName (\s a -> s {_parActionName = a})

-- | Represents information about the version (or revision) of an action.
parActionRevision :: Lens' PutActionRevision ActionRevision
parActionRevision = lens _parActionRevision (\s a -> s {_parActionRevision = a})

instance AWSRequest PutActionRevision where
  type Rs PutActionRevision = PutActionRevisionResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          PutActionRevisionResponse'
            <$> (x .?> "newRevision")
            <*> (x .?> "pipelineExecutionId")
            <*> (pure (fromEnum s))
      )

instance Hashable PutActionRevision

instance NFData PutActionRevision

instance ToHeaders PutActionRevision where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.PutActionRevision" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutActionRevision where
  toJSON PutActionRevision' {..} =
    object
      ( catMaybes
          [ Just ("pipelineName" .= _parPipelineName),
            Just ("stageName" .= _parStageName),
            Just ("actionName" .= _parActionName),
            Just ("actionRevision" .= _parActionRevision)
          ]
      )

instance ToPath PutActionRevision where
  toPath = const "/"

instance ToQuery PutActionRevision where
  toQuery = const mempty

-- | Represents the output of a @PutActionRevision@ action.
--
--
--
-- /See:/ 'putActionRevisionResponse' smart constructor.
data PutActionRevisionResponse = PutActionRevisionResponse'
  { _parrrsNewRevision ::
      !(Maybe Bool),
    _parrrsPipelineExecutionId ::
      !(Maybe Text),
    _parrrsResponseStatus ::
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

-- | Creates a value of 'PutActionRevisionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parrrsNewRevision' - Indicates whether the artifact revision was previously used in an execution of the specified pipeline.
--
-- * 'parrrsPipelineExecutionId' - The ID of the current workflow state of the pipeline.
--
-- * 'parrrsResponseStatus' - -- | The response status code.
putActionRevisionResponse ::
  -- | 'parrrsResponseStatus'
  Int ->
  PutActionRevisionResponse
putActionRevisionResponse pResponseStatus_ =
  PutActionRevisionResponse'
    { _parrrsNewRevision =
        Nothing,
      _parrrsPipelineExecutionId = Nothing,
      _parrrsResponseStatus = pResponseStatus_
    }

-- | Indicates whether the artifact revision was previously used in an execution of the specified pipeline.
parrrsNewRevision :: Lens' PutActionRevisionResponse (Maybe Bool)
parrrsNewRevision = lens _parrrsNewRevision (\s a -> s {_parrrsNewRevision = a})

-- | The ID of the current workflow state of the pipeline.
parrrsPipelineExecutionId :: Lens' PutActionRevisionResponse (Maybe Text)
parrrsPipelineExecutionId = lens _parrrsPipelineExecutionId (\s a -> s {_parrrsPipelineExecutionId = a})

-- | -- | The response status code.
parrrsResponseStatus :: Lens' PutActionRevisionResponse Int
parrrsResponseStatus = lens _parrrsResponseStatus (\s a -> s {_parrrsResponseStatus = a})

instance NFData PutActionRevisionResponse
