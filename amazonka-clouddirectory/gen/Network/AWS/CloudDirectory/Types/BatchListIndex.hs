{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListIndex where

import Network.AWS.CloudDirectory.Types.ObjectAttributeRange
import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Lists objects attached to the specified index inside a 'BatchRead' operation. For more information, see 'ListIndex' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchListIndex' smart constructor.
data BatchListIndex = BatchListIndex'
  { _bliNextToken ::
      !(Maybe Text),
    _bliMaxResults :: !(Maybe Nat),
    _bliRangesOnIndexedValues ::
      !(Maybe [ObjectAttributeRange]),
    _bliIndexReference :: !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchListIndex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bliNextToken' - The pagination token.
--
-- * 'bliMaxResults' - The maximum number of results to retrieve.
--
-- * 'bliRangesOnIndexedValues' - Specifies the ranges of indexed values that you want to query.
--
-- * 'bliIndexReference' - The reference to the index to list.
batchListIndex ::
  -- | 'bliIndexReference'
  ObjectReference ->
  BatchListIndex
batchListIndex pIndexReference_ =
  BatchListIndex'
    { _bliNextToken = Nothing,
      _bliMaxResults = Nothing,
      _bliRangesOnIndexedValues = Nothing,
      _bliIndexReference = pIndexReference_
    }

-- | The pagination token.
bliNextToken :: Lens' BatchListIndex (Maybe Text)
bliNextToken = lens _bliNextToken (\s a -> s {_bliNextToken = a})

-- | The maximum number of results to retrieve.
bliMaxResults :: Lens' BatchListIndex (Maybe Natural)
bliMaxResults = lens _bliMaxResults (\s a -> s {_bliMaxResults = a}) . mapping _Nat

-- | Specifies the ranges of indexed values that you want to query.
bliRangesOnIndexedValues :: Lens' BatchListIndex [ObjectAttributeRange]
bliRangesOnIndexedValues = lens _bliRangesOnIndexedValues (\s a -> s {_bliRangesOnIndexedValues = a}) . _Default . _Coerce

-- | The reference to the index to list.
bliIndexReference :: Lens' BatchListIndex ObjectReference
bliIndexReference = lens _bliIndexReference (\s a -> s {_bliIndexReference = a})

instance Hashable BatchListIndex

instance NFData BatchListIndex

instance ToJSON BatchListIndex where
  toJSON BatchListIndex' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _bliNextToken,
            ("MaxResults" .=) <$> _bliMaxResults,
            ("RangesOnIndexedValues" .=)
              <$> _bliRangesOnIndexedValues,
            Just ("IndexReference" .= _bliIndexReference)
          ]
      )
