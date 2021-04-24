{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ReviewInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ReviewInformation where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ReviewStatus

-- | Information about the result of a document review request.
--
--
--
-- /See:/ 'reviewInformation' smart constructor.
data ReviewInformation = ReviewInformation'
  { _riStatus ::
      !(Maybe ReviewStatus),
    _riReviewedTime :: !(Maybe POSIX),
    _riReviewer :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReviewInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riStatus' - The current status of the document review request.
--
-- * 'riReviewedTime' - The time that the reviewer took action on the document review request.
--
-- * 'riReviewer' - The reviewer assigned to take action on the document review request.
reviewInformation ::
  ReviewInformation
reviewInformation =
  ReviewInformation'
    { _riStatus = Nothing,
      _riReviewedTime = Nothing,
      _riReviewer = Nothing
    }

-- | The current status of the document review request.
riStatus :: Lens' ReviewInformation (Maybe ReviewStatus)
riStatus = lens _riStatus (\s a -> s {_riStatus = a})

-- | The time that the reviewer took action on the document review request.
riReviewedTime :: Lens' ReviewInformation (Maybe UTCTime)
riReviewedTime = lens _riReviewedTime (\s a -> s {_riReviewedTime = a}) . mapping _Time

-- | The reviewer assigned to take action on the document review request.
riReviewer :: Lens' ReviewInformation (Maybe Text)
riReviewer = lens _riReviewer (\s a -> s {_riReviewer = a})

instance FromJSON ReviewInformation where
  parseJSON =
    withObject
      "ReviewInformation"
      ( \x ->
          ReviewInformation'
            <$> (x .:? "Status")
            <*> (x .:? "ReviewedTime")
            <*> (x .:? "Reviewer")
      )

instance Hashable ReviewInformation

instance NFData ReviewInformation
