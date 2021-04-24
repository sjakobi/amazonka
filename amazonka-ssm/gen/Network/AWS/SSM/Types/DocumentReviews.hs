{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentReviews
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentReviews where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.DocumentReviewAction
import Network.AWS.SSM.Types.DocumentReviewCommentSource

-- | Information about a document approval review.
--
--
--
-- /See:/ 'documentReviews' smart constructor.
data DocumentReviews = DocumentReviews'
  { _drComment ::
      !(Maybe [DocumentReviewCommentSource]),
    _drAction :: !DocumentReviewAction
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentReviews' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drComment' - A comment entered by a user in your organization about the document review request.
--
-- * 'drAction' - The action to take on a document approval review request.
documentReviews ::
  -- | 'drAction'
  DocumentReviewAction ->
  DocumentReviews
documentReviews pAction_ =
  DocumentReviews'
    { _drComment = Nothing,
      _drAction = pAction_
    }

-- | A comment entered by a user in your organization about the document review request.
drComment :: Lens' DocumentReviews [DocumentReviewCommentSource]
drComment = lens _drComment (\s a -> s {_drComment = a}) . _Default . _Coerce

-- | The action to take on a document approval review request.
drAction :: Lens' DocumentReviews DocumentReviewAction
drAction = lens _drAction (\s a -> s {_drAction = a})

instance Hashable DocumentReviews

instance NFData DocumentReviews

instance ToJSON DocumentReviews where
  toJSON DocumentReviews' {..} =
    object
      ( catMaybes
          [ ("Comment" .=) <$> _drComment,
            Just ("Action" .= _drAction)
          ]
      )
