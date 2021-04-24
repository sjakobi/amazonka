{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListAttachedIndices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListAttachedIndices where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Lists indices attached to an object inside a 'BatchRead' operation. For more information, see 'ListAttachedIndices' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchListAttachedIndices' smart constructor.
data BatchListAttachedIndices = BatchListAttachedIndices'
  { _blaiNextToken ::
      !(Maybe Text),
    _blaiMaxResults ::
      !(Maybe Nat),
    _blaiTargetReference ::
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

-- | Creates a value of 'BatchListAttachedIndices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blaiNextToken' - The pagination token.
--
-- * 'blaiMaxResults' - The maximum number of results to retrieve.
--
-- * 'blaiTargetReference' - A reference to the object that has indices attached.
batchListAttachedIndices ::
  -- | 'blaiTargetReference'
  ObjectReference ->
  BatchListAttachedIndices
batchListAttachedIndices pTargetReference_ =
  BatchListAttachedIndices'
    { _blaiNextToken = Nothing,
      _blaiMaxResults = Nothing,
      _blaiTargetReference = pTargetReference_
    }

-- | The pagination token.
blaiNextToken :: Lens' BatchListAttachedIndices (Maybe Text)
blaiNextToken = lens _blaiNextToken (\s a -> s {_blaiNextToken = a})

-- | The maximum number of results to retrieve.
blaiMaxResults :: Lens' BatchListAttachedIndices (Maybe Natural)
blaiMaxResults = lens _blaiMaxResults (\s a -> s {_blaiMaxResults = a}) . mapping _Nat

-- | A reference to the object that has indices attached.
blaiTargetReference :: Lens' BatchListAttachedIndices ObjectReference
blaiTargetReference = lens _blaiTargetReference (\s a -> s {_blaiTargetReference = a})

instance Hashable BatchListAttachedIndices

instance NFData BatchListAttachedIndices

instance ToJSON BatchListAttachedIndices where
  toJSON BatchListAttachedIndices' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _blaiNextToken,
            ("MaxResults" .=) <$> _blaiMaxResults,
            Just ("TargetReference" .= _blaiTargetReference)
          ]
      )
