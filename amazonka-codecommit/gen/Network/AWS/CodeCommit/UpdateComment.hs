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
-- Module      : Network.AWS.CodeCommit.UpdateComment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the contents of a comment.
module Network.AWS.CodeCommit.UpdateComment
  ( -- * Creating a Request
    updateComment,
    UpdateComment,

    -- * Request Lenses
    ucCommentId,
    ucContent,

    -- * Destructuring the Response
    updateCommentResponse,
    UpdateCommentResponse,

    -- * Response Lenses
    ucrrsComment,
    ucrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateComment' smart constructor.
data UpdateComment = UpdateComment'
  { _ucCommentId ::
      !Text,
    _ucContent :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucCommentId' - The system-generated ID of the comment you want to update. To get this ID, use 'GetCommentsForComparedCommit' or 'GetCommentsForPullRequest' .
--
-- * 'ucContent' - The updated content to replace the existing content of the comment.
updateComment ::
  -- | 'ucCommentId'
  Text ->
  -- | 'ucContent'
  Text ->
  UpdateComment
updateComment pCommentId_ pContent_ =
  UpdateComment'
    { _ucCommentId = pCommentId_,
      _ucContent = pContent_
    }

-- | The system-generated ID of the comment you want to update. To get this ID, use 'GetCommentsForComparedCommit' or 'GetCommentsForPullRequest' .
ucCommentId :: Lens' UpdateComment Text
ucCommentId = lens _ucCommentId (\s a -> s {_ucCommentId = a})

-- | The updated content to replace the existing content of the comment.
ucContent :: Lens' UpdateComment Text
ucContent = lens _ucContent (\s a -> s {_ucContent = a})

instance AWSRequest UpdateComment where
  type Rs UpdateComment = UpdateCommentResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          UpdateCommentResponse'
            <$> (x .?> "comment") <*> (pure (fromEnum s))
      )

instance Hashable UpdateComment

instance NFData UpdateComment

instance ToHeaders UpdateComment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.UpdateComment" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateComment where
  toJSON UpdateComment' {..} =
    object
      ( catMaybes
          [ Just ("commentId" .= _ucCommentId),
            Just ("content" .= _ucContent)
          ]
      )

instance ToPath UpdateComment where
  toPath = const "/"

instance ToQuery UpdateComment where
  toQuery = const mempty

-- | /See:/ 'updateCommentResponse' smart constructor.
data UpdateCommentResponse = UpdateCommentResponse'
  { _ucrrsComment ::
      !(Maybe Comment),
    _ucrrsResponseStatus ::
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

-- | Creates a value of 'UpdateCommentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsComment' - Information about the updated comment.
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateCommentResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateCommentResponse
updateCommentResponse pResponseStatus_ =
  UpdateCommentResponse'
    { _ucrrsComment = Nothing,
      _ucrrsResponseStatus = pResponseStatus_
    }

-- | Information about the updated comment.
ucrrsComment :: Lens' UpdateCommentResponse (Maybe Comment)
ucrrsComment = lens _ucrrsComment (\s a -> s {_ucrrsComment = a})

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateCommentResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateCommentResponse
