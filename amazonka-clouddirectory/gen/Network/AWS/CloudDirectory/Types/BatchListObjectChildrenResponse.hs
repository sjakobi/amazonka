{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectChildrenResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectChildrenResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListObjectChildren' response operation.
--
--
--
-- /See:/ 'batchListObjectChildrenResponse' smart constructor.
data BatchListObjectChildrenResponse = BatchListObjectChildrenResponse'
  { _blocrNextToken ::
      !( Maybe
           Text
       ),
    _blocrChildren ::
      !( Maybe
           ( Map
               Text
               Text
           )
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

-- | Creates a value of 'BatchListObjectChildrenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blocrNextToken' - The pagination token.
--
-- * 'blocrChildren' - The children structure, which is a map with the key as the @LinkName@ and @ObjectIdentifier@ as the value.
batchListObjectChildrenResponse ::
  BatchListObjectChildrenResponse
batchListObjectChildrenResponse =
  BatchListObjectChildrenResponse'
    { _blocrNextToken =
        Nothing,
      _blocrChildren = Nothing
    }

-- | The pagination token.
blocrNextToken :: Lens' BatchListObjectChildrenResponse (Maybe Text)
blocrNextToken = lens _blocrNextToken (\s a -> s {_blocrNextToken = a})

-- | The children structure, which is a map with the key as the @LinkName@ and @ObjectIdentifier@ as the value.
blocrChildren :: Lens' BatchListObjectChildrenResponse (HashMap Text Text)
blocrChildren = lens _blocrChildren (\s a -> s {_blocrChildren = a}) . _Default . _Map

instance FromJSON BatchListObjectChildrenResponse where
  parseJSON =
    withObject
      "BatchListObjectChildrenResponse"
      ( \x ->
          BatchListObjectChildrenResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "Children" .!= mempty)
      )

instance Hashable BatchListObjectChildrenResponse

instance NFData BatchListObjectChildrenResponse
