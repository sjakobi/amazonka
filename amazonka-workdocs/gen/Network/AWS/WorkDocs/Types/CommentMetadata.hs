{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.CommentMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.CommentMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkDocs.Types.CommentStatusType
import Network.AWS.WorkDocs.Types.User

-- | Describes the metadata of a comment.
--
--
--
-- /See:/ 'commentMetadata' smart constructor.
data CommentMetadata = CommentMetadata'
  { _cmCommentStatus ::
      !(Maybe CommentStatusType),
    _cmCreatedTimestamp :: !(Maybe POSIX),
    _cmContributor :: !(Maybe User),
    _cmRecipientId :: !(Maybe Text),
    _cmCommentId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CommentMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmCommentStatus' - The status of the comment.
--
-- * 'cmCreatedTimestamp' - The timestamp that the comment was created.
--
-- * 'cmContributor' - The user who made the comment.
--
-- * 'cmRecipientId' - The ID of the user being replied to.
--
-- * 'cmCommentId' - The ID of the comment.
commentMetadata ::
  CommentMetadata
commentMetadata =
  CommentMetadata'
    { _cmCommentStatus = Nothing,
      _cmCreatedTimestamp = Nothing,
      _cmContributor = Nothing,
      _cmRecipientId = Nothing,
      _cmCommentId = Nothing
    }

-- | The status of the comment.
cmCommentStatus :: Lens' CommentMetadata (Maybe CommentStatusType)
cmCommentStatus = lens _cmCommentStatus (\s a -> s {_cmCommentStatus = a})

-- | The timestamp that the comment was created.
cmCreatedTimestamp :: Lens' CommentMetadata (Maybe UTCTime)
cmCreatedTimestamp = lens _cmCreatedTimestamp (\s a -> s {_cmCreatedTimestamp = a}) . mapping _Time

-- | The user who made the comment.
cmContributor :: Lens' CommentMetadata (Maybe User)
cmContributor = lens _cmContributor (\s a -> s {_cmContributor = a})

-- | The ID of the user being replied to.
cmRecipientId :: Lens' CommentMetadata (Maybe Text)
cmRecipientId = lens _cmRecipientId (\s a -> s {_cmRecipientId = a})

-- | The ID of the comment.
cmCommentId :: Lens' CommentMetadata (Maybe Text)
cmCommentId = lens _cmCommentId (\s a -> s {_cmCommentId = a})

instance FromJSON CommentMetadata where
  parseJSON =
    withObject
      "CommentMetadata"
      ( \x ->
          CommentMetadata'
            <$> (x .:? "CommentStatus")
            <*> (x .:? "CreatedTimestamp")
            <*> (x .:? "Contributor")
            <*> (x .:? "RecipientId")
            <*> (x .:? "CommentId")
      )

instance Hashable CommentMetadata

instance NFData CommentMetadata
