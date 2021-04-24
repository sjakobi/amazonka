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
-- Module      : Network.AWS.CodePipeline.PutApprovalResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.
module Network.AWS.CodePipeline.PutApprovalResult
  ( -- * Creating a Request
    putApprovalResult,
    PutApprovalResult,

    -- * Request Lenses
    pPipelineName,
    pStageName,
    pActionName,
    pResult,
    pToken,

    -- * Destructuring the Response
    putApprovalResultResponse,
    PutApprovalResultResponse,

    -- * Response Lenses
    prsApprovedAt,
    prsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @PutApprovalResult@ action.
--
--
--
-- /See:/ 'putApprovalResult' smart constructor.
data PutApprovalResult = PutApprovalResult'
  { _pPipelineName ::
      !Text,
    _pStageName :: !Text,
    _pActionName :: !Text,
    _pResult :: !ApprovalResult,
    _pToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutApprovalResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPipelineName' - The name of the pipeline that contains the action.
--
-- * 'pStageName' - The name of the stage that contains the action.
--
-- * 'pActionName' - The name of the action for which approval is requested.
--
-- * 'pResult' - Represents information about the result of the approval request.
--
-- * 'pToken' - The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the 'GetPipelineState' action. It is used to validate that the approval request corresponding to this token is still valid.
putApprovalResult ::
  -- | 'pPipelineName'
  Text ->
  -- | 'pStageName'
  Text ->
  -- | 'pActionName'
  Text ->
  -- | 'pResult'
  ApprovalResult ->
  -- | 'pToken'
  Text ->
  PutApprovalResult
putApprovalResult
  pPipelineName_
  pStageName_
  pActionName_
  pResult_
  pToken_ =
    PutApprovalResult'
      { _pPipelineName = pPipelineName_,
        _pStageName = pStageName_,
        _pActionName = pActionName_,
        _pResult = pResult_,
        _pToken = pToken_
      }

-- | The name of the pipeline that contains the action.
pPipelineName :: Lens' PutApprovalResult Text
pPipelineName = lens _pPipelineName (\s a -> s {_pPipelineName = a})

-- | The name of the stage that contains the action.
pStageName :: Lens' PutApprovalResult Text
pStageName = lens _pStageName (\s a -> s {_pStageName = a})

-- | The name of the action for which approval is requested.
pActionName :: Lens' PutApprovalResult Text
pActionName = lens _pActionName (\s a -> s {_pActionName = a})

-- | Represents information about the result of the approval request.
pResult :: Lens' PutApprovalResult ApprovalResult
pResult = lens _pResult (\s a -> s {_pResult = a})

-- | The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the 'GetPipelineState' action. It is used to validate that the approval request corresponding to this token is still valid.
pToken :: Lens' PutApprovalResult Text
pToken = lens _pToken (\s a -> s {_pToken = a})

instance AWSRequest PutApprovalResult where
  type Rs PutApprovalResult = PutApprovalResultResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          PutApprovalResultResponse'
            <$> (x .?> "approvedAt") <*> (pure (fromEnum s))
      )

instance Hashable PutApprovalResult

instance NFData PutApprovalResult

instance ToHeaders PutApprovalResult where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.PutApprovalResult" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutApprovalResult where
  toJSON PutApprovalResult' {..} =
    object
      ( catMaybes
          [ Just ("pipelineName" .= _pPipelineName),
            Just ("stageName" .= _pStageName),
            Just ("actionName" .= _pActionName),
            Just ("result" .= _pResult),
            Just ("token" .= _pToken)
          ]
      )

instance ToPath PutApprovalResult where
  toPath = const "/"

instance ToQuery PutApprovalResult where
  toQuery = const mempty

-- | Represents the output of a @PutApprovalResult@ action.
--
--
--
-- /See:/ 'putApprovalResultResponse' smart constructor.
data PutApprovalResultResponse = PutApprovalResultResponse'
  { _prsApprovedAt ::
      !(Maybe POSIX),
    _prsResponseStatus ::
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

-- | Creates a value of 'PutApprovalResultResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prsApprovedAt' - The timestamp showing when the approval or rejection was submitted.
--
-- * 'prsResponseStatus' - -- | The response status code.
putApprovalResultResponse ::
  -- | 'prsResponseStatus'
  Int ->
  PutApprovalResultResponse
putApprovalResultResponse pResponseStatus_ =
  PutApprovalResultResponse'
    { _prsApprovedAt =
        Nothing,
      _prsResponseStatus = pResponseStatus_
    }

-- | The timestamp showing when the approval or rejection was submitted.
prsApprovedAt :: Lens' PutApprovalResultResponse (Maybe UTCTime)
prsApprovedAt = lens _prsApprovedAt (\s a -> s {_prsApprovedAt = a}) . mapping _Time

-- | -- | The response status code.
prsResponseStatus :: Lens' PutApprovalResultResponse Int
prsResponseStatus = lens _prsResponseStatus (\s a -> s {_prsResponseStatus = a})

instance NFData PutApprovalResultResponse
