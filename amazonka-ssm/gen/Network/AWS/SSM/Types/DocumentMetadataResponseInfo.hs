{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentMetadataResponseInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentMetadataResponseInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.DocumentReviewerResponseSource

-- | Details about the response to a document review request.
--
--
--
-- /See:/ 'documentMetadataResponseInfo' smart constructor.
newtype DocumentMetadataResponseInfo = DocumentMetadataResponseInfo'
  { _dmriReviewerResponse ::
      Maybe
        [DocumentReviewerResponseSource]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DocumentMetadataResponseInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmriReviewerResponse' - Details about a reviewer's response to a document review request.
documentMetadataResponseInfo ::
  DocumentMetadataResponseInfo
documentMetadataResponseInfo =
  DocumentMetadataResponseInfo'
    { _dmriReviewerResponse =
        Nothing
    }

-- | Details about a reviewer's response to a document review request.
dmriReviewerResponse :: Lens' DocumentMetadataResponseInfo [DocumentReviewerResponseSource]
dmriReviewerResponse = lens _dmriReviewerResponse (\s a -> s {_dmriReviewerResponse = a}) . _Default . _Coerce

instance FromJSON DocumentMetadataResponseInfo where
  parseJSON =
    withObject
      "DocumentMetadataResponseInfo"
      ( \x ->
          DocumentMetadataResponseInfo'
            <$> (x .:? "ReviewerResponse" .!= mempty)
      )

instance Hashable DocumentMetadataResponseInfo

instance NFData DocumentMetadataResponseInfo
