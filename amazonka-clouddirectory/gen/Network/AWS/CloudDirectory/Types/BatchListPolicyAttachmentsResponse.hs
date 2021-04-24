{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListPolicyAttachments' response operation.
--
--
--
-- /See:/ 'batchListPolicyAttachmentsResponse' smart constructor.
data BatchListPolicyAttachmentsResponse = BatchListPolicyAttachmentsResponse'
  { _blparNextToken ::
      !( Maybe
           Text
       ),
    _blparObjectIdentifiers ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'BatchListPolicyAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blparNextToken' - The pagination token.
--
-- * 'blparObjectIdentifiers' - A list of @ObjectIdentifiers@ to which the policy is attached.
batchListPolicyAttachmentsResponse ::
  BatchListPolicyAttachmentsResponse
batchListPolicyAttachmentsResponse =
  BatchListPolicyAttachmentsResponse'
    { _blparNextToken =
        Nothing,
      _blparObjectIdentifiers = Nothing
    }

-- | The pagination token.
blparNextToken :: Lens' BatchListPolicyAttachmentsResponse (Maybe Text)
blparNextToken = lens _blparNextToken (\s a -> s {_blparNextToken = a})

-- | A list of @ObjectIdentifiers@ to which the policy is attached.
blparObjectIdentifiers :: Lens' BatchListPolicyAttachmentsResponse [Text]
blparObjectIdentifiers = lens _blparObjectIdentifiers (\s a -> s {_blparObjectIdentifiers = a}) . _Default . _Coerce

instance FromJSON BatchListPolicyAttachmentsResponse where
  parseJSON =
    withObject
      "BatchListPolicyAttachmentsResponse"
      ( \x ->
          BatchListPolicyAttachmentsResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "ObjectIdentifiers" .!= mempty)
      )

instance Hashable BatchListPolicyAttachmentsResponse

instance NFData BatchListPolicyAttachmentsResponse
