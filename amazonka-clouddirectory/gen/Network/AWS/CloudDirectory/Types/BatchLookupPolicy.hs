{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchLookupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchLookupPolicy where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Lists all policies from the root of the Directory to the object specified inside a 'BatchRead' operation. For more information, see 'LookupPolicy' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchLookupPolicy' smart constructor.
data BatchLookupPolicy = BatchLookupPolicy'
  { _blpNextToken ::
      !(Maybe Text),
    _blpMaxResults :: !(Maybe Nat),
    _blpObjectReference ::
      !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchLookupPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blpNextToken' - The pagination token.
--
-- * 'blpMaxResults' - The maximum number of results to retrieve.
--
-- * 'blpObjectReference' - Reference that identifies the object whose policies will be looked up.
batchLookupPolicy ::
  -- | 'blpObjectReference'
  ObjectReference ->
  BatchLookupPolicy
batchLookupPolicy pObjectReference_ =
  BatchLookupPolicy'
    { _blpNextToken = Nothing,
      _blpMaxResults = Nothing,
      _blpObjectReference = pObjectReference_
    }

-- | The pagination token.
blpNextToken :: Lens' BatchLookupPolicy (Maybe Text)
blpNextToken = lens _blpNextToken (\s a -> s {_blpNextToken = a})

-- | The maximum number of results to retrieve.
blpMaxResults :: Lens' BatchLookupPolicy (Maybe Natural)
blpMaxResults = lens _blpMaxResults (\s a -> s {_blpMaxResults = a}) . mapping _Nat

-- | Reference that identifies the object whose policies will be looked up.
blpObjectReference :: Lens' BatchLookupPolicy ObjectReference
blpObjectReference = lens _blpObjectReference (\s a -> s {_blpObjectReference = a})

instance Hashable BatchLookupPolicy

instance NFData BatchLookupPolicy

instance ToJSON BatchLookupPolicy where
  toJSON BatchLookupPolicy' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _blpNextToken,
            ("MaxResults" .=) <$> _blpMaxResults,
            Just ("ObjectReference" .= _blpObjectReference)
          ]
      )
