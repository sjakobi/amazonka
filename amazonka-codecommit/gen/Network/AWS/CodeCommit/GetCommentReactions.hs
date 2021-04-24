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
-- Module      : Network.AWS.CodeCommit.GetCommentReactions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about reactions to a specified comment ID. Reactions from users who have been deleted will not be included in the count.
module Network.AWS.CodeCommit.GetCommentReactions
  ( -- * Creating a Request
    getCommentReactions,
    GetCommentReactions,

    -- * Request Lenses
    gcrNextToken,
    gcrMaxResults,
    gcrReactionUserARN,
    gcrCommentId,

    -- * Destructuring the Response
    getCommentReactionsResponse,
    GetCommentReactionsResponse,

    -- * Response Lenses
    gcrrrsNextToken,
    gcrrrsResponseStatus,
    gcrrrsReactionsForComment,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCommentReactions' smart constructor.
data GetCommentReactions = GetCommentReactions'
  { _gcrNextToken ::
      !(Maybe Text),
    _gcrMaxResults :: !(Maybe Int),
    _gcrReactionUserARN ::
      !(Maybe Text),
    _gcrCommentId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCommentReactions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrNextToken' - An enumeration token that, when provided in a request, returns the next batch of the results.
--
-- * 'gcrMaxResults' - A non-zero, non-negative integer used to limit the number of returned results. The default is the same as the allowed maximum, 1,000.
--
-- * 'gcrReactionUserARN' - Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.
--
-- * 'gcrCommentId' - The ID of the comment for which you want to get reactions information.
getCommentReactions ::
  -- | 'gcrCommentId'
  Text ->
  GetCommentReactions
getCommentReactions pCommentId_ =
  GetCommentReactions'
    { _gcrNextToken = Nothing,
      _gcrMaxResults = Nothing,
      _gcrReactionUserARN = Nothing,
      _gcrCommentId = pCommentId_
    }

-- | An enumeration token that, when provided in a request, returns the next batch of the results.
gcrNextToken :: Lens' GetCommentReactions (Maybe Text)
gcrNextToken = lens _gcrNextToken (\s a -> s {_gcrNextToken = a})

-- | A non-zero, non-negative integer used to limit the number of returned results. The default is the same as the allowed maximum, 1,000.
gcrMaxResults :: Lens' GetCommentReactions (Maybe Int)
gcrMaxResults = lens _gcrMaxResults (\s a -> s {_gcrMaxResults = a})

-- | Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.
gcrReactionUserARN :: Lens' GetCommentReactions (Maybe Text)
gcrReactionUserARN = lens _gcrReactionUserARN (\s a -> s {_gcrReactionUserARN = a})

-- | The ID of the comment for which you want to get reactions information.
gcrCommentId :: Lens' GetCommentReactions Text
gcrCommentId = lens _gcrCommentId (\s a -> s {_gcrCommentId = a})

instance AWSRequest GetCommentReactions where
  type
    Rs GetCommentReactions =
      GetCommentReactionsResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetCommentReactionsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "reactionsForComment" .!@ mempty)
      )

instance Hashable GetCommentReactions

instance NFData GetCommentReactions

instance ToHeaders GetCommentReactions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.GetCommentReactions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCommentReactions where
  toJSON GetCommentReactions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gcrNextToken,
            ("maxResults" .=) <$> _gcrMaxResults,
            ("reactionUserArn" .=) <$> _gcrReactionUserARN,
            Just ("commentId" .= _gcrCommentId)
          ]
      )

instance ToPath GetCommentReactions where
  toPath = const "/"

instance ToQuery GetCommentReactions where
  toQuery = const mempty

-- | /See:/ 'getCommentReactionsResponse' smart constructor.
data GetCommentReactionsResponse = GetCommentReactionsResponse'
  { _gcrrrsNextToken ::
      !(Maybe Text),
    _gcrrrsResponseStatus ::
      !Int,
    _gcrrrsReactionsForComment ::
      ![ReactionForComment]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCommentReactionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrrsNextToken' - An enumeration token that can be used in a request to return the next batch of the results.
--
-- * 'gcrrrsResponseStatus' - -- | The response status code.
--
-- * 'gcrrrsReactionsForComment' - An array of reactions to the specified comment.
getCommentReactionsResponse ::
  -- | 'gcrrrsResponseStatus'
  Int ->
  GetCommentReactionsResponse
getCommentReactionsResponse pResponseStatus_ =
  GetCommentReactionsResponse'
    { _gcrrrsNextToken =
        Nothing,
      _gcrrrsResponseStatus = pResponseStatus_,
      _gcrrrsReactionsForComment = mempty
    }

-- | An enumeration token that can be used in a request to return the next batch of the results.
gcrrrsNextToken :: Lens' GetCommentReactionsResponse (Maybe Text)
gcrrrsNextToken = lens _gcrrrsNextToken (\s a -> s {_gcrrrsNextToken = a})

-- | -- | The response status code.
gcrrrsResponseStatus :: Lens' GetCommentReactionsResponse Int
gcrrrsResponseStatus = lens _gcrrrsResponseStatus (\s a -> s {_gcrrrsResponseStatus = a})

-- | An array of reactions to the specified comment.
gcrrrsReactionsForComment :: Lens' GetCommentReactionsResponse [ReactionForComment]
gcrrrsReactionsForComment = lens _gcrrrsReactionsForComment (\s a -> s {_gcrrrsReactionsForComment = a}) . _Coerce

instance NFData GetCommentReactionsResponse
