{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentReviewCommentSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentReviewCommentSource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.DocumentReviewCommentType

-- | Information about comments added to a document review request.
--
--
--
-- /See:/ 'documentReviewCommentSource' smart constructor.
data DocumentReviewCommentSource = DocumentReviewCommentSource'
  { _drcsContent ::
      !(Maybe Text),
    _drcsType ::
      !( Maybe
           DocumentReviewCommentType
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

-- | Creates a value of 'DocumentReviewCommentSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcsContent' - The content of a comment entered by a user who requests a review of a new document version, or who reviews the new version.
--
-- * 'drcsType' - The type of information added to a review request. Currently, only the value @Comment@ is supported.
documentReviewCommentSource ::
  DocumentReviewCommentSource
documentReviewCommentSource =
  DocumentReviewCommentSource'
    { _drcsContent =
        Nothing,
      _drcsType = Nothing
    }

-- | The content of a comment entered by a user who requests a review of a new document version, or who reviews the new version.
drcsContent :: Lens' DocumentReviewCommentSource (Maybe Text)
drcsContent = lens _drcsContent (\s a -> s {_drcsContent = a})

-- | The type of information added to a review request. Currently, only the value @Comment@ is supported.
drcsType :: Lens' DocumentReviewCommentSource (Maybe DocumentReviewCommentType)
drcsType = lens _drcsType (\s a -> s {_drcsType = a})

instance FromJSON DocumentReviewCommentSource where
  parseJSON =
    withObject
      "DocumentReviewCommentSource"
      ( \x ->
          DocumentReviewCommentSource'
            <$> (x .:? "Content") <*> (x .:? "Type")
      )

instance Hashable DocumentReviewCommentSource

instance NFData DocumentReviewCommentSource

instance ToJSON DocumentReviewCommentSource where
  toJSON DocumentReviewCommentSource' {..} =
    object
      ( catMaybes
          [ ("Content" .=) <$> _drcsContent,
            ("Type" .=) <$> _drcsType
          ]
      )
