{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectChildren
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectChildren where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListObjectChildren' operation.
--
--
--
-- /See:/ 'batchListObjectChildren' smart constructor.
data BatchListObjectChildren = BatchListObjectChildren'
  { _blocNextToken ::
      !(Maybe Text),
    _blocMaxResults ::
      !(Maybe Nat),
    _blocObjectReference ::
      !ObjectReference
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchListObjectChildren' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blocNextToken' - The pagination token.
--
-- * 'blocMaxResults' - Maximum number of items to be retrieved in a single call. This is an approximate number.
--
-- * 'blocObjectReference' - Reference of the object for which child objects are being listed.
batchListObjectChildren ::
  -- | 'blocObjectReference'
  ObjectReference ->
  BatchListObjectChildren
batchListObjectChildren pObjectReference_ =
  BatchListObjectChildren'
    { _blocNextToken = Nothing,
      _blocMaxResults = Nothing,
      _blocObjectReference = pObjectReference_
    }

-- | The pagination token.
blocNextToken :: Lens' BatchListObjectChildren (Maybe Text)
blocNextToken = lens _blocNextToken (\s a -> s {_blocNextToken = a})

-- | Maximum number of items to be retrieved in a single call. This is an approximate number.
blocMaxResults :: Lens' BatchListObjectChildren (Maybe Natural)
blocMaxResults = lens _blocMaxResults (\s a -> s {_blocMaxResults = a}) . mapping _Nat

-- | Reference of the object for which child objects are being listed.
blocObjectReference :: Lens' BatchListObjectChildren ObjectReference
blocObjectReference = lens _blocObjectReference (\s a -> s {_blocObjectReference = a})

instance Hashable BatchListObjectChildren

instance NFData BatchListObjectChildren

instance ToJSON BatchListObjectChildren where
  toJSON BatchListObjectChildren' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _blocNextToken,
            ("MaxResults" .=) <$> _blocMaxResults,
            Just ("ObjectReference" .= _blocObjectReference)
          ]
      )
