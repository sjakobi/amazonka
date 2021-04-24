{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectParentPathsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectParentPathsResponse where

import Network.AWS.CloudDirectory.Types.PathToObjectIdentifiers
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListObjectParentPaths' response operation.
--
--
--
-- /See:/ 'batchListObjectParentPathsResponse' smart constructor.
data BatchListObjectParentPathsResponse = BatchListObjectParentPathsResponse'
  { _blopprNextToken ::
      !( Maybe
           Text
       ),
    _blopprPathToObjectIdentifiersList ::
      !( Maybe
           [PathToObjectIdentifiers]
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

-- | Creates a value of 'BatchListObjectParentPathsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blopprNextToken' - The pagination token.
--
-- * 'blopprPathToObjectIdentifiersList' - Returns the path to the @ObjectIdentifiers@ that are associated with the directory.
batchListObjectParentPathsResponse ::
  BatchListObjectParentPathsResponse
batchListObjectParentPathsResponse =
  BatchListObjectParentPathsResponse'
    { _blopprNextToken =
        Nothing,
      _blopprPathToObjectIdentifiersList =
        Nothing
    }

-- | The pagination token.
blopprNextToken :: Lens' BatchListObjectParentPathsResponse (Maybe Text)
blopprNextToken = lens _blopprNextToken (\s a -> s {_blopprNextToken = a})

-- | Returns the path to the @ObjectIdentifiers@ that are associated with the directory.
blopprPathToObjectIdentifiersList :: Lens' BatchListObjectParentPathsResponse [PathToObjectIdentifiers]
blopprPathToObjectIdentifiersList = lens _blopprPathToObjectIdentifiersList (\s a -> s {_blopprPathToObjectIdentifiersList = a}) . _Default . _Coerce

instance FromJSON BatchListObjectParentPathsResponse where
  parseJSON =
    withObject
      "BatchListObjectParentPathsResponse"
      ( \x ->
          BatchListObjectParentPathsResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "PathToObjectIdentifiersList" .!= mempty)
      )

instance Hashable BatchListObjectParentPathsResponse

instance NFData BatchListObjectParentPathsResponse
