{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListIndexResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListIndexResponse where

import Network.AWS.CloudDirectory.Types.IndexAttachment
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListIndex' response operation.
--
--
--
-- /See:/ 'batchListIndexResponse' smart constructor.
data BatchListIndexResponse = BatchListIndexResponse'
  { _blirNextToken ::
      !(Maybe Text),
    _blirIndexAttachments ::
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

-- | Creates a value of 'BatchListIndexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blirNextToken' - The pagination token.
--
-- * 'blirIndexAttachments' - The objects and indexed values attached to the index.
batchListIndexResponse ::
  BatchListIndexResponse
batchListIndexResponse =
  BatchListIndexResponse'
    { _blirNextToken = Nothing,
      _blirIndexAttachments = Nothing
    }

-- | The pagination token.
blirNextToken :: Lens' BatchListIndexResponse (Maybe Text)
blirNextToken = lens _blirNextToken (\s a -> s {_blirNextToken = a})

-- | The objects and indexed values attached to the index.
blirIndexAttachments :: Lens' BatchListIndexResponse [IndexAttachment]
blirIndexAttachments = lens _blirIndexAttachments (\s a -> s {_blirIndexAttachments = a}) . _Default . _Coerce

instance FromJSON BatchListIndexResponse where
  parseJSON =
    withObject
      "BatchListIndexResponse"
      ( \x ->
          BatchListIndexResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "IndexAttachments" .!= mempty)
      )

instance Hashable BatchListIndexResponse

instance NFData BatchListIndexResponse
