{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectPolicies where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns policies attached to an object in pagination fashion inside a 'BatchRead' operation. For more information, see 'ListObjectPolicies' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchListObjectPolicies' smart constructor.
data BatchListObjectPolicies = BatchListObjectPolicies'
  { _bNextToken ::
      !(Maybe Text),
    _bMaxResults ::
      !(Maybe Nat),
    _bObjectReference ::
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

-- | Creates a value of 'BatchListObjectPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bNextToken' - The pagination token.
--
-- * 'bMaxResults' - The maximum number of results to retrieve.
--
-- * 'bObjectReference' - The reference that identifies the object whose attributes will be listed.
batchListObjectPolicies ::
  -- | 'bObjectReference'
  ObjectReference ->
  BatchListObjectPolicies
batchListObjectPolicies pObjectReference_ =
  BatchListObjectPolicies'
    { _bNextToken = Nothing,
      _bMaxResults = Nothing,
      _bObjectReference = pObjectReference_
    }

-- | The pagination token.
bNextToken :: Lens' BatchListObjectPolicies (Maybe Text)
bNextToken = lens _bNextToken (\s a -> s {_bNextToken = a})

-- | The maximum number of results to retrieve.
bMaxResults :: Lens' BatchListObjectPolicies (Maybe Natural)
bMaxResults = lens _bMaxResults (\s a -> s {_bMaxResults = a}) . mapping _Nat

-- | The reference that identifies the object whose attributes will be listed.
bObjectReference :: Lens' BatchListObjectPolicies ObjectReference
bObjectReference = lens _bObjectReference (\s a -> s {_bObjectReference = a})

instance Hashable BatchListObjectPolicies

instance NFData BatchListObjectPolicies

instance ToJSON BatchListObjectPolicies where
  toJSON BatchListObjectPolicies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _bNextToken,
            ("MaxResults" .=) <$> _bMaxResults,
            Just ("ObjectReference" .= _bObjectReference)
          ]
      )
