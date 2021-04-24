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
-- Module      : Network.AWS.WorkDocs.DeleteComment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified comment from the document version.
module Network.AWS.WorkDocs.DeleteComment
  ( -- * Creating a Request
    deleteComment,
    DeleteComment,

    -- * Request Lenses
    dcAuthenticationToken,
    dcDocumentId,
    dcVersionId,
    dcCommentId,

    -- * Destructuring the Response
    deleteCommentResponse,
    DeleteCommentResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'deleteComment' smart constructor.
data DeleteComment = DeleteComment'
  { _dcAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _dcDocumentId :: !Text,
    _dcVersionId :: !Text,
    _dcCommentId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'dcDocumentId' - The ID of the document.
--
-- * 'dcVersionId' - The ID of the document version.
--
-- * 'dcCommentId' - The ID of the comment.
deleteComment ::
  -- | 'dcDocumentId'
  Text ->
  -- | 'dcVersionId'
  Text ->
  -- | 'dcCommentId'
  Text ->
  DeleteComment
deleteComment pDocumentId_ pVersionId_ pCommentId_ =
  DeleteComment'
    { _dcAuthenticationToken = Nothing,
      _dcDocumentId = pDocumentId_,
      _dcVersionId = pVersionId_,
      _dcCommentId = pCommentId_
    }

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
dcAuthenticationToken :: Lens' DeleteComment (Maybe Text)
dcAuthenticationToken = lens _dcAuthenticationToken (\s a -> s {_dcAuthenticationToken = a}) . mapping _Sensitive

-- | The ID of the document.
dcDocumentId :: Lens' DeleteComment Text
dcDocumentId = lens _dcDocumentId (\s a -> s {_dcDocumentId = a})

-- | The ID of the document version.
dcVersionId :: Lens' DeleteComment Text
dcVersionId = lens _dcVersionId (\s a -> s {_dcVersionId = a})

-- | The ID of the comment.
dcCommentId :: Lens' DeleteComment Text
dcCommentId = lens _dcCommentId (\s a -> s {_dcCommentId = a})

instance AWSRequest DeleteComment where
  type Rs DeleteComment = DeleteCommentResponse
  request = delete workDocs
  response = receiveNull DeleteCommentResponse'

instance Hashable DeleteComment

instance NFData DeleteComment

instance ToHeaders DeleteComment where
  toHeaders DeleteComment' {..} =
    mconcat
      [ "Authentication" =# _dcAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DeleteComment where
  toPath DeleteComment' {..} =
    mconcat
      [ "/api/v1/documents/",
        toBS _dcDocumentId,
        "/versions/",
        toBS _dcVersionId,
        "/comment/",
        toBS _dcCommentId
      ]

instance ToQuery DeleteComment where
  toQuery = const mempty

-- | /See:/ 'deleteCommentResponse' smart constructor.
data DeleteCommentResponse = DeleteCommentResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteCommentResponse' with the minimum fields required to make a request.
deleteCommentResponse ::
  DeleteCommentResponse
deleteCommentResponse = DeleteCommentResponse'

instance NFData DeleteCommentResponse
