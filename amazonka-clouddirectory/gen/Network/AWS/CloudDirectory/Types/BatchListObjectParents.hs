{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectParents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectParents where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'batchListObjectParents' smart constructor.
data BatchListObjectParents = BatchListObjectParents'
  { _blopNextToken ::
      !(Maybe Text),
    _blopMaxResults ::
      !(Maybe Nat),
    _blopObjectReference ::
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

-- | Creates a value of 'BatchListObjectParents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blopNextToken' - Undocumented member.
--
-- * 'blopMaxResults' - Undocumented member.
--
-- * 'blopObjectReference' - Undocumented member.
batchListObjectParents ::
  -- | 'blopObjectReference'
  ObjectReference ->
  BatchListObjectParents
batchListObjectParents pObjectReference_ =
  BatchListObjectParents'
    { _blopNextToken = Nothing,
      _blopMaxResults = Nothing,
      _blopObjectReference = pObjectReference_
    }

-- | Undocumented member.
blopNextToken :: Lens' BatchListObjectParents (Maybe Text)
blopNextToken = lens _blopNextToken (\s a -> s {_blopNextToken = a})

-- | Undocumented member.
blopMaxResults :: Lens' BatchListObjectParents (Maybe Natural)
blopMaxResults = lens _blopMaxResults (\s a -> s {_blopMaxResults = a}) . mapping _Nat

-- | Undocumented member.
blopObjectReference :: Lens' BatchListObjectParents ObjectReference
blopObjectReference = lens _blopObjectReference (\s a -> s {_blopObjectReference = a})

instance Hashable BatchListObjectParents

instance NFData BatchListObjectParents

instance ToJSON BatchListObjectParents where
  toJSON BatchListObjectParents' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _blopNextToken,
            ("MaxResults" .=) <$> _blopMaxResults,
            Just ("ObjectReference" .= _blopObjectReference)
          ]
      )
