{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects inside a 'BatchRead' operation. For more information, see 'ListObjectParentPaths' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchListObjectParentPaths' smart constructor.
data BatchListObjectParentPaths = BatchListObjectParentPaths'
  { _bloppNextToken ::
      !(Maybe Text),
    _bloppMaxResults ::
      !(Maybe Nat),
    _bloppObjectReference ::
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

-- | Creates a value of 'BatchListObjectParentPaths' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bloppNextToken' - The pagination token.
--
-- * 'bloppMaxResults' - The maximum number of results to retrieve.
--
-- * 'bloppObjectReference' - The reference that identifies the object whose attributes will be listed.
batchListObjectParentPaths ::
  -- | 'bloppObjectReference'
  ObjectReference ->
  BatchListObjectParentPaths
batchListObjectParentPaths pObjectReference_ =
  BatchListObjectParentPaths'
    { _bloppNextToken =
        Nothing,
      _bloppMaxResults = Nothing,
      _bloppObjectReference = pObjectReference_
    }

-- | The pagination token.
bloppNextToken :: Lens' BatchListObjectParentPaths (Maybe Text)
bloppNextToken = lens _bloppNextToken (\s a -> s {_bloppNextToken = a})

-- | The maximum number of results to retrieve.
bloppMaxResults :: Lens' BatchListObjectParentPaths (Maybe Natural)
bloppMaxResults = lens _bloppMaxResults (\s a -> s {_bloppMaxResults = a}) . mapping _Nat

-- | The reference that identifies the object whose attributes will be listed.
bloppObjectReference :: Lens' BatchListObjectParentPaths ObjectReference
bloppObjectReference = lens _bloppObjectReference (\s a -> s {_bloppObjectReference = a})

instance Hashable BatchListObjectParentPaths

instance NFData BatchListObjectParentPaths

instance ToJSON BatchListObjectParentPaths where
  toJSON BatchListObjectParentPaths' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _bloppNextToken,
            ("MaxResults" .=) <$> _bloppMaxResults,
            Just ("ObjectReference" .= _bloppObjectReference)
          ]
      )
