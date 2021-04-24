{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectParentsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectParentsResponse where

import Network.AWS.CloudDirectory.Types.ObjectIdentifierAndLinkNameTuple
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'batchListObjectParentsResponse' smart constructor.
data BatchListObjectParentsResponse = BatchListObjectParentsResponse'
  { _bloprParentLinks ::
      !( Maybe
           [ObjectIdentifierAndLinkNameTuple]
       ),
    _bloprNextToken ::
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

-- | Creates a value of 'BatchListObjectParentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bloprParentLinks' - Undocumented member.
--
-- * 'bloprNextToken' - Undocumented member.
batchListObjectParentsResponse ::
  BatchListObjectParentsResponse
batchListObjectParentsResponse =
  BatchListObjectParentsResponse'
    { _bloprParentLinks =
        Nothing,
      _bloprNextToken = Nothing
    }

-- | Undocumented member.
bloprParentLinks :: Lens' BatchListObjectParentsResponse [ObjectIdentifierAndLinkNameTuple]
bloprParentLinks = lens _bloprParentLinks (\s a -> s {_bloprParentLinks = a}) . _Default . _Coerce

-- | Undocumented member.
bloprNextToken :: Lens' BatchListObjectParentsResponse (Maybe Text)
bloprNextToken = lens _bloprNextToken (\s a -> s {_bloprNextToken = a})

instance FromJSON BatchListObjectParentsResponse where
  parseJSON =
    withObject
      "BatchListObjectParentsResponse"
      ( \x ->
          BatchListObjectParentsResponse'
            <$> (x .:? "ParentLinks" .!= mempty)
            <*> (x .:? "NextToken")
      )

instance Hashable BatchListObjectParentsResponse

instance NFData BatchListObjectParentsResponse
