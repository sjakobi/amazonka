{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentReviewerResponseSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentReviewerResponseSource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.DocumentReviewCommentSource
import Network.AWS.SSM.Types.ReviewStatus

-- | Information about a reviewer's response to a document review request.
--
--
--
-- /See:/ 'documentReviewerResponseSource' smart constructor.
data DocumentReviewerResponseSource = DocumentReviewerResponseSource'
  { _drrsComment ::
      !( Maybe
           [DocumentReviewCommentSource]
       ),
    _drrsUpdatedTime ::
      !( Maybe
           POSIX
       ),
    _drrsCreateTime ::
      !( Maybe
           POSIX
       ),
    _drrsReviewStatus ::
      !( Maybe
           ReviewStatus
       ),
    _drrsReviewer ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DocumentReviewerResponseSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrsComment' - The comment entered by a reviewer as part of their document review response.
--
-- * 'drrsUpdatedTime' - The date and time that a reviewer last updated a response to a document review request.
--
-- * 'drrsCreateTime' - The date and time that a reviewer entered a response to a document review request.
--
-- * 'drrsReviewStatus' - The current review status of a new custom SSM document created by a member of your organization, or of the latest version of an existing SSM document. Only one version of a document can be in the APPROVED state at a time. When a new version is approved, the status of the previous version changes to REJECTED. Only one version of a document can be in review, or PENDING, at a time.
--
-- * 'drrsReviewer' - The user in your organization assigned to review a document request.
documentReviewerResponseSource ::
  DocumentReviewerResponseSource
documentReviewerResponseSource =
  DocumentReviewerResponseSource'
    { _drrsComment =
        Nothing,
      _drrsUpdatedTime = Nothing,
      _drrsCreateTime = Nothing,
      _drrsReviewStatus = Nothing,
      _drrsReviewer = Nothing
    }

-- | The comment entered by a reviewer as part of their document review response.
drrsComment :: Lens' DocumentReviewerResponseSource [DocumentReviewCommentSource]
drrsComment = lens _drrsComment (\s a -> s {_drrsComment = a}) . _Default . _Coerce

-- | The date and time that a reviewer last updated a response to a document review request.
drrsUpdatedTime :: Lens' DocumentReviewerResponseSource (Maybe UTCTime)
drrsUpdatedTime = lens _drrsUpdatedTime (\s a -> s {_drrsUpdatedTime = a}) . mapping _Time

-- | The date and time that a reviewer entered a response to a document review request.
drrsCreateTime :: Lens' DocumentReviewerResponseSource (Maybe UTCTime)
drrsCreateTime = lens _drrsCreateTime (\s a -> s {_drrsCreateTime = a}) . mapping _Time

-- | The current review status of a new custom SSM document created by a member of your organization, or of the latest version of an existing SSM document. Only one version of a document can be in the APPROVED state at a time. When a new version is approved, the status of the previous version changes to REJECTED. Only one version of a document can be in review, or PENDING, at a time.
drrsReviewStatus :: Lens' DocumentReviewerResponseSource (Maybe ReviewStatus)
drrsReviewStatus = lens _drrsReviewStatus (\s a -> s {_drrsReviewStatus = a})

-- | The user in your organization assigned to review a document request.
drrsReviewer :: Lens' DocumentReviewerResponseSource (Maybe Text)
drrsReviewer = lens _drrsReviewer (\s a -> s {_drrsReviewer = a})

instance FromJSON DocumentReviewerResponseSource where
  parseJSON =
    withObject
      "DocumentReviewerResponseSource"
      ( \x ->
          DocumentReviewerResponseSource'
            <$> (x .:? "Comment" .!= mempty)
            <*> (x .:? "UpdatedTime")
            <*> (x .:? "CreateTime")
            <*> (x .:? "ReviewStatus")
            <*> (x .:? "Reviewer")
      )

instance Hashable DocumentReviewerResponseSource

instance NFData DocumentReviewerResponseSource
