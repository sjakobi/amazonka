{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListAttachedIndicesResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListAttachedIndicesResponse where

import Network.AWS.CloudDirectory.Types.IndexAttachment
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListAttachedIndices' response operation.
--
--
--
-- /See:/ 'batchListAttachedIndicesResponse' smart constructor.
data BatchListAttachedIndicesResponse = BatchListAttachedIndicesResponse'
  { _blairNextToken ::
      !( Maybe
           Text
       ),
    _blairIndexAttachments ::
      !( Maybe
           [IndexAttachment]
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

-- | Creates a value of 'BatchListAttachedIndicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blairNextToken' - The pagination token.
--
-- * 'blairIndexAttachments' - The indices attached to the specified object.
batchListAttachedIndicesResponse ::
  BatchListAttachedIndicesResponse
batchListAttachedIndicesResponse =
  BatchListAttachedIndicesResponse'
    { _blairNextToken =
        Nothing,
      _blairIndexAttachments = Nothing
    }

-- | The pagination token.
blairNextToken :: Lens' BatchListAttachedIndicesResponse (Maybe Text)
blairNextToken = lens _blairNextToken (\s a -> s {_blairNextToken = a})

-- | The indices attached to the specified object.
blairIndexAttachments :: Lens' BatchListAttachedIndicesResponse [IndexAttachment]
blairIndexAttachments = lens _blairIndexAttachments (\s a -> s {_blairIndexAttachments = a}) . _Default . _Coerce

instance FromJSON BatchListAttachedIndicesResponse where
  parseJSON =
    withObject
      "BatchListAttachedIndicesResponse"
      ( \x ->
          BatchListAttachedIndicesResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "IndexAttachments" .!= mempty)
      )

instance Hashable BatchListAttachedIndicesResponse

instance NFData BatchListAttachedIndicesResponse
